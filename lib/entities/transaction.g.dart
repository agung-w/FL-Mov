// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transaction _$$_TransactionFromJson(Map<String, dynamic> json) =>
    _$_Transaction(
      id: json['id'] as int,
      orderId: json['order_id'] as int?,
      transactionType: json['transaction_type'] as String?,
      transactionMethod: json['transaction_method'] as String?,
      total: json['total'] as String,
      status: json['status'] as String,
      date: json['created_at'] as String,
    );

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'transaction_type': instance.transactionType,
      'transaction_method': instance.transactionMethod,
      'total': instance.total,
      'status': instance.status,
      'created_at': instance.date,
    };
