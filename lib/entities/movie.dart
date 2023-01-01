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
    required bool adult,
    @JsonKey(name: "backdrop_path") String? backdropPath,
    @JsonKey(name: "vote_average") double? voteAverage,
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
  String getRating() {
    return adult ? "18+" : "PG-13";
  }
}

@unfreezed
class TvDetail with _$TvDetail, Picture {
  const TvDetail._();
  factory TvDetail(
      {required int id,
      required String name,
      required List<Genre> genres,
      required String overview,
      required bool adult,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "vote_average") double? voteAverage,
      @JsonKey(name: "original_language") String? originalLanguage,
      @JsonKey(name: "first_air_date") String? releaseDate,
      @JsonKey(name: "number_of_episodes") int? numberOfEpisodes,
      @JsonKey(name: "number_of_seasons") int? numberOfSeasons,
      required Video videos,
      @JsonKey(name: "aggregate_credits") required Credit credits,
      required ReviewList reviews,
      required TMDBTvList similar,
      @Default([]) List<TvSeason> seasons}) = _TvDetail;

  factory TvDetail.fromJson(Map<String, dynamic> json) =>
      _$TvDetailFromJson(json);
  String getRating() {
    return adult ? "18+" : "PG-13";
  }
}

@freezed
class TvSeason with _$TvSeason {
  const TvSeason._();
  const factory TvSeason({
    required String name,
    @JsonKey(name: "season_number") required int seasonNumber,
  }) = _TvSeason;
  factory TvSeason.fromJson(Map<String, dynamic> json) =>
      _$TvSeasonFromJson(json);
}

@freezed
class TvEpisode with _$TvEpisode, Picture {
  const TvEpisode._();
  const factory TvEpisode({
    required String name,
    required String overview,
    @JsonKey(name: "episode_number") int? episodeNumber,
    @JsonKey(name: "still_path") String? stillPath,
    @JsonKey(name: "season_number") required int seasonNumber,
  }) = _TvEpisode;
  factory TvEpisode.fromJson(Map<String, dynamic> json) =>
      _$TvEpisodeFromJson(json);
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
    @Default([]) List<TMDBPerson> cast,
    @Default([]) List<TMDBPerson> crew,
  }) = _Credit;

  factory Credit.fromJson(Map<String, dynamic> json) => _$CreditFromJson(json);
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
      String? character,
      required String name}) = _TMDBPerson;
  factory TMDBPerson.fromJson(Map<String, dynamic> json) =>
      _$TMDBPersonFromJson(json);
}

@unfreezed
class PersonCredits with _$PersonCredits, Picture {
  const PersonCredits._();
  factory PersonCredits({
    @JsonKey(name: "movie_credits") required List<TMDBMovie> movieCredits,
    @JsonKey(name: "tv_credits") required List<TMDBTv> tvCredits,
  }) = _PersonCredits;
  factory PersonCredits.fromJson(Map<String, dynamic> json) =>
      _$PersonCreditsFromJson(json);
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
