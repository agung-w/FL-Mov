// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$$_MovieFromJson(Map<String, dynamic> json) => _$_Movie(
      title: json['title'] as String,
      posterUrl: json['poster_url'] as String,
      rating: json['vote_average'] as String,
      tmdbId: json['tmdb_id'] as String,
    );

Map<String, dynamic> _$$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'title': instance.title,
      'poster_url': instance.posterUrl,
      'vote_average': instance.rating,
      'tmdb_id': instance.tmdbId,
    };

_$_MovieDetail _$$_MovieDetailFromJson(Map<String, dynamic> json) =>
    _$_MovieDetail(
      id: json['id'] as int,
      title: json['title'] as String,
      genres: (json['genres'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      overview: json['overview'] as String,
      runtime: json['runtime'] as int,
      adult: json['adult'] as bool,
      backdropPath: json['backdrop_path'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      posterPath: json['poster_path'] as String?,
      originalLanguage: json['original_language'] as String?,
      releaseDate: json['release_date'] as String?,
      credits: Credit.fromJson(json['credits'] as Map<String, dynamic>),
      videos: Video.fromJson(json['videos'] as Map<String, dynamic>),
      reviews: ReviewList.fromJson(json['reviews'] as Map<String, dynamic>),
      similar: TMDBMovieList.fromJson(json['similar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MovieDetailToJson(_$_MovieDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'genres': instance.genres,
      'overview': instance.overview,
      'runtime': instance.runtime,
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'vote_average': instance.voteAverage,
      'poster_path': instance.posterPath,
      'original_language': instance.originalLanguage,
      'release_date': instance.releaseDate,
      'credits': instance.credits,
      'videos': instance.videos,
      'reviews': instance.reviews,
      'similar': instance.similar,
    };

_$_TvDetail _$$_TvDetailFromJson(Map<String, dynamic> json) => _$_TvDetail(
      id: json['id'] as int,
      name: json['name'] as String,
      genres: (json['genres'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      overview: json['overview'] as String,
      adult: json['adult'] as bool,
      backdropPath: json['backdrop_path'] as String?,
      posterPath: json['poster_path'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      originalLanguage: json['original_language'] as String?,
      releaseDate: json['first_air_date'] as String?,
      numberOfEpisodes: json['number_of_episodes'] as int?,
      numberOfSeasons: json['number_of_seasons'] as int?,
      videos: Video.fromJson(json['videos'] as Map<String, dynamic>),
      credits:
          Credit.fromJson(json['aggregate_credits'] as Map<String, dynamic>),
      reviews: ReviewList.fromJson(json['reviews'] as Map<String, dynamic>),
      similar: TMDBTvList.fromJson(json['similar'] as Map<String, dynamic>),
      seasons: (json['seasons'] as List<dynamic>?)
              ?.map((e) => TvSeason.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_TvDetailToJson(_$_TvDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'genres': instance.genres,
      'overview': instance.overview,
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'vote_average': instance.voteAverage,
      'original_language': instance.originalLanguage,
      'first_air_date': instance.releaseDate,
      'number_of_episodes': instance.numberOfEpisodes,
      'number_of_seasons': instance.numberOfSeasons,
      'videos': instance.videos,
      'aggregate_credits': instance.credits,
      'reviews': instance.reviews,
      'similar': instance.similar,
      'seasons': instance.seasons,
    };

_$_TvSeason _$$_TvSeasonFromJson(Map<String, dynamic> json) => _$_TvSeason(
      name: json['name'] as String,
      seasonNumber: json['season_number'] as int,
    );

Map<String, dynamic> _$$_TvSeasonToJson(_$_TvSeason instance) =>
    <String, dynamic>{
      'name': instance.name,
      'season_number': instance.seasonNumber,
    };

_$_TvEpisode _$$_TvEpisodeFromJson(Map<String, dynamic> json) => _$_TvEpisode(
      name: json['name'] as String,
      overview: json['overview'] as String,
      episodeNumber: json['episode_number'] as int?,
      stillPath: json['still_path'] as String?,
      seasonNumber: json['season_number'] as int,
    );

Map<String, dynamic> _$$_TvEpisodeToJson(_$_TvEpisode instance) =>
    <String, dynamic>{
      'name': instance.name,
      'overview': instance.overview,
      'episode_number': instance.episodeNumber,
      'still_path': instance.stillPath,
      'season_number': instance.seasonNumber,
    };

_$_TMDBTvList _$$_TMDBTvListFromJson(Map<String, dynamic> json) =>
    _$_TMDBTvList(
      tvList: (json['results'] as List<dynamic>)
          .map((e) => TMDBTv.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TMDBTvListToJson(_$_TMDBTvList instance) =>
    <String, dynamic>{
      'results': instance.tvList,
    };

_$_TMDBMovieList _$$_TMDBMovieListFromJson(Map<String, dynamic> json) =>
    _$_TMDBMovieList(
      movieList: (json['results'] as List<dynamic>)
          .map((e) => TMDBMovie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TMDBMovieListToJson(_$_TMDBMovieList instance) =>
    <String, dynamic>{
      'results': instance.movieList,
    };

_$_ReviewList _$$_ReviewListFromJson(Map<String, dynamic> json) =>
    _$_ReviewList(
      reviewList: (json['results'] as List<dynamic>)
          .map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ReviewListToJson(_$_ReviewList instance) =>
    <String, dynamic>{
      'results': instance.reviewList,
    };

_$_Review _$$_ReviewFromJson(Map<String, dynamic> json) => _$_Review(
      author: json['author'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_ReviewToJson(_$_Review instance) => <String, dynamic>{
      'author': instance.author,
      'content': instance.content,
    };

_$_Genre _$$_GenreFromJson(Map<String, dynamic> json) => _$_Genre(
      name: json['name'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$$_GenreToJson(_$_Genre instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };

_$_Video _$$_VideoFromJson(Map<String, dynamic> json) => _$_Video(
      trailers: (json['results'] as List<dynamic>?)
              ?.map((e) => Trailer.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_VideoToJson(_$_Video instance) => <String, dynamic>{
      'results': instance.trailers,
    };

_$_Trailer _$$_TrailerFromJson(Map<String, dynamic> json) => _$_Trailer(
      name: json['name'] as String,
      key: json['key'] as String,
      site: json['site'] as String,
    );

Map<String, dynamic> _$$_TrailerToJson(_$_Trailer instance) =>
    <String, dynamic>{
      'name': instance.name,
      'key': instance.key,
      'site': instance.site,
    };

_$_Credit _$$_CreditFromJson(Map<String, dynamic> json) => _$_Credit(
      cast: (json['cast'] as List<dynamic>?)
              ?.map((e) => TMDBPerson.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      crew: (json['crew'] as List<dynamic>?)
              ?.map((e) => TMDBPerson.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CreditToJson(_$_Credit instance) => <String, dynamic>{
      'cast': instance.cast,
      'crew': instance.crew,
    };

_$_TMDBSearchResult _$$_TMDBSearchResultFromJson(Map<String, dynamic> json) =>
    _$_TMDBSearchResult(
      inTheaterList: (json['inTheaterList'] as List<dynamic>?)
              ?.map((e) => Movie.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      movieList: (json['movieList'] as List<dynamic>?)
              ?.map((e) => TMDBMovie.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      tvList: (json['tvList'] as List<dynamic>?)
              ?.map((e) => TMDBTv.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      personList: (json['personList'] as List<dynamic>?)
              ?.map((e) => TMDBPerson.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_TMDBSearchResultToJson(_$_TMDBSearchResult instance) =>
    <String, dynamic>{
      'inTheaterList': instance.inTheaterList,
      'movieList': instance.movieList,
      'tvList': instance.tvList,
      'personList': instance.personList,
    };

_$_TMDBMovie _$$_TMDBMovieFromJson(Map<String, dynamic> json) => _$_TMDBMovie(
      id: json['id'] as int,
      title: json['title'] as String,
      backdropPath: json['backdrop_path'] as String?,
      posterPath: json['poster_path'] as String?,
      mediaType: json['mediaType'] as String? ?? "Movie",
    );

Map<String, dynamic> _$$_TMDBMovieToJson(_$_TMDBMovie instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'mediaType': instance.mediaType,
    };

_$_TMDBTv _$$_TMDBTvFromJson(Map<String, dynamic> json) => _$_TMDBTv(
      id: json['id'] as int,
      backdropPath: json['backdrop_path'] as String?,
      posterPath: json['poster_path'] as String?,
      mediaType: json['mediaType'] as String? ?? "Tv",
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_TMDBTvToJson(_$_TMDBTv instance) => <String, dynamic>{
      'id': instance.id,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'mediaType': instance.mediaType,
      'name': instance.name,
    };

_$_TMDBPerson _$$_TMDBPersonFromJson(Map<String, dynamic> json) =>
    _$_TMDBPerson(
      id: json['id'] as int,
      profilePath: json['profile_path'] as String?,
      knownForDepartment: json['known_for_department'] as String? ?? "Person",
      character: json['character'] as String?,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_TMDBPersonToJson(_$_TMDBPerson instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile_path': instance.profilePath,
      'known_for_department': instance.knownForDepartment,
      'character': instance.character,
      'name': instance.name,
    };

_$_PersonCredits _$$_PersonCreditsFromJson(Map<String, dynamic> json) =>
    _$_PersonCredits(
      movieCredits: (json['movie_credits'] as List<dynamic>)
          .map((e) => TMDBMovie.fromJson(e as Map<String, dynamic>))
          .toList(),
      tvCredits: (json['tv_credits'] as List<dynamic>)
          .map((e) => TMDBTv.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PersonCreditsToJson(_$_PersonCredits instance) =>
    <String, dynamic>{
      'movie_credits': instance.movieCredits,
      'tv_credits': instance.tvCredits,
    };
