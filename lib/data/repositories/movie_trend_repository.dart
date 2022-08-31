import '../model/movie_trend_result.dart';
import '../services/movie_trend_services.dart';

class MovieTrendRepository {

  final MovieTrendServices service;

  MovieTrendRepository(this.service);

  Future<List<MovieTrendResult>> fetchMovieTrend(String mediaType,
      String timeWindow, int page) async {
    final movieTrends = await service.fetchAllTrend(mediaType, timeWindow, page);
    return movieTrends.map(
        (e) => MovieTrendResult.fromJson(e)
      ).toList();
  }
}