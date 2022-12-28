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

@freezed
class MovieDetail with _$MovieDetail, Picture {
  const MovieDetail._();
  const factory MovieDetail({
    required int id,
    required String title,
    required List<Genre> genres,
    required String overview,
    required int runtime,
    @JsonKey(name: "backdrop_path") String? backDropPath,
    @JsonKey(name: "poster_path") String? posterPath,
    @JsonKey(name: "original_language") String? originalLanguage,
    @JsonKey(name: "release_date") String? releaseDate,
    required Credit credits,
    required Video videos,
    required ReviewList reviews,
    required TMDBMovieList similar,
  }) = _MovieDetail;

  factory MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailFromJson(json);
}

@freezed
class TvDetail with _$TvDetail, Picture {
  const TvDetail._();
  const factory TvDetail({
    required int id,
    required String name,
    required List<Genre> genres,
    required String overview,
    required int runtime,
    @JsonKey(name: "vote_average") double? voteAverage,
    @JsonKey(name: "original_language") String? originalLanguage,
    @JsonKey(name: "first_air_date") String? releaseDate,
    @JsonKey(name: "number_of_episodes") int? numberOfEpisodes,
    @JsonKey(name: "number_of_seasons") int? numberOfSeasons,
    @JsonKey(name: "aggregate_credits") Credit? credits,
    required Video videos,
    required ReviewList reviews,
    required TMDBTvList similar,
  }) = _TvDetail;

  factory TvDetail.fromJson(Map<String, dynamic> json) =>
      _$TvDetailFromJson(json);
}

@freezed
class TMDBTvList with _$TMDBTvList {
  const factory TMDBTvList(
      {@JsonKey(name: "results") required List<TMDBTv> tvList}) = _TMDBTvList;
  factory TMDBTvList.fromJson(Map<String, dynamic> json) =>
      _$TMDBTvListFromJson(json);
}

@freezed
class TMDBMovieList with _$TMDBMovieList {
  const factory TMDBMovieList(
          {@JsonKey(name: "results") required List<TMDBMovie> movieList}) =
      _TMDBMovieList;
  factory TMDBMovieList.fromJson(Map<String, dynamic> json) =>
      _$TMDBMovieListFromJson(json);
}

@freezed
class ReviewList with _$ReviewList {
  const factory ReviewList(
          {@JsonKey(name: "results") required List<Review> reviewList}) =
      _ReviewList;
  factory ReviewList.fromJson(Map<String, dynamic> json) =>
      _$ReviewListFromJson(json);
}

@freezed
class Review with _$Review {
  const factory Review({
    required String author,
    required String content,
  }) = _Review;
  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
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
class Video with _$Video {
  const factory Video(
      {@Default([]) @JsonKey(name: "results") List<Trailer> trailers}) = _Video;
  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}

@freezed
class Trailer with _$Trailer {
  const factory Trailer({
    required String name,
    required String key,
    required String site,
  }) = _Trailer;
  factory Trailer.fromJson(Map<String, dynamic> json) =>
      _$TrailerFromJson(json);
}

@freezed
class Credit with _$Credit, Picture {
  const Credit._();
  const factory Credit({
    @Default([]) List<Cast> cast,
    @Default([]) List<Crew> crew,
  }) = _Credit;

  factory Credit.fromJson(Map<String, dynamic> json) => _$CreditFromJson(json);
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

@freezed
class Crew with _$Crew, Picture {
  const Crew._();
  const factory Crew(
      {required int id,
      required String name,
      String? character,
      @JsonKey(name: "profile_path") String? profileUrl}) = _Crew;

  factory Crew.fromJson(Map<String, dynamic> json) => _$CrewFromJson(json);
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
