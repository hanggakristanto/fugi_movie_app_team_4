
import 'dart:developer';

import 'package:fugi_movie_app_team_4/data/model/movie_trend.dart';

import '../model/movie_trend_result.dart';
import '../services/movie_trend_services.dart';

class MovieTrendRepository {

  final MovieTrendServices service;

  MovieTrendRepository(this.service);

  Future<List<MovieTrendResult>> fetchMovieTrend(String mediaType,
  // Future<Map<String, dynamic>> fetchMovieTrend(String mediaType,
      String timeWindow, int page) async {
        log("repositories");
        log("page = $page");
    final movieTrends = await service.fetchAllTrend(mediaType, timeWindow, page);
    // log(movieTrends.toString());
    // log("end repo");
    // movieTrends.
    return movieTrends.map(
        (e) => MovieTrendResult.fromJson(e)
      ).toList();
    // List<MovieTrend> a = [];
    // return a;
    // return movieTrends;
  }
}