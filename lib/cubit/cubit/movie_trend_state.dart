part of 'movie_trend_cubit.dart';

@immutable
abstract class MovieTrendState {}

class MovieTrendInitial extends MovieTrendState {}

class MovieTrendLoaded extends MovieTrendState {
  final List<MovieTrendResult> movieTrend;

  MovieTrendLoaded(this.movieTrend);
}

class MovieTrendLoading extends MovieTrendState {
  final List<MovieTrendResult> oldMovieTrend;
  final bool isFirstFetch;

  MovieTrendLoading(this.oldMovieTrend, {this.isFirstFetch=false});
}
