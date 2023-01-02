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
  const factory UserEvent.resendVerificationCode(
          String phone, String name, BuildContext context) =
      _ResendVerificationCode;
  const factory UserEvent.registerVerif(
      String phone, String code, BuildContext context) = _RegisterVerif;
  const factory UserEvent.registerConfirm(String phone, String password,
      String passwordConfirmation, BuildContext context) = _RegisterConfirm;
  const factory UserEvent.addEmail(String email, BuildContext context) =
      _AddEmail;
  const factory UserEvent.getChangePasswordToken(
      {required String phone,
      required BuildContext context}) = _GetChangePasswordToken;
  const factory UserEvent.resendChangePasswordToken(
      {required String phone,
      required BuildContext context}) = _ResendChangePasswordToken;
  const factory UserEvent.verifyChangePasswordToken(
      {required String phone,
      required String token,
      required BuildContext context}) = _VerifyChangePasswordToken;
  const factory UserEvent.changePassword(
      {required String phone,
      required String password,
      required String passwordConfirmation,
      required BuildContext context}) = _ChangePassword;
}
