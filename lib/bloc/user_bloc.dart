import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/entities/api_result.dart';
import 'package:movie_app/presentations/pages/create_password_page.dart';
import 'package:movie_app/presentations/pages/mobile_verification_page.dart';
import 'package:movie_app/services/auth_services.dart';
import 'package:movie_app/services/user_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../entities/user.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const _SignedOut(null)) {
    on<_SignIn>((event, emit) async {
      SharedPreferences pref = await SharedPreferences.getInstance();
      if (state is _SignedOut) {
        emit(const _Loading());
        ApiResult<String> token = await AuthServices()
            .login(phone: event.phone, password: event.password);
        token.map(
            success: (result) => pref.setString('token', result.value),
            failed: (result) {
              emit(const _SignedOut(null));
              ScaffoldMessenger.of(event.context)
                  .showSnackBar(SnackBar(content: Text(result.message)));
            });
        if (pref.getString('token') != null) {
          ApiResult<User> user = await UserServices().getUserDetail(
              token: token.map(
                  success: (result) => result.value, failed: (result) => ''));
          user.map(success: (result) {
            emit(_SignedIn(result.value));
            Navigator.popUntil(event.context, (route) => route.isFirst);
          }, failed: (result) {
            emit(const _SignedOut(null));
            ScaffoldMessenger.of(event.context)
                .showSnackBar(SnackBar(content: Text(result.message)));
          });
        }
      }
    });
    on<_SignOut>((event, emit) async {
      if (state is _$_SignedIn) {
        SharedPreferences pref = await SharedPreferences.getInstance();
        pref.remove('phone_number');
        pref.remove('token');
        emit(const _SignedOut("Logout successfully"));
      }
    });
    on<_CheckSignInStatus>((event, emit) async {
      SharedPreferences pref = await SharedPreferences.getInstance();
      String? token = pref.getString('token');
      if (token != null) {
        ApiResult<User> user = await UserServices().getUserDetail(token: token);
        user.map(
            success: (result) => emit(_SignedIn(result.value)),
            failed: (result) => emit(const _SignedOut(null)));
      }
    });
    on<_RegisterInit>((event, emit) async {
      if (state is _SignedOut) {
        emit(const _SignedOut(""));
        ApiResult<String> result = await UserServices()
            .phoneRegistration(phone: event.phone, name: event.name);
        result.map(
          success: (result) => Navigator.of(event.context).push(
            MaterialPageRoute(
              builder: (_) => MobileVerificationPage(
                name: event.name,
                phoneNumber: event.phone,
              ),
            ),
          ),
          failed: (result) => ScaffoldMessenger.of(event.context)
              .showSnackBar(SnackBar(content: Text(result.message))),
        );
      }
    });
    on<_RegisterVerif>((event, emit) async {
      if (state is _SignedOut) {
        emit(const _SignedOut(""));

        ApiResult<String> result = await UserServices()
            .verifyPhoneRegistration(phone: event.phone, code: event.code);
        result.map(
          success: (result) => Navigator.of(event.context).push(
            MaterialPageRoute(
              builder: (_) => CreatePasswordPage(phoneNumber: event.phone),
            ),
          ),
          failed: (result) => ScaffoldMessenger.of(event.context)
              .showSnackBar(SnackBar(content: Text(result.message))),
        );
      }
    });
    on<_ResendVerificationCode>((event, emit) async {
      if (state is _SignedOut) {
        emit(const _SignedOut(""));

        ApiResult<String> result = await UserServices()
            .phoneRegistration(phone: event.phone, name: event.name);
        result.map(
          success: (result) =>
              ScaffoldMessenger.of(event.context).showSnackBar(const SnackBar(
            content: Text("New Code Has Been Sent"),
            backgroundColor: Colors.green,
          )),
          failed: (result) => ScaffoldMessenger.of(event.context)
              .showSnackBar(SnackBar(content: Text(result.message))),
        );
      }
    });
    on<_RegisterConfirm>((event, emit) async {
      if (state is _SignedOut) {
        emit(const _SignedOut(""));

        if (event.password == event.passwordConfirmation &&
            event.password.length >= 8) {
          SharedPreferences pref = await SharedPreferences.getInstance();
          ApiResult<String> result = await UserServices()
              .createPassword(phone: event.phone, password: event.password);
          result.map(
            success: (result) {
              pref
                  .setString("token", result.value)
                  .then((value) => event.context
                      .read<UserBloc>()
                      .add(const _CheckSignInStatus()))
                  .then((value) => Navigator.popUntil(
                      event.context, (route) => route.isFirst));
            },
            failed: (result) => ScaffoldMessenger.of(event.context)
                .showSnackBar(SnackBar(content: Text(result.message))),
          );
        } else {
          if (event.password.length < 8) {
            ScaffoldMessenger.of(event.context).showSnackBar(const SnackBar(
                content: Text("password must be at least 8 characters")));
          } else {
            ScaffoldMessenger.of(event.context).showSnackBar(const SnackBar(
                content: Text("Password not match please check again")));
          }
        }
      }
    });
  }
}
