part of 'ticket_bloc.dart';

@freezed
class TicketEvent with _$TicketEvent {
  const factory TicketEvent.getAllTicket() = _GetAllTicket;
  const factory TicketEvent.getActiveTicket() = _GetActiveTicket;
}
