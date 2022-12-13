import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
class Transaction with _$Transaction {
  const Transaction._();
  const factory Transaction(
      {required int id,
      @JsonKey(name: "order_id") int? orderId,
      @JsonKey(name: "transaction_type") String? transactionType,
      @JsonKey(name: "transaction_method") String? transactionMethod,
      required String total,
      required String status,
      @JsonKey(name: "created_at") required String date}) = _Transaction;
  DateTime getDate() {
    DateFormat dateFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
    return dateFormat.parseUtc(date).toLocal();
  }

  String getTotal() {
    RegExp regex = RegExp(r'([.]*0)(?!.*\d)');
    String formatedTotal = total.replaceAll(regex, '');
    return 'Rp $formatedTotal';
  }

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}
