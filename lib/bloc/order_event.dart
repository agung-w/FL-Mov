part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.started() = _Started;
  const factory OrderEvent.selectMovie({required Movie movie}) = _SelectMovie;
  const factory OrderEvent.selectDate({
    required String date,
  }) = _SelectDate;
  const factory OrderEvent.selectTime(
      {required String time,
      required Cinema cinema,
      required Studio studio,
      required BuildContext context}) = _SelectTime;
  const factory OrderEvent.order() = _Order;
  const factory OrderEvent.payOrder({required int orderId}) = _PayOrder;
  const factory OrderEvent.cancel() = _Cancel;
  const factory OrderEvent.cancelTime() = _CancelTime;
  const factory OrderEvent.cancelOrderPay() = _CancelOrderPay;
}
