import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_trend_know_for.freezed.dart';
part 'movie_trend_know_for.g.dart';

@freezed
abstract class MovieTrendKnownFor with _$MovieTrendKnownFor {
    const factory MovieTrendKnownFor({
        required bool adult,
        required String backdropPath,
        required int id,
        required String title,
        required String originalLanguage,
        required String originalTitle,
        required String overview,
        required String posterPath,
        required String mediaType,
        required List<int> genreIds,
        required double popularity,
        required DateTime releaseDate,
        required bool video,
        required double voteAverage,
        required int voteCount,
        required String name,
        required String originalName,
        required DateTime firstAirDate,
        required List<String> originCountry,
    }) = _MovieTrendKnownFor;

    factory MovieTrendKnownFor.fromJson(Map<String, dynamic> json) => _$MovieTrendKnownForFromJson(json);
}