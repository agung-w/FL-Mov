import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/entities/picture.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie, Picture {
  const Movie._();
  const factory Movie(
      {required String title,
      @JsonKey(name: "poster_url") required String posterUrl,
      @JsonKey(name: "vote_average") required String rating,
      @JsonKey(name: "tmdb_id") required String tmdbId}) = _Movie;
  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}

@unfreezed
class MovieDetail with _$MovieDetail {
  factory MovieDetail({
    required List<Genre> genres,
    required String overview,
    required int runtime,
    required String status,
    List<Cast>? casts,
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

@freezed
class Cast with _$Cast, Picture {
  const Cast._();
  const factory Cast(
      {required int id,
      required String name,
      String? character,
      @JsonKey(name: "profile_path") String? profileUrl}) = _Cast;

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
}
