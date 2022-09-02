import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constant/global_colors.dart';
import '../../cubit/cubit/movie_trend_cubit.dart';
import '../../data/model/movie_trend_result.dart';
import '../widget/common/loading_indicator.dart';
import '../widget/movie_trend/movie_trend_tile.dart';
import 'detail_screen.dart';

class MovieTrendScreen extends StatelessWidget {
  static const String routeName = '/movie_trend_screen';

  MovieTrendScreen({Key? key}) : super(key: key);

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

  void navigateToDetailScreen(BuildContext context) {
    Navigator.pushNamed(
      context,
      DetailScreen.routeName,
    );
  }

  @override
  Widget build(BuildContext context) {
    setupScrollController(context);
    BlocProvider.of<MovieTrendCubit>(context).loadMovieTrend();

    return Scaffold(
      backgroundColor: GlobalColors.gelap,
      appBar: AppBar(
        backgroundColor: GlobalColors.gelap,
        title: const Text("Movie Trend"),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: _movieTrendGridList(),
          ),
        ],
      ),
    );
  }

  Widget _movieTrendGridList() {
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
        return GridView.builder(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.only(
            left: 5,
          ),
          itemCount: movieTrend.length + (isLoading ? 1 : 0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.675,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            if (index < movieTrend.length) {
              return movieTrendTile(
                context: context,
                data: movieTrend[index],
                height: MediaQuery.of(context).size.height / 3.9,
                width: MediaQuery.of(context).size.width / 4,
                onTap:() => navigateToDetailScreen(context),
              );
            } else {
              Timer(const Duration(milliseconds: 30), () {
                scrollController
                    .jumpTo(scrollController.position.maxScrollExtent);
              });
              return loadingIndicator();
            }
          },
        );
      }),
    );
  }
}
