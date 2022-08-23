import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie_trend_know_for.dart';

part 'movie_trend_result.freezed.dart';
part 'movie_trend_result.g.dart';

@freezed
abstract class MovieTrendResult with _$MovieTrendResult {
    const factory MovieTrendResult({
        required bool adult,
        required int id,
        required String name,
        required String originalName,
        required String mediaType,
        required double popularity,
        required int gender,
        required String knownForDepartment,
        required String profilePath,
        required List<MovieTrendKnownFor> knownFor,
    }) = _MovieTrendResult;

    factory MovieTrendResult.fromJson(Map<String, dynamic> json) => _$MovieTrendResultFromJson(json);
}