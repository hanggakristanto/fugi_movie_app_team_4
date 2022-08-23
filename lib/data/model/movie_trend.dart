import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie_trend_result.dart';

part 'movie_trend.freezed.dart';
part 'movie_trend.g.dart';

@freezed
abstract class MovieTrend with _$MovieTrend {
    const factory MovieTrend({
        required int page,
        required List<MovieTrendResult> results,
        required int totalPages,
        required int totalResults,
    }) = _MovieTrend;

    factory MovieTrend.fromJson(Map<String, dynamic> json) => _$MovieTrendFromJson(json);
}




