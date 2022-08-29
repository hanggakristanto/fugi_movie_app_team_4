import 'package:freezed_annotation/freezed_annotation.dart';

part 'multi_search_known_for.freezed.dart';
part 'multi_search_known_for.g.dart';

@freezed
abstract class MultiSearchKnownFor with _$MultiSearchKnownFor {
    const factory MultiSearchKnownFor({
        bool? adult,
        String? backdropPath,
        List<int>? genreIds,
        int? id,
        String? mediaType,
        String? originalLanguage,
        String? originalTitle,
        String? overview,
        String? posterPath,
        DateTime? releaseDate,
        String? title,
        bool? video,
        double? voteAverage,
        int? voteCount,
    }) = _MultiSearchKnownFor;

    factory MultiSearchKnownFor.fromJson(Map<String, dynamic> json) => _$MultiSearchKnownForFromJson(json);
}