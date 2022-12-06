import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction(
      {required int id,
      @JsonKey(name: "order_id") int? orderId,
      @JsonKey(name: "transaction_type") String? transactionType,
      @JsonKey(name: "transaction_method") String? transactionMethod,
      required String total,
      required String status,
      @JsonKey(name: "created_at") required String date}) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}
