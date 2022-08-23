import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/cubit/movie_trend_cubit.dart';
import '../../data/model/movie_trend_result.dart';
import '../widget/common/loading_indicator.dart';
import '../widget/movie_trend/movie_trend_tile.dart';

class MovieTrendScreen extends StatelessWidget {
  // MovieTrendScreen({Key? key}) : super(key: key);

  final scrollController = ScrollController();

  void setupScrollController(context) {
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        if (scrollController.position.pixels != 0) {
          BlocProvider.of<MovieTrendCubit>(context).loadMovieTrend();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    setupScrollController(context);
    BlocProvider.of<MovieTrendCubit>(context).loadMovieTrend();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie Trend"),
      ),
      body: _movieTrendList(),
    );
  }

  Widget _movieTrendList() {
    return BlocBuilder<MovieTrendCubit, MovieTrendState>(
      builder: ((context, state) {
        if (state is MovieTrendLoading && state.isFirstFetch) {
          return loadingIndicator();
        }

        List<MovieTrendResult> movieTrend = [];
        bool isLoading = false;

        if (state is MovieTrendLoading) {
          movieTrend = state.oldMovieTrend;
          log('Screen Trend Loading');
          print(movieTrend);
          isLoading = true;
        } else if (state is MovieTrendLoaded) {
          log('Screen Trend Loaded');
          
          movieTrend = state.movieTrend;
          print(movieTrend);
        }

        return ListView.separated(
          controller: scrollController,
          itemBuilder: (context, index) {
            if (index < movieTrend.length) {
              return movieTrendTile(movieTrend[index], context);
            } else {
              Timer(const Duration(milliseconds: 30), () {
                scrollController
                    .jumpTo(scrollController.position.maxScrollExtent);
              });

              return loadingIndicator();
            }
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.grey[400],
            );
          },
          itemCount: movieTrend.length + (isLoading ? 1 : 0),
        );
      }),
    );
  }
}
