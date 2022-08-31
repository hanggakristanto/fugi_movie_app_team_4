import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/model/movie_trend_result.dart';
import '../../data/repositories/movie_trend_repository.dart';

part 'movie_trend_state.dart';

class MovieTrendCubit extends Cubit<MovieTrendState> {
  MovieTrendCubit(this.repository) : super(MovieTrendInitial());

  int page = 1;
  String mediaType = 'all';
  String timeWindow = 'week';

  final MovieTrendRepository repository;

  void loadMovieTrend() {
    if (state is MovieTrendLoading) return;

    final currentState = state;

    var oldMovieTrend = <MovieTrendResult>[];

    if (currentState is MovieTrendLoaded) {
      oldMovieTrend = currentState.movieTrend;
    }

    emit(MovieTrendLoading(oldMovieTrend, isFirstFetch: page == 1));

    repository
        .fetchMovieTrend(mediaType, timeWindow, page)
        .then((newMovieTrend) {
      page++;
      final movieTrend = (state as MovieTrendLoading).oldMovieTrend;
      movieTrend.addAll(newMovieTrend);
      emit(MovieTrendLoaded(movieTrend));
    });
  }
}
