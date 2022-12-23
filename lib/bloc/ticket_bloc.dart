import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/entities/api_result.dart';
import 'package:movie_app/entities/order.dart';
import 'package:movie_app/services/order_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'ticket_event.dart';
part 'ticket_state.dart';
part 'ticket_bloc.freezed.dart';

class TicketBloc extends Bloc<TicketEvent, TicketState> {
  TicketBloc() : super(const _Initial()) {
    on<_GetAllTicket>((event, emit) async {
      SharedPreferences pref = await SharedPreferences.getInstance();
      String? token = pref.getString('token');
      if (token != null) {
        await OrderServices()
            .getAllTicket(token: token)
            .then((value) => emit(_Loaded(value)));
      }
    });
    on<_GetActiveTicket>((event, emit) async {
      SharedPreferences pref = await SharedPreferences.getInstance();
      String? token = pref.getString('token');
      if (token != null) {
        await OrderServices()
            .getActiveTicket(token: token)
            .then((value) => emit(_Loaded(value)));
      }
    });
  }
}
