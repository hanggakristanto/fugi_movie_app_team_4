import 'package:freezed_annotation/freezed_annotation.dart';

import 'multi_search_known_for.dart';

part 'multi_search_result.freezed.dart';
part 'multi_search_result.g.dart';

@freezed
abstract class MultiSearchResult with _$MultiSearchResult {
    const factory MultiSearchResult({
        required bool adult,
        String? backdropPath,
        List<int>? genreIds,
        required int id,
        required String mediaType,
        required String originalLanguage,
        String? originalTitle,
        required String overview,
        required double popularity,
        String? posterPath,
        required DateTime releaseDate,
        String? title,
        required bool video,
        required double voteAverage,
        required int voteCount,
        DateTime? firstAirDate,
        required String name,
        List<String>? originCountry,
        String? originalName,
        required int gender,
        List<MultiSearchKnownFor>? knownFor,
        String? knownForDepartment,
        String? profilePath,
    }) = _MultiSearchResult;

    factory MultiSearchResult.fromJson(Map<String, dynamic> json) => _$MultiSearchResultFromJson(json);
}
