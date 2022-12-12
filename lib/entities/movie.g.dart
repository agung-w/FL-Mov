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
      genres: (json['genres'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      overview: json['overview'] as String,
      runtime: json['runtime'] as int,
      status: json['status'] as String,
      casts: (json['casts'] as List<dynamic>?)
          ?.map((e) => Cast.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MovieDetailToJson(_$_MovieDetail instance) =>
    <String, dynamic>{
      'genres': instance.genres,
      'overview': instance.overview,
      'runtime': instance.runtime,
      'status': instance.status,
      'casts': instance.casts,
    };

_$_Genre _$$_GenreFromJson(Map<String, dynamic> json) => _$_Genre(
      name: json['name'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$$_GenreToJson(_$_Genre instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
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
