// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      id: json['id'] as int,
      quantity: json['quantity'] as int,
      subTotal: json['sub_total'] as String,
      platformFee: json['platform_fee'] as String?,
      adminFee: json['admin_fee'] as String?,
      schedule: json['schedule'] as String,
      discount: json['discount'] as int?,
      total: json['total'] as String?,
      seats: (json['tickets'] as List<dynamic>)
          .map((e) => Seat.fromJson(e as Map<String, dynamic>))
          .toList(),
      movie: Movie.fromJson(json['movie'] as Map<String, dynamic>),
      cinema: Cinema.fromJson(json['cinema'] as Map<String, dynamic>),
      studio: Studio.fromJson(json['studio'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'sub_total': instance.subTotal,
      'platform_fee': instance.platformFee,
      'admin_fee': instance.adminFee,
      'schedule': instance.schedule,
      'discount': instance.discount,
      'total': instance.total,
      'tickets': instance.seats,
      'movie': instance.movie,
      'cinema': instance.cinema,
      'studio': instance.studio,
    };

_$_Seat _$$_SeatFromJson(Map<String, dynamic> json) => _$_Seat(
      id: json['id'] as int,
      orderId: json['order_id'] as int,
      userId: json['user_id'] as int,
      studioId: json['studio_id'] as int,
      schedule: json['schedule'] as String,
      seat: json['seat'] as String,
    );

Map<String, dynamic> _$$_SeatToJson(_$_Seat instance) => <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'user_id': instance.userId,
      'studio_id': instance.studioId,
      'schedule': instance.schedule,
      'seat': instance.seat,
    };
