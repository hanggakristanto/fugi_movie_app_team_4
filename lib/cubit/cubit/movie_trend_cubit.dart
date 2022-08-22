import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/model/movie_trend.dart';
import '../../data/repositories/movie_trend_repositories.dart';

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

    var oldMovieTrend = <MovieTrend> [];

    if(currentState is MovieTrendLoaded){
      oldMovieTrend = currentState.movieTrend;
    }

    emit(MovieTrendLoading(oldMovieTrend, isFirstFetch: page == 1));

    repository.fetchMovieTrend(mediaType, timeWindow, page)
      .then((newMovieTrend) {
        page++;

        final posts = (state as MovieTrendLoading).oldMovieTrend;
        posts.addAll(newMovieTrend);    

        emit(MovieTrendLoaded(newMovieTrend));
      });
  }
}
