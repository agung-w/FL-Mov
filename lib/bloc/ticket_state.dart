part of 'ticket_bloc.dart';

@freezed
class TicketState with _$TicketState {
  const factory TicketState.initial() = _Initial;
  const factory TicketState.loaded(
          ApiResult<List<Order>> activeList, ApiResult<List<Order>> allList) =
      _Loaded;
  const factory TicketState.loading() = _Loading;
}
