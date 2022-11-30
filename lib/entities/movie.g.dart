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
