import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/entities/movie.dart';
import 'package:movie_app/entities/currency.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
class Transaction with _$Transaction, Currency {
  const Transaction._();
  const factory Transaction(
      {required int id,
      TransactionDetail? detail,
      @JsonKey(name: "transaction_type") String? transactionType,
      @JsonKey(name: "transaction_method") String? transactionMethod,
      required String total,
      required String status,
      @JsonKey(name: "created_at") required String date}) = _Transaction;
  DateTime getDate() {
    DateFormat dateFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
    return dateFormat.parseUtc(date).toLocal();
  }

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}

@freezed
class TransactionDetail with _$TransactionDetail {
  const factory TransactionDetail(
      {required Movie movie, required int quantity}) = _TransactionDetail;
  factory TransactionDetail.fromJson(Map<String, dynamic> json) =>
      _$TransactionDetailFromJson(json);
}

// @unfreezed
// class PaymentMethod with _$PaymentMethod {
//   const PaymentMethod._();
//   factory PaymentMethod({
//     required String name,
//     required String icon,
//     String? balance,
//   }) = _PaymentMethod;
//   String formatCurrency(String string) {
//     RegExp regex = RegExp(r'([.]*0)(?!.*\d)');
//     String formatedCurrency = string.replaceAll(regex, '');
//     return 'Rp $formatedCurrency';
//   }

//   factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
//       _$PaymentMethodFromJson(json);
// }
class PaymentMethod {
  String name;
  Widget icon;
  String? balance;
  double fee;
  PaymentMethod(
      {required this.name, required this.icon, this.balance, this.fee = 0});
}
