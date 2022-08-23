import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fugi_movie_app_team_4/data/model/movie_trend_result.dart';
import 'package:meta/meta.dart';

import '../../data/repositories/movie_trend_repository.dart';

part 'movie_trend_state.dart';

class MovieTrendCubit extends Cubit<MovieTrendState> {
  MovieTrendCubit(this.repository) : super(MovieTrendInitial());

  int page = 1;
  String mediaType = 'all';
  String timeWindow = 'day';

  final MovieTrendRepository repository;

  void loadMovieTrend(){
    if (state is MovieTrendLoading) return;

    final currentState = state;

    var oldMovieTrend = <MovieTrendResult> [];

    if(currentState is MovieTrendLoaded){
      log("panjang current stat = ${currentState.movieTrend.length}");
      oldMovieTrend = currentState.movieTrend;
      log("oldMovieTrend length = ${oldMovieTrend.length}");
    }

    emit(MovieTrendLoading(oldMovieTrend, isFirstFetch: page == 1));

    repository.fetchMovieTrend(mediaType, timeWindow, page)
      .then((newMovieTrend) {
        page++;
        // log("cubit");
        log("page = $page");
        // log("newMovieTrend length = ${newMovieTrend.length}");
        final movieTrend = (state as MovieTrendLoading).oldMovieTrend;
        // log("movieTrend befoore length = ${movieTrend.length}");
        movieTrend.addAll(newMovieTrend);
        // log("movieTrend length = ${movieTrend.length}");
        emit(MovieTrendLoaded(movieTrend));
      });
  }
}
