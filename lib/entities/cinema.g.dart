// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cinema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cinema _$$_CinemaFromJson(Map<String, dynamic> json) => _$_Cinema(
      id: json['id'] as int,
      name: json['name'] as String,
      brand: json['brand'] as String,
      studios: (json['studios'] as List<dynamic>)
          .map((e) => Studio.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CinemaToJson(_$_Cinema instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'brand': instance.brand,
      'studios': instance.studios,
    };

_$_Studio _$$_StudioFromJson(Map<String, dynamic> json) => _$_Studio(
      id: json['id'] as int,
      code: json['code'] as String,
      capacity: json['capacity'] as int,
      row: json['row'] as int,
      column: json['column'] as int,
      price: json['price'] as String,
    );

Map<String, dynamic> _$$_StudioToJson(_$_Studio instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'capacity': instance.capacity,
      'row': instance.row,
      'column': instance.column,
      'price': instance.price,
    };
