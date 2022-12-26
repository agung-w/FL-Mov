import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/entities/picture.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@unfreezed
class Movie with _$Movie, Picture {
  const Movie._();
  factory Movie(
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

@unfreezed
class TMDBSearchResult with _$TMDBSearchResult, Picture {
  const TMDBSearchResult._();
  factory TMDBSearchResult({
    @Default([]) List<Movie> inTheaterList,
    @Default([]) List<TMDBMovie> movieList,
    @Default([]) List<TMDBTv> tvList,
    @Default([]) List<TMDBPerson> personList,
  }) = _TMDBSearchResult;
  factory TMDBSearchResult.fromJson(Map<String, dynamic> json) =>
      _$TMDBSearchResultFromJson(json);
}

@unfreezed
class TMDBMovie with _$TMDBMovie, Picture {
  const TMDBMovie._();
  factory TMDBMovie({
    required int id,
    required String title,
    @JsonKey(name: "backdrop_path") String? backdropPath,
    @JsonKey(name: "poster_path") String? posterPath,
    @Default("Movie") String? mediaType,
  }) = _TMDBMovie;
  factory TMDBMovie.fromJson(Map<String, dynamic> json) =>
      _$TMDBMovieFromJson(json);
}

@unfreezed
class TMDBTv with _$TMDBTv, Picture {
  const TMDBTv._();
  factory TMDBTv(
      {required int id,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "poster_path") String? posterPath,
      @Default("Tv") String? mediaType,
      required String name}) = _TMDBTv;
  factory TMDBTv.fromJson(Map<String, dynamic> json) => _$TMDBTvFromJson(json);
}

@unfreezed
class TMDBPerson with _$TMDBPerson, Picture {
  const TMDBPerson._();
  factory TMDBPerson(
      {required int id,
      @JsonKey(name: "profile_path")
          String? profilePath,
      @Default("Person")
      @JsonKey(name: "known_for_department")
          String? knownForDepartment,
      // @JsonKey(name: "known_for")
      //     List<TMDBMovie>? knownFor,
      required String name}) = _TMDBPerson;
  factory TMDBPerson.fromJson(Map<String, dynamic> json) =>
      _$TMDBPersonFromJson(json);
}

class DiscoverCategory {
  int? movieId;
  int? tvId;
  String name;
  String? poster;
  Color? bgColor;
  Color? gradient1;
  Color? gradient2;
  DiscoverCategory({
    this.movieId,
    this.tvId,
    required this.name,
    this.poster,
    this.bgColor,
    this.gradient1,
    this.gradient2,
  });
}
