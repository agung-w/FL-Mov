part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.signIn(
      {required String phone,
      required String password,
      required BuildContext context}) = _SignIn;
  const factory UserEvent.signOut() = _SignOut;
  const factory UserEvent.checkSignInStatus() = _CheckSignInStatus;
  const factory UserEvent.registerInit(
      String phone, String name, BuildContext context) = _RegisterInit;
  const factory UserEvent.registerVerif(
      String phone, String code, BuildContext context) = _RegisterVerif;
  const factory UserEvent.registerConfirm(String phone, String password,
      String passwordConfirmation, BuildContext context) = _RegisterConfirm;
}
