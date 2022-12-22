import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/entities/cinema.dart';
import 'package:movie_app/entities/currency.dart';
import 'package:movie_app/entities/movie.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order, Currency {
  const Order._();
  const factory Order({
    required int id,
    required int quantity,
    @JsonKey(name: "sub_total") required String subTotal,
    @JsonKey(name: "platform_fee") required String? platformFee,
    @JsonKey(name: "admin_fee") required String? adminFee,
    required String schedule,
    int? discount,
    required String? total,
    @JsonKey(name: "tickets") required List<Seat> seats,
    required Movie movie,
    required Cinema cinema,
    required Studio studio,
  }) = _Order;
  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
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
