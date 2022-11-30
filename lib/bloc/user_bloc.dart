import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
        String? token =
            UserServices.getToken(email: event.email, password: event.password);
        if (token != null) {
          User? user = UserServices.getUser(email: event.email, token: token);
          if (user != null) {
            SharedPreferences pref = await SharedPreferences.getInstance();
            pref.setString('email', event.email);
            pref.setString('token', token);
            emit(_SignedIn(user));
          }
        }
      }
    });
    on<_SignOut>((event, emit) async {
      if (state is _$_SignedIn) {
        SharedPreferences pref = await SharedPreferences.getInstance();
        pref.remove('email');
        pref.remove('token');
        emit(const _SignedOut());
      }
    });
    on<_CheckSignInStatus>((event, emit) async {
      SharedPreferences pref = await SharedPreferences.getInstance();
      String? email = pref.getString('token');
      String? token = pref.getString('email');
      if (email != null && token != null) {
        bool tokenValid = UserServices.isTokenValid(token);
        if (tokenValid) {
          User? user = UserServices.getUser(email: email, token: token);
          if (user != null) {
            emit(_SignedIn(user));
          }
        }
      }
    });
  }
}
