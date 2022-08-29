import 'package:freezed_annotation/freezed_annotation.dart';

part 'multi_search_known_for.freezed.dart';
part 'multi_search_known_for.g.dart';

@freezed
abstract class MultiSearchKnownFor with _$MultiSearchKnownFor {
    const factory MultiSearchKnownFor({
        bool? adult,
        String? backdrop_path,
        List<int>? genre_ids,
        int? id,
        String? media_type,
        String? original_language,
        String? original_title,
        String? overview,
        String? poster_path,
        DateTime? release_date,
        String? title,
        bool? video,
        double? vote_average,
        int? vote_count,
    }) = _MultiSearchKnownFor;

    factory MultiSearchKnownFor.fromJson(Map<String, dynamic> json) => _$MultiSearchKnownForFromJson(json);
}