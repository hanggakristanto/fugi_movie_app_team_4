import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_latest.freezed.dart';
part 'movie_latest.g.dart';

@freezed
abstract class MovieLatest with _$MovieLatest {
  const factory MovieLatest({
    required bool adult,
    String? backdrop_path,
    // dynamic belongs_to_collection,
    required int budget,
    // List<dynamic>? genres,
    String? homepage,
    required int id,
    dynamic imdbId,
    String? original_language,
    String? original_title,
    String? overview,
    required int popularity,
    String? poster_path,
    // List<dynamic> production_companies,
    // List<dynamic> production_countries,
    String? release_date,
    required int revenue,
    required int runtime,
    // List<dynamic> spoken_languages,
    String? status,
    String? tagline,
    String? title,
    required bool video,
    required int vote_average,
    required int vote_count,
  }) = _MovieLatest;

  factory MovieLatest.fromJson(Map<String, dynamic> json) =>
      _$MovieLatestFromJson(json);
}
