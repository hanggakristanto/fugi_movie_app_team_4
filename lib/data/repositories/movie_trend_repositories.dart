
import 'package:fugi_movie_app_team_4/data/model/movie_trend.dart';

import '../services/movie_trend_services.dart';

class MovieTrendRepository {

  final MovieTrendServices service;

  MovieTrendRepository(this.service);

  Future<List<MovieTrend>> fetchMovieTrend(String mediaType,
      String timeWindow, int page) async {
    final movieTrends = await service.fetchAllTrend(mediaType, timeWindow, page);
    return movieTrends.map((e) => MovieTrend.fromJson(e)).toList();
  }
}