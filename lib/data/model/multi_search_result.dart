import 'package:freezed_annotation/freezed_annotation.dart';

import 'multi_search_known_for.dart';

part 'multi_search_result.freezed.dart';
part 'multi_search_result.g.dart';

@freezed
abstract class MultiSearchResult with _$MultiSearchResult {
    const factory MultiSearchResult({
        bool? adult,
        String? backdrop_path,
        List<int>? genre_ids,
        required int id,
        String? media_type,
        String? original_language,
        String? original_title,
        String? overview,
        double? popularity,
        String? poster_path,
        String? release_date,
        String? title,
        bool? video,
        double? vote_average,
        int? vote_count,
        String? first_air_date,
        String? name,
        List<String>? origin_country,
        String? original_name,
        int? gender,
        List<MultiSearchKnownFor>? known_for,
        String? known_for_department,
        String? profile_path,
    }) = _MultiSearchResult;

    factory MultiSearchResult.fromJson(Map<String, dynamic> json) => _$MultiSearchResultFromJson(json);
}
