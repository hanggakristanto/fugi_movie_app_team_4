import 'dart:developer';

import '../model/movie_latest.dart';
import '../services/movie_latest_services.dart';

class MovieLatestRepository {
  final MovieLatestServices service;

  MovieLatestRepository(this.service);

  // Future<Map<String, dynamic>> fetchMovieTrend(
  Future<MovieLatest> fetchMovieTrend(
    String language,
    // Future<Map<String, dynamic>> fetchMovieTrend(String mediaType,
  ) async {
    final movieLatest = await service.fetchLatest(language);
    // log(movieTrends.toString());
    // log("end repo");
    return MovieLatest.fromJson(movieLatest);
  }
}
