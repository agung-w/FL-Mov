// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transaction _$$_TransactionFromJson(Map<String, dynamic> json) =>
    _$_Transaction(
      id: json['id'] as int,
      detail: json['detail'] == null
          ? null
          : TransactionDetail.fromJson(json['detail'] as Map<String, dynamic>),
      transactionType: json['transaction_type'] as String?,
      transactionMethod: json['transaction_method'] as String?,
      total: json['total'] as String,
      status: json['status'] as String,
      date: json['created_at'] as String,
    );

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'detail': instance.detail,
      'transaction_type': instance.transactionType,
      'transaction_method': instance.transactionMethod,
      'total': instance.total,
      'status': instance.status,
      'created_at': instance.date,
    };

_$_TransactionDetail _$$_TransactionDetailFromJson(Map<String, dynamic> json) =>
    _$_TransactionDetail(
      movie: Movie.fromJson(json['movie'] as Map<String, dynamic>),
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$$_TransactionDetailToJson(
        _$_TransactionDetail instance) =>
    <String, dynamic>{
      'movie': instance.movie,
      'quantity': instance.quantity,
    };
