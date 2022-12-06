part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.signIn(
      {required String phone, required String password}) = _SignIn;
  const factory UserEvent.signOut() = _SignOut;
  const factory UserEvent.checkSignInStatus() = _CheckSignInStatus;
}
