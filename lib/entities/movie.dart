import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie(
      {required String title,
      @JsonKey(name: "poster_url") required String posterUrl,
      @JsonKey(name: "vote_average") required String rating,
      @JsonKey(name: "tmdb_id") required String tmdbId}) = _Movie;
  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}

@freezed
class MovieDetail with _$MovieDetail {
  const factory MovieDetail({
    required List<Genre> genres,
    required String overview,
    required int runtime,
    required String status,
  }) = _MovieDetail;
  factory MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailFromJson(json);
}

@freezed
class Genre with _$Genre {
  const factory Genre({
    required String name,
    required int id,
  }) = _Genre;
  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}
