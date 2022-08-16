// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieRating _$MovieRatingFromJson(Map<String, dynamic> json) => MovieRating(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int?,
      totalResults: json['total_results'] as int?,
    );

Map<String, dynamic> _$MovieRatingToJson(MovieRating instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      adult: json['adult'] as bool?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      originalName: json['original_name'] as String?,
      mediaType: json['media_type'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      gender: json['gender'] as int?,
      knownForDepartment: json['known_for_department'] as String?,
      profilePath: json['profile_path'] as String?,
      knownFor: (json['known_for'] as List<dynamic>?)
          ?.map((e) => KnownFor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'adult': instance.adult,
      'id': instance.id,
      'name': instance.name,
      'original_name': instance.originalName,
      'media_type': instance.mediaType,
      'popularity': instance.popularity,
      'gender': instance.gender,
      'known_for_department': instance.knownForDepartment,
      'profile_path': instance.profilePath,
      'known_for': instance.knownFor,
    };

KnownFor _$KnownForFromJson(Map<String, dynamic> json) => KnownFor(
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      mediaType: json['media_type'] as String?,
      genreIds:
          (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      popularity: (json['popularity'] as num?)?.toDouble(),
      releaseDate: json['release_date'] == null
          ? null
          : DateTime.parse(json['release_date'] as String),
      video: json['video'] as bool?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: json['vote_count'] as int?,
      name: json['name'] as String?,
      originalName: json['original_name'] as String?,
      firstAirDate: json['first_air_date'] == null
          ? null
          : DateTime.parse(json['first_air_date'] as String),
      originCountry: (json['origin_country'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$KnownForToJson(KnownFor instance) => <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'title': instance.title,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'media_type': instance.mediaType,
      'genre_ids': instance.genreIds,
      'popularity': instance.popularity,
      'release_date': instance.releaseDate?.toIso8601String(),
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'name': instance.name,
      'original_name': instance.originalName,
      'first_air_date': instance.firstAirDate?.toIso8601String(),
      'origin_country': instance.originCountry,
    };
