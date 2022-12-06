part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.signedOut() = _SignedOut;
  const factory UserState.signedIn(User user) = _SignedIn;
  const factory UserState.loading() = _Loading;
}
