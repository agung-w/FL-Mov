// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      phone: json['phone_number'] as String,
      name: json['name'] as String,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'phone_number': instance.phone,
      'name': instance.name,
      'photoUrl': instance.photoUrl,
    };
