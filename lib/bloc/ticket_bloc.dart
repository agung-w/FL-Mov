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
    on<_GetTicket>((event, emit) async {
      emit(const _Loading());
      SharedPreferences pref = await SharedPreferences.getInstance();
      String? token = pref.getString('token');
      if (token != null) {
        ApiResult<List<Order>> allTicketList =
            await OrderServices().getAllTicket(token: token);
        ApiResult<List<Order>> activeTicketList =
            await OrderServices().getActiveTicket(token: token);
        emit(_Loaded(activeTicketList, allTicketList));
      } else {
        emit(_Initial());
      }
    });
  }
}
