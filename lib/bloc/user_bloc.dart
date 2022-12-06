import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/entities/api_result.dart';
import 'package:movie_app/services/auth_services.dart';
import 'package:movie_app/services/user_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../entities/user.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const _SignedOut()) {
    on<_SignIn>((event, emit) async {
      SharedPreferences pref = await SharedPreferences.getInstance();
      if (state is _SignedOut) {
        emit(const _Loading());
        ApiResult<String> token = await AuthServices()
            .login(phone: event.phone, password: event.password);
        token.map(
            success: (result) => pref.setString('token', result.value),
            failed: (message) => {});
        if (pref.getString('token') != null) {
          ApiResult<User> user = await UserServices().getUserDetail(
              token: token.map(
                  success: (result) => result.value, failed: (result) => ''));
          user.map(
              success: (result) => emit(_SignedIn(result.value)),
              failed: (result) => emit(const _SignedOut()));
        }
      }
    });
    on<_SignOut>((event, emit) async {
      if (state is _$_SignedIn) {
        SharedPreferences pref = await SharedPreferences.getInstance();
        pref.remove('phone_number');
        pref.remove('token');
        emit(const _SignedOut());
      }
    });
    on<_CheckSignInStatus>((event, emit) async {
      SharedPreferences pref = await SharedPreferences.getInstance();
      String? token = pref.getString('token');
      if (token != null) {
        ApiResult<User> user = await UserServices().getUserDetail(token: token);
        user.map(
            success: (result) => emit(_SignedIn(result.value)),
            failed: (result) => emit(const _SignedOut()));
      }
    });
  }
}
