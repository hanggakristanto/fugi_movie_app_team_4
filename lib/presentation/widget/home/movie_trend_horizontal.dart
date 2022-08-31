import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubit/cubit/movie_trend_cubit.dart';
import '../../../data/model/movie_trend_result.dart';
import '../common/loading_indicator.dart';
import '../movie_trend/movie_trend_tile.dart';

class MovieTrendHorizontal extends StatelessWidget {
  final double height, width;
  MovieTrendHorizontal({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

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
    return _movieHorizontalList();
  }

  Widget _movieHorizontalList() {
    return BlocBuilder<MovieTrendCubit, MovieTrendState>(
      builder: ((context, state) {
        if (state is MovieTrendLoading && state.isFirstFetch) {
          return loadingIndicator();
        }

        List<MovieTrendResult> movieTrend = [];
        bool isLoading = false;

        if (state is MovieTrendLoading) {
          movieTrend = state.oldMovieTrend;
          isLoading = true;
        } else if (state is MovieTrendLoaded) {
          movieTrend = state.movieTrend;
        }

        return ListView.builder(
          scrollDirection: Axis.horizontal,
          controller: scrollController,
          itemBuilder: (context, index) {
            if (index < movieTrend.length) {
              return movieTrendTile(
                context,
                movieTrend[index],
                height,
                width,
              );
            } else {
              Timer(const Duration(milliseconds: 30), () {
                scrollController
                    .jumpTo(scrollController.position.maxScrollExtent);
              });

              return loadingIndicator();
            }
          },
          itemCount: movieTrend.length + (isLoading ? 1 : 0),
        );
      }),
    );
  }
}
