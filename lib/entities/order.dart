import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  const Order._();
  const factory Order({
    required int id,
    @JsonKey(name: "user_id") required int userId,
    @JsonKey(name: "movie_id") required int movieId,
    @JsonKey(name: "studio_id") required int studioId,
    required int quantity,
    @JsonKey(name: "sub_total") required String subTotal,
    @JsonKey(name: "platform_fee") required String platformFee,
    @JsonKey(name: "admin_fee") required String adminFee,
    int? discount,
    required String total,
    @JsonKey(name: "tickets") required List<Seat> seats,
  }) = _Order;
  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
  String toRupiah(String nominal) {
    final oCcy = NumberFormat("#,###.0", "id_ID");
    RegExp regex = RegExp(r'([,]*#)(?!,*\d)');
    String formated = oCcy.format(double.parse(nominal)).replaceAll(regex, '');
    return 'Rp $formated';
  }
}

@freezed
class Seat with _$Seat {
  const factory Seat(
      {required int id,
      @JsonKey(name: "order_id") required int orderId,
      @JsonKey(name: "user_id") required int userId,
      @JsonKey(name: "studio_id") required int studioId,
      required String schedule,
      required String seat}) = _Seat;
  factory Seat.fromJson(Map<String, dynamic> json) => _$SeatFromJson(json);
}
