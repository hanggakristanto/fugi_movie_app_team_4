import 'package:json_annotation/json_annotation.dart';

import 'movie_trend_result.dart';

part 'movie_trend.g.dart';

@JsonSerializable()
class MovieTrend {
  MovieTrend({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  int? page;
  List<MovieTrendResult>? results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  factory MovieTrend.fromJson(Map<String, dynamic> json) =>
      _$MovieTrendFromJson(json);

  Map<String, dynamic> toJson() => _$MovieTrendToJson(this);

  MovieTrend copyWith({
    int? page,
    List<MovieTrendResult>? results,
    int? totalPages,
    int? totalResults,
  }) =>
      MovieTrend(
        page: page ?? this.page,
        results: results ?? this.results,
        totalPages: totalPages ?? this.totalPages,
        totalResults: totalResults ?? this.totalResults,
      );
}
