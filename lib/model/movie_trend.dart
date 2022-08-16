import 'package:json_annotation/json_annotation.dart';

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
    List<Result>? results;
    @JsonKey(name: 'total_pages')
    int? totalPages;
    @JsonKey(name: 'total_results')
    int? totalResults;

    factory MovieTrend.fromJson(Map<String, dynamic> json) =>
      _$MovieTrendFromJson(json);

    Map<String, dynamic> toJson() => _$MovieTrendToJson(this);

    MovieTrend copyWith({
        int? page,
        List<Result>? results,
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

@JsonSerializable()
class Result {
    Result({
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
    List<KnownFor>? knownFor;

    factory Result.fromJson(Map<String, dynamic> json) =>
      _$ResultFromJson(json);

    Map<String, dynamic> toJson() => _$ResultToJson(this);

    Result copyWith({
        bool? adult,
        int? id,
        String? name,
        String? originalName,
        String? mediaType,
        double? popularity,
        int? gender,
        String? knownForDepartment,
        String? profilePath,
        List<KnownFor>? knownFor,
    }) => 
        Result(
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

@JsonSerializable()
class KnownFor {
    KnownFor({
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

    factory KnownFor.fromJson(Map<String, dynamic> json) =>
      _$KnownForFromJson(json);

    Map<String, dynamic> toJson() => _$KnownForToJson(this);

    KnownFor copyWith({
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
        KnownFor(
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
