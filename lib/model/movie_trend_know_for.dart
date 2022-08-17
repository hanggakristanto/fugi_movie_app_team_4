import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class MovieTrendKnownFor {
  MovieTrendKnownFor({
    this.adult,
    this.backdropPath,
    this.id,
    this.title,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.mediaType,
    this.genreIds,
    this.popularity,
    this.releaseDate,
    this.video,
    this.voteAverage,
    this.voteCount,
    this.name,
    this.originalName,
    this.firstAirDate,
    this.originCountry,
  });

  bool? adult;
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  int? id;
  String? title;
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  String? overview;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'media_type')
  String? mediaType;
  @JsonKey(name: 'genre_ids')
  List<int>? genreIds;
  double? popularity;
  @JsonKey(name: 'release_date')
  DateTime? releaseDate;
  bool? video;
  @JsonKey(name: 'vote_average')
  double? voteAverage;
  @JsonKey(name: 'vote_count')
  int? voteCount;
  String? name;
  @JsonKey(name: 'original_name')
  String? originalName;
  @JsonKey(name: 'first_air_date')
  DateTime? firstAirDate;
  @JsonKey(name: 'origin_country')
  List<String>? originCountry;

  factory MovieTrendKnownFor.fromJson(Map<String, dynamic> json) =>
      _$MovieTrendKnownForFromJson(json);

  Map<String, dynamic> toJson() => _$MovieTrendKnownForToJson(this);

  MovieTrendKnownFor copyWith({
    bool? adult,
    String? backdropPath,
    int? id,
    String? title,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    String? posterPath,
    String? mediaType,
    List<int>? genreIds,
    double? popularity,
    DateTime? releaseDate,
    bool? video,
    double? voteAverage,
    int? voteCount,
    String? name,
    String? originalName,
    DateTime? firstAirDate,
    List<String>? originCountry,
  }) =>
      MovieTrendKnownFor(
        adult: adult ?? this.adult,
        backdropPath: backdropPath ?? this.backdropPath,
        id: id ?? this.id,
        title: title ?? this.title,
        originalLanguage: originalLanguage ?? this.originalLanguage,
        originalTitle: originalTitle ?? this.originalTitle,
        overview: overview ?? this.overview,
        posterPath: posterPath ?? this.posterPath,
        mediaType: mediaType ?? this.mediaType,
        genreIds: genreIds ?? this.genreIds,
        popularity: popularity ?? this.popularity,
        releaseDate: releaseDate ?? this.releaseDate,
        video: video ?? this.video,
        voteAverage: voteAverage ?? this.voteAverage,
        voteCount: voteCount ?? this.voteCount,
        name: name ?? this.name,
        originalName: originalName ?? this.originalName,
        firstAirDate: firstAirDate ?? this.firstAirDate,
        originCountry: originCountry ?? this.originCountry,
      );
}
