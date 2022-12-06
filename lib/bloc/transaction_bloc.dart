import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/entities/api_result.dart';
import 'package:movie_app/entities/transaction.dart';
import 'package:movie_app/services/transaction_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';
part 'transaction_bloc.freezed.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc() : super(const _Initial()) {
    on<_Get>((event, emit) async {
      SharedPreferences pref = await SharedPreferences.getInstance();
      emit(const _Loading());
      String? token = pref.getString('token');
      if (token != null) {
        ApiResult<List<Transaction>> transactions =
            await TransactionServices().getTransactionList(token: token);
        emit(_Loaded(transactions));
      } else {
        emit(const _Initial());
      }
    });
  }
}
