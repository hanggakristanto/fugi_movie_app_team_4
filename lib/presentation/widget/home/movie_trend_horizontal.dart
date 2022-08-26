import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constant/global_colors.dart';
import '../../../constant/global_variable.dart';
import '../../../cubit/cubit/movie_trend_cubit.dart';
import '../../../data/model/movie_trend_result.dart';
import '../common/loading_indicator.dart';
import '../movie_trend/movie_trend_tile.dart';

class MovieTrendHorizontal extends StatelessWidget {
  MovieTrendHorizontal({Key? key}) : super(key: key);

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

    // return  Column(
    //     children: [
    //       Flexible(
    //         flex: 1,
    //         // child: _movieTrendGridList(),
    //         child: Text('Nyobain'),
    //       ),
    //     ],
    //   );
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
          log('Screen Trend Loading');
          // print(movieTrend);
          isLoading = true;
        } else if (state is MovieTrendLoaded) {
          log('Screen Trend Loaded');
          movieTrend = state.movieTrend;
        }

        return ListView.builder(
          scrollDirection: Axis.horizontal,
          // shrinkWrap: true,
          controller: scrollController,
          itemBuilder: (context, index) {
            if (index < movieTrend.length)
            return movieTrendTile(movieTrend[index], context);
            // return Image.network(
            //     '${GlobalVariable.urlImage}${movieTrend[index].backdrop_path}',
            //   );
            else {
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
