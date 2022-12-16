part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = _Initial;
  const factory OrderState.selectedMovie({
    required Movie movie,
  }) = _SelectedMovie;
  const factory OrderState.selectedDate(
      {required Movie movie, required String date}) = _SelectedDate;
  const factory OrderState.selectedTime({
    required Movie movie,
    required String date,
    required String time,
    required Cinema cinema,
    required Studio studio,
  }) = _SelectedTime;
}
