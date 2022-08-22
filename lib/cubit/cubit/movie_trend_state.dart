part of 'movie_trend_cubit.dart';

@immutable
abstract class MovieTrendState {}

class MovieTrendInitial extends MovieTrendState {}

class MovieTrendLoaded extends MovieTrendState {
  final List<MovieTrend> movieTrend;

  MovieTrendLoaded(this.movieTrend);
}

class MovieTrendLoading extends MovieTrendState {
  final List<MovieTrend> oldMovieTrend;
  final bool isFirstFetch;

  MovieTrendLoading(this.oldMovieTrend, {this.isFirstFetch=false});
}
