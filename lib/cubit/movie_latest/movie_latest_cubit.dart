import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/model/movie_latest.dart';
import '../../data/repositories/movie_latest_repository.dart';

part 'movie_latest_state.dart';

class MovieLatestCubit extends Cubit<MovieLatestState> {
  MovieLatestCubit(this.repository) : super(MovieLatestInitial());

  String language = 'en-US';

  final MovieLatestRepository repository;

  void loadLatest() {
    if (state is MovieLatestLoading) return;
    final currentState = state;

    var oldMovieLatest = MovieLatest;

    if (currentState is MovieLatestLoaded) {
      // oldMovieLatest = currentState.movieLatest;
    }

    emit(MovieLatestLoading());

    repository.fetchMovieTrend(language).then((value) {
      // log("newMovieTrend length = ${newMovieTrend.length}");
      // MovieLatest movieLatest = (state as MovieLatestLoading).oldMovieLatest;
      // log("movieTrend befoore length = ${movieTrend.length}");
      // movieLatest.add(value);
      // log("movieTrend length = ${movieTrend.length}");
      // movieLatest = value;

      emit(MovieLatestLoaded(value));
    });
  }
}
