import 'package:freezed_annotation/freezed_annotation.dart';


part 'movie_trend_result.freezed.dart';
part 'movie_trend_result.g.dart';

@freezed
abstract class MovieTrendResult with _$MovieTrendResult {
    const factory MovieTrendResult({
        required bool adult,
        String? backdrop_path,
        required int id,
        String? title,
        String? original_language,
        String? original_title,
        String? overview,
        String? poster_path,
        String? media_type,
        List<int>? genre_ids,
        double? popularity,
        DateTime? release_date,
        bool? video,
        double? vote_average,
        int? vote_count,
        String? name,
        String? original_name,
        DateTime? first_air_date,
        List<String>? origin_country,
    }) = _MovieTrendResult;

    factory MovieTrendResult.fromJson(Map<String, dynamic> json) => _$MovieTrendResultFromJson(json);
}