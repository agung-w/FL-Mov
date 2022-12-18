import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/entities/api_result.dart';
import 'package:movie_app/services/wallet_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'wallet_event.dart';
part 'wallet_state.dart';
part 'wallet_bloc.freezed.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  WalletBloc() : super(const _Initial()) {
    on<_GetBalance>((event, emit) async {
      SharedPreferences pref = await SharedPreferences.getInstance();
      emit(const _Loading());
      String? token = pref.getString('token');
      if (token != null) {
        ApiResult<String> wallet =
            await WalletServices().getBalance(token: token);
        emit(_Loaded(wallet));
      } else {
        emit(const _Initial());
      }
    });
    on<_Activate>((event, emit) async {
      SharedPreferences pref = await SharedPreferences.getInstance();
      emit(const _Loading());
      String? token = pref.getString('token');
      if (token != null) {
        ApiResult<String> wallet =
            await WalletServices().activateWallet(token: token);
        emit(_Loaded(wallet));
      } else {
        emit(const _Initial());
      }
    });
    on<_TopUp>((event, emit) async {
      SharedPreferences pref = await SharedPreferences.getInstance();
      emit(const _Loading());
      String? token = pref.getString('token');
      if (token != null) {
        ApiResult<String> wallet = await WalletServices()
            .topUp(token: token, amount: event.amount, method: event.method);
        emit(_Loaded(wallet));
        wallet.mapOrNull(
            success: (result) =>
                Navigator.popUntil(event.context, (route) => route.isFirst),
            failed: (result) => ScaffoldMessenger.of(event.context)
                .showSnackBar(SnackBar(content: Text(result.message))));
      } else {
        emit(const _Initial());
      }
    });
  }
}
