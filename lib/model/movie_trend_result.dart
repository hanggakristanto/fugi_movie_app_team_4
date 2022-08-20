import 'package:json_annotation/json_annotation.dart';

import 'movie_trend_know_for.dart';

part 'movie_trend_result.g.dart';

@JsonSerializable()
class MovieTrendResult {
  MovieTrendResult({
    this.adult,
    this.id,
    this.name,
    this.originalName,
    this.mediaType,
    this.popularity,
    this.gender,
    this.knownForDepartment,
    this.profilePath,
    this.knownFor,
  });

  bool? adult;
  int? id;
  String? name;
  @JsonKey(name: 'original_name')
  String? originalName;
  @JsonKey(name: 'media_type')
  String? mediaType;
  double? popularity;
  int? gender;
  @JsonKey(name: 'known_for_department')
  String? knownForDepartment;
  @JsonKey(name: 'profile_path')
  String? profilePath;
  @JsonKey(name: 'known_for')
  List<MovieTrendKnownFor>? knownFor;

  factory MovieTrendResult.fromJson(Map<String, dynamic> json) =>
      _$MovieTrendResultFromJson(json);

  Map<String, dynamic> toJson() => _$MovieTrendResultToJson(this);

  MovieTrendResult copyWith({
    bool? adult,
    int? id,
    String? name,
    String? originalName,
    String? mediaType,
    double? popularity,
    int? gender,
    String? knownForDepartment,
    String? profilePath,
    List<MovieTrendKnownFor>? knownFor,
  }) =>
      MovieTrendResult(
        adult: adult ?? this.adult,
        id: id ?? this.id,
        name: name ?? this.name,
        originalName: originalName ?? this.originalName,
        mediaType: mediaType ?? this.mediaType,
        popularity: popularity ?? this.popularity,
        gender: gender ?? this.gender,
        knownForDepartment: knownForDepartment ?? this.knownForDepartment,
        profilePath: profilePath ?? this.profilePath,
        knownFor: knownFor ?? this.knownFor,
      );
}
