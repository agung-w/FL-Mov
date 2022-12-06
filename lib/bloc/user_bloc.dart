import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
      if (state is _SignedOut) {
        emit(const _Loading());
        String? token = await AuthServices()
            .login(phone: event.phone, password: event.password);
        if (token != null) {
          User? user = await UserServices().getUserDetail(token: token);
          if (user != null) {
            SharedPreferences pref = await SharedPreferences.getInstance();
            pref.setString('phone_number', event.phone);
            pref.setString('token', token);
            emit(_SignedIn(user));
          } else {
            emit(const _SignedOut());
          }
        } else {
          emit(const _SignedOut());
        }
      } else {
        emit(const _SignedOut());
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
      String? email = pref.getString('phone_number');
      String? token = pref.getString('token');
      if (email != null && token != null) {
        User? user = await UserServices().getUserDetail(token: token);
        if (user != null) {
          emit(_SignedIn(user));
        }
      }
    });
  }
}
