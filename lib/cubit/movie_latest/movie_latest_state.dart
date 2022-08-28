part of 'movie_latest_cubit.dart';

@immutable
abstract class MovieLatestState {}

class MovieLatestInitial extends MovieLatestState {}

class MovieLatestLoaded extends MovieLatestState {
  // final List<MovieLatest> movieLatest;
  final MovieLatest movieLatest;
  MovieLatestLoaded(this.movieLatest);
}

class MovieLatestLoading extends MovieLatestState {
  // final MovieLatest oldMovieLatest;
  // final bool isFirstFetch;

  // MovieLatestLoading(this.oldMovieLatest);
  MovieLatestLoading();
}
