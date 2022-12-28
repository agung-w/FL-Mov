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
      backDropPath: json['backdrop_path'] as String?,
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
      'backdrop_path': instance.backDropPath,
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
      runtime: json['runtime'] as int,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      originalLanguage: json['original_language'] as String?,
      releaseDate: json['first_air_date'] as String?,
      numberOfEpisodes: json['number_of_episodes'] as int?,
      numberOfSeasons: json['number_of_seasons'] as int?,
      credits: json['aggregate_credits'] == null
          ? null
          : Credit.fromJson(json['aggregate_credits'] as Map<String, dynamic>),
      videos: Video.fromJson(json['videos'] as Map<String, dynamic>),
      reviews: ReviewList.fromJson(json['reviews'] as Map<String, dynamic>),
      similar: TMDBTvList.fromJson(json['similar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TvDetailToJson(_$_TvDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'genres': instance.genres,
      'overview': instance.overview,
      'runtime': instance.runtime,
      'vote_average': instance.voteAverage,
      'original_language': instance.originalLanguage,
      'first_air_date': instance.releaseDate,
      'number_of_episodes': instance.numberOfEpisodes,
      'number_of_seasons': instance.numberOfSeasons,
      'aggregate_credits': instance.credits,
      'videos': instance.videos,
      'reviews': instance.reviews,
      'similar': instance.similar,
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
              ?.map((e) => Cast.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      crew: (json['crew'] as List<dynamic>?)
              ?.map((e) => Crew.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CreditToJson(_$_Credit instance) => <String, dynamic>{
      'cast': instance.cast,
      'crew': instance.crew,
    };

_$_Cast _$$_CastFromJson(Map<String, dynamic> json) => _$_Cast(
      id: json['id'] as int,
      name: json['name'] as String,
      character: json['character'] as String?,
      profileUrl: json['profile_path'] as String?,
    );

Map<String, dynamic> _$$_CastToJson(_$_Cast instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'character': instance.character,
      'profile_path': instance.profileUrl,
    };

_$_Crew _$$_CrewFromJson(Map<String, dynamic> json) => _$_Crew(
      id: json['id'] as int,
      name: json['name'] as String,
      character: json['character'] as String?,
      profileUrl: json['profile_path'] as String?,
    );

Map<String, dynamic> _$$_CrewToJson(_$_Crew instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'character': instance.character,
      'profile_path': instance.profileUrl,
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
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_TMDBPersonToJson(_$_TMDBPerson instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile_path': instance.profilePath,
      'known_for_department': instance.knownForDepartment,
      'name': instance.name,
    };
