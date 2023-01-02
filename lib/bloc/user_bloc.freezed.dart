// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phone, String password, BuildContext context)
        signIn,
    required TResult Function() signOut,
    required TResult Function() checkSignInStatus,
    required TResult Function(String phone, String name, BuildContext context)
        registerInit,
    required TResult Function(String phone, String name, BuildContext context)
        resendVerificationCode,
    required TResult Function(String phone, String code, BuildContext context)
        registerVerif,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        registerConfirm,
    required TResult Function(String email, BuildContext context) addEmail,
    required TResult Function(String phone, BuildContext context)
        getChangePasswordToken,
    required TResult Function(String phone, BuildContext context)
        resendChangePasswordToken,
    required TResult Function(String phone, String token, BuildContext context)
        verifyChangePasswordToken,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone, String password, BuildContext context)?
        signIn,
    TResult? Function()? signOut,
    TResult? Function()? checkSignInStatus,
    TResult? Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult? Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult? Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        registerConfirm,
    TResult? Function(String email, BuildContext context)? addEmail,
    TResult? Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult? Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult? Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String password, BuildContext context)?
        signIn,
    TResult Function()? signOut,
    TResult Function()? checkSignInStatus,
    TResult Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        registerConfirm,
    TResult Function(String email, BuildContext context)? addEmail,
    TResult Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckSignInStatus value) checkSignInStatus,
    required TResult Function(_RegisterInit value) registerInit,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
    required TResult Function(_RegisterVerif value) registerVerif,
    required TResult Function(_RegisterConfirm value) registerConfirm,
    required TResult Function(_AddEmail value) addEmail,
    required TResult Function(_GetChangePasswordToken value)
        getChangePasswordToken,
    required TResult Function(_ResendChangePasswordToken value)
        resendChangePasswordToken,
    required TResult Function(_VerifyChangePasswordToken value)
        verifyChangePasswordToken,
    required TResult Function(_ChangePassword value) changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult? Function(_RegisterInit value)? registerInit,
    TResult? Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult? Function(_RegisterVerif value)? registerVerif,
    TResult? Function(_RegisterConfirm value)? registerConfirm,
    TResult? Function(_AddEmail value)? addEmail,
    TResult? Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult? Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult? Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult? Function(_ChangePassword value)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult Function(_RegisterInit value)? registerInit,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult Function(_RegisterVerif value)? registerVerif,
    TResult Function(_RegisterConfirm value)? registerConfirm,
    TResult Function(_AddEmail value)? addEmail,
    TResult Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SignInCopyWith<$Res> {
  factory _$$_SignInCopyWith(_$_SignIn value, $Res Function(_$_SignIn) then) =
      __$$_SignInCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone, String password, BuildContext context});
}

/// @nodoc
class __$$_SignInCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_SignIn>
    implements _$$_SignInCopyWith<$Res> {
  __$$_SignInCopyWithImpl(_$_SignIn _value, $Res Function(_$_SignIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? password = null,
    Object? context = null,
  }) {
    return _then(_$_SignIn(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_SignIn implements _SignIn {
  const _$_SignIn(
      {required this.phone, required this.password, required this.context});

  @override
  final String phone;
  @override
  final String password;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'UserEvent.signIn(phone: $phone, password: $password, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignIn &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, password, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInCopyWith<_$_SignIn> get copyWith =>
      __$$_SignInCopyWithImpl<_$_SignIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phone, String password, BuildContext context)
        signIn,
    required TResult Function() signOut,
    required TResult Function() checkSignInStatus,
    required TResult Function(String phone, String name, BuildContext context)
        registerInit,
    required TResult Function(String phone, String name, BuildContext context)
        resendVerificationCode,
    required TResult Function(String phone, String code, BuildContext context)
        registerVerif,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        registerConfirm,
    required TResult Function(String email, BuildContext context) addEmail,
    required TResult Function(String phone, BuildContext context)
        getChangePasswordToken,
    required TResult Function(String phone, BuildContext context)
        resendChangePasswordToken,
    required TResult Function(String phone, String token, BuildContext context)
        verifyChangePasswordToken,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        changePassword,
  }) {
    return signIn(phone, password, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone, String password, BuildContext context)?
        signIn,
    TResult? Function()? signOut,
    TResult? Function()? checkSignInStatus,
    TResult? Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult? Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult? Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        registerConfirm,
    TResult? Function(String email, BuildContext context)? addEmail,
    TResult? Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult? Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult? Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        changePassword,
  }) {
    return signIn?.call(phone, password, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String password, BuildContext context)?
        signIn,
    TResult Function()? signOut,
    TResult Function()? checkSignInStatus,
    TResult Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        registerConfirm,
    TResult Function(String email, BuildContext context)? addEmail,
    TResult Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        changePassword,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(phone, password, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckSignInStatus value) checkSignInStatus,
    required TResult Function(_RegisterInit value) registerInit,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
    required TResult Function(_RegisterVerif value) registerVerif,
    required TResult Function(_RegisterConfirm value) registerConfirm,
    required TResult Function(_AddEmail value) addEmail,
    required TResult Function(_GetChangePasswordToken value)
        getChangePasswordToken,
    required TResult Function(_ResendChangePasswordToken value)
        resendChangePasswordToken,
    required TResult Function(_VerifyChangePasswordToken value)
        verifyChangePasswordToken,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult? Function(_RegisterInit value)? registerInit,
    TResult? Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult? Function(_RegisterVerif value)? registerVerif,
    TResult? Function(_RegisterConfirm value)? registerConfirm,
    TResult? Function(_AddEmail value)? addEmail,
    TResult? Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult? Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult? Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult Function(_RegisterInit value)? registerInit,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult Function(_RegisterVerif value)? registerVerif,
    TResult Function(_RegisterConfirm value)? registerConfirm,
    TResult Function(_AddEmail value)? addEmail,
    TResult Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignIn implements UserEvent {
  const factory _SignIn(
      {required final String phone,
      required final String password,
      required final BuildContext context}) = _$_SignIn;

  String get phone;
  String get password;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_SignInCopyWith<_$_SignIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignOutCopyWith<$Res> {
  factory _$$_SignOutCopyWith(
          _$_SignOut value, $Res Function(_$_SignOut) then) =
      __$$_SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignOutCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_SignOut>
    implements _$$_SignOutCopyWith<$Res> {
  __$$_SignOutCopyWithImpl(_$_SignOut _value, $Res Function(_$_SignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignOut implements _SignOut {
  const _$_SignOut();

  @override
  String toString() {
    return 'UserEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phone, String password, BuildContext context)
        signIn,
    required TResult Function() signOut,
    required TResult Function() checkSignInStatus,
    required TResult Function(String phone, String name, BuildContext context)
        registerInit,
    required TResult Function(String phone, String name, BuildContext context)
        resendVerificationCode,
    required TResult Function(String phone, String code, BuildContext context)
        registerVerif,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        registerConfirm,
    required TResult Function(String email, BuildContext context) addEmail,
    required TResult Function(String phone, BuildContext context)
        getChangePasswordToken,
    required TResult Function(String phone, BuildContext context)
        resendChangePasswordToken,
    required TResult Function(String phone, String token, BuildContext context)
        verifyChangePasswordToken,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        changePassword,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone, String password, BuildContext context)?
        signIn,
    TResult? Function()? signOut,
    TResult? Function()? checkSignInStatus,
    TResult? Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult? Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult? Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        registerConfirm,
    TResult? Function(String email, BuildContext context)? addEmail,
    TResult? Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult? Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult? Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        changePassword,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String password, BuildContext context)?
        signIn,
    TResult Function()? signOut,
    TResult Function()? checkSignInStatus,
    TResult Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        registerConfirm,
    TResult Function(String email, BuildContext context)? addEmail,
    TResult Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        changePassword,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckSignInStatus value) checkSignInStatus,
    required TResult Function(_RegisterInit value) registerInit,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
    required TResult Function(_RegisterVerif value) registerVerif,
    required TResult Function(_RegisterConfirm value) registerConfirm,
    required TResult Function(_AddEmail value) addEmail,
    required TResult Function(_GetChangePasswordToken value)
        getChangePasswordToken,
    required TResult Function(_ResendChangePasswordToken value)
        resendChangePasswordToken,
    required TResult Function(_VerifyChangePasswordToken value)
        verifyChangePasswordToken,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult? Function(_RegisterInit value)? registerInit,
    TResult? Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult? Function(_RegisterVerif value)? registerVerif,
    TResult? Function(_RegisterConfirm value)? registerConfirm,
    TResult? Function(_AddEmail value)? addEmail,
    TResult? Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult? Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult? Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult Function(_RegisterInit value)? registerInit,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult Function(_RegisterVerif value)? registerVerif,
    TResult Function(_RegisterConfirm value)? registerConfirm,
    TResult Function(_AddEmail value)? addEmail,
    TResult Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements UserEvent {
  const factory _SignOut() = _$_SignOut;
}

/// @nodoc
abstract class _$$_CheckSignInStatusCopyWith<$Res> {
  factory _$$_CheckSignInStatusCopyWith(_$_CheckSignInStatus value,
          $Res Function(_$_CheckSignInStatus) then) =
      __$$_CheckSignInStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckSignInStatusCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_CheckSignInStatus>
    implements _$$_CheckSignInStatusCopyWith<$Res> {
  __$$_CheckSignInStatusCopyWithImpl(
      _$_CheckSignInStatus _value, $Res Function(_$_CheckSignInStatus) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckSignInStatus implements _CheckSignInStatus {
  const _$_CheckSignInStatus();

  @override
  String toString() {
    return 'UserEvent.checkSignInStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckSignInStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phone, String password, BuildContext context)
        signIn,
    required TResult Function() signOut,
    required TResult Function() checkSignInStatus,
    required TResult Function(String phone, String name, BuildContext context)
        registerInit,
    required TResult Function(String phone, String name, BuildContext context)
        resendVerificationCode,
    required TResult Function(String phone, String code, BuildContext context)
        registerVerif,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        registerConfirm,
    required TResult Function(String email, BuildContext context) addEmail,
    required TResult Function(String phone, BuildContext context)
        getChangePasswordToken,
    required TResult Function(String phone, BuildContext context)
        resendChangePasswordToken,
    required TResult Function(String phone, String token, BuildContext context)
        verifyChangePasswordToken,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        changePassword,
  }) {
    return checkSignInStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone, String password, BuildContext context)?
        signIn,
    TResult? Function()? signOut,
    TResult? Function()? checkSignInStatus,
    TResult? Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult? Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult? Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        registerConfirm,
    TResult? Function(String email, BuildContext context)? addEmail,
    TResult? Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult? Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult? Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        changePassword,
  }) {
    return checkSignInStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String password, BuildContext context)?
        signIn,
    TResult Function()? signOut,
    TResult Function()? checkSignInStatus,
    TResult Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        registerConfirm,
    TResult Function(String email, BuildContext context)? addEmail,
    TResult Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        changePassword,
    required TResult orElse(),
  }) {
    if (checkSignInStatus != null) {
      return checkSignInStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckSignInStatus value) checkSignInStatus,
    required TResult Function(_RegisterInit value) registerInit,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
    required TResult Function(_RegisterVerif value) registerVerif,
    required TResult Function(_RegisterConfirm value) registerConfirm,
    required TResult Function(_AddEmail value) addEmail,
    required TResult Function(_GetChangePasswordToken value)
        getChangePasswordToken,
    required TResult Function(_ResendChangePasswordToken value)
        resendChangePasswordToken,
    required TResult Function(_VerifyChangePasswordToken value)
        verifyChangePasswordToken,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return checkSignInStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult? Function(_RegisterInit value)? registerInit,
    TResult? Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult? Function(_RegisterVerif value)? registerVerif,
    TResult? Function(_RegisterConfirm value)? registerConfirm,
    TResult? Function(_AddEmail value)? addEmail,
    TResult? Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult? Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult? Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return checkSignInStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult Function(_RegisterInit value)? registerInit,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult Function(_RegisterVerif value)? registerVerif,
    TResult Function(_RegisterConfirm value)? registerConfirm,
    TResult Function(_AddEmail value)? addEmail,
    TResult Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (checkSignInStatus != null) {
      return checkSignInStatus(this);
    }
    return orElse();
  }
}

abstract class _CheckSignInStatus implements UserEvent {
  const factory _CheckSignInStatus() = _$_CheckSignInStatus;
}

/// @nodoc
abstract class _$$_RegisterInitCopyWith<$Res> {
  factory _$$_RegisterInitCopyWith(
          _$_RegisterInit value, $Res Function(_$_RegisterInit) then) =
      __$$_RegisterInitCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone, String name, BuildContext context});
}

/// @nodoc
class __$$_RegisterInitCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_RegisterInit>
    implements _$$_RegisterInitCopyWith<$Res> {
  __$$_RegisterInitCopyWithImpl(
      _$_RegisterInit _value, $Res Function(_$_RegisterInit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? name = null,
    Object? context = null,
  }) {
    return _then(_$_RegisterInit(
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_RegisterInit implements _RegisterInit {
  const _$_RegisterInit(this.phone, this.name, this.context);

  @override
  final String phone;
  @override
  final String name;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'UserEvent.registerInit(phone: $phone, name: $name, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterInit &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, name, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterInitCopyWith<_$_RegisterInit> get copyWith =>
      __$$_RegisterInitCopyWithImpl<_$_RegisterInit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phone, String password, BuildContext context)
        signIn,
    required TResult Function() signOut,
    required TResult Function() checkSignInStatus,
    required TResult Function(String phone, String name, BuildContext context)
        registerInit,
    required TResult Function(String phone, String name, BuildContext context)
        resendVerificationCode,
    required TResult Function(String phone, String code, BuildContext context)
        registerVerif,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        registerConfirm,
    required TResult Function(String email, BuildContext context) addEmail,
    required TResult Function(String phone, BuildContext context)
        getChangePasswordToken,
    required TResult Function(String phone, BuildContext context)
        resendChangePasswordToken,
    required TResult Function(String phone, String token, BuildContext context)
        verifyChangePasswordToken,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        changePassword,
  }) {
    return registerInit(phone, name, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone, String password, BuildContext context)?
        signIn,
    TResult? Function()? signOut,
    TResult? Function()? checkSignInStatus,
    TResult? Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult? Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult? Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        registerConfirm,
    TResult? Function(String email, BuildContext context)? addEmail,
    TResult? Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult? Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult? Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        changePassword,
  }) {
    return registerInit?.call(phone, name, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String password, BuildContext context)?
        signIn,
    TResult Function()? signOut,
    TResult Function()? checkSignInStatus,
    TResult Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        registerConfirm,
    TResult Function(String email, BuildContext context)? addEmail,
    TResult Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        changePassword,
    required TResult orElse(),
  }) {
    if (registerInit != null) {
      return registerInit(phone, name, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckSignInStatus value) checkSignInStatus,
    required TResult Function(_RegisterInit value) registerInit,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
    required TResult Function(_RegisterVerif value) registerVerif,
    required TResult Function(_RegisterConfirm value) registerConfirm,
    required TResult Function(_AddEmail value) addEmail,
    required TResult Function(_GetChangePasswordToken value)
        getChangePasswordToken,
    required TResult Function(_ResendChangePasswordToken value)
        resendChangePasswordToken,
    required TResult Function(_VerifyChangePasswordToken value)
        verifyChangePasswordToken,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return registerInit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult? Function(_RegisterInit value)? registerInit,
    TResult? Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult? Function(_RegisterVerif value)? registerVerif,
    TResult? Function(_RegisterConfirm value)? registerConfirm,
    TResult? Function(_AddEmail value)? addEmail,
    TResult? Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult? Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult? Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return registerInit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult Function(_RegisterInit value)? registerInit,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult Function(_RegisterVerif value)? registerVerif,
    TResult Function(_RegisterConfirm value)? registerConfirm,
    TResult Function(_AddEmail value)? addEmail,
    TResult Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (registerInit != null) {
      return registerInit(this);
    }
    return orElse();
  }
}

abstract class _RegisterInit implements UserEvent {
  const factory _RegisterInit(
          final String phone, final String name, final BuildContext context) =
      _$_RegisterInit;

  String get phone;
  String get name;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_RegisterInitCopyWith<_$_RegisterInit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResendVerificationCodeCopyWith<$Res> {
  factory _$$_ResendVerificationCodeCopyWith(_$_ResendVerificationCode value,
          $Res Function(_$_ResendVerificationCode) then) =
      __$$_ResendVerificationCodeCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone, String name, BuildContext context});
}

/// @nodoc
class __$$_ResendVerificationCodeCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_ResendVerificationCode>
    implements _$$_ResendVerificationCodeCopyWith<$Res> {
  __$$_ResendVerificationCodeCopyWithImpl(_$_ResendVerificationCode _value,
      $Res Function(_$_ResendVerificationCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? name = null,
    Object? context = null,
  }) {
    return _then(_$_ResendVerificationCode(
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_ResendVerificationCode implements _ResendVerificationCode {
  const _$_ResendVerificationCode(this.phone, this.name, this.context);

  @override
  final String phone;
  @override
  final String name;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'UserEvent.resendVerificationCode(phone: $phone, name: $name, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResendVerificationCode &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, name, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResendVerificationCodeCopyWith<_$_ResendVerificationCode> get copyWith =>
      __$$_ResendVerificationCodeCopyWithImpl<_$_ResendVerificationCode>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phone, String password, BuildContext context)
        signIn,
    required TResult Function() signOut,
    required TResult Function() checkSignInStatus,
    required TResult Function(String phone, String name, BuildContext context)
        registerInit,
    required TResult Function(String phone, String name, BuildContext context)
        resendVerificationCode,
    required TResult Function(String phone, String code, BuildContext context)
        registerVerif,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        registerConfirm,
    required TResult Function(String email, BuildContext context) addEmail,
    required TResult Function(String phone, BuildContext context)
        getChangePasswordToken,
    required TResult Function(String phone, BuildContext context)
        resendChangePasswordToken,
    required TResult Function(String phone, String token, BuildContext context)
        verifyChangePasswordToken,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        changePassword,
  }) {
    return resendVerificationCode(phone, name, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone, String password, BuildContext context)?
        signIn,
    TResult? Function()? signOut,
    TResult? Function()? checkSignInStatus,
    TResult? Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult? Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult? Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        registerConfirm,
    TResult? Function(String email, BuildContext context)? addEmail,
    TResult? Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult? Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult? Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        changePassword,
  }) {
    return resendVerificationCode?.call(phone, name, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String password, BuildContext context)?
        signIn,
    TResult Function()? signOut,
    TResult Function()? checkSignInStatus,
    TResult Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        registerConfirm,
    TResult Function(String email, BuildContext context)? addEmail,
    TResult Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        changePassword,
    required TResult orElse(),
  }) {
    if (resendVerificationCode != null) {
      return resendVerificationCode(phone, name, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckSignInStatus value) checkSignInStatus,
    required TResult Function(_RegisterInit value) registerInit,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
    required TResult Function(_RegisterVerif value) registerVerif,
    required TResult Function(_RegisterConfirm value) registerConfirm,
    required TResult Function(_AddEmail value) addEmail,
    required TResult Function(_GetChangePasswordToken value)
        getChangePasswordToken,
    required TResult Function(_ResendChangePasswordToken value)
        resendChangePasswordToken,
    required TResult Function(_VerifyChangePasswordToken value)
        verifyChangePasswordToken,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return resendVerificationCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult? Function(_RegisterInit value)? registerInit,
    TResult? Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult? Function(_RegisterVerif value)? registerVerif,
    TResult? Function(_RegisterConfirm value)? registerConfirm,
    TResult? Function(_AddEmail value)? addEmail,
    TResult? Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult? Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult? Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return resendVerificationCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult Function(_RegisterInit value)? registerInit,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult Function(_RegisterVerif value)? registerVerif,
    TResult Function(_RegisterConfirm value)? registerConfirm,
    TResult Function(_AddEmail value)? addEmail,
    TResult Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (resendVerificationCode != null) {
      return resendVerificationCode(this);
    }
    return orElse();
  }
}

abstract class _ResendVerificationCode implements UserEvent {
  const factory _ResendVerificationCode(
          final String phone, final String name, final BuildContext context) =
      _$_ResendVerificationCode;

  String get phone;
  String get name;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_ResendVerificationCodeCopyWith<_$_ResendVerificationCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegisterVerifCopyWith<$Res> {
  factory _$$_RegisterVerifCopyWith(
          _$_RegisterVerif value, $Res Function(_$_RegisterVerif) then) =
      __$$_RegisterVerifCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone, String code, BuildContext context});
}

/// @nodoc
class __$$_RegisterVerifCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_RegisterVerif>
    implements _$$_RegisterVerifCopyWith<$Res> {
  __$$_RegisterVerifCopyWithImpl(
      _$_RegisterVerif _value, $Res Function(_$_RegisterVerif) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? code = null,
    Object? context = null,
  }) {
    return _then(_$_RegisterVerif(
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_RegisterVerif implements _RegisterVerif {
  const _$_RegisterVerif(this.phone, this.code, this.context);

  @override
  final String phone;
  @override
  final String code;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'UserEvent.registerVerif(phone: $phone, code: $code, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterVerif &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, code, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterVerifCopyWith<_$_RegisterVerif> get copyWith =>
      __$$_RegisterVerifCopyWithImpl<_$_RegisterVerif>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phone, String password, BuildContext context)
        signIn,
    required TResult Function() signOut,
    required TResult Function() checkSignInStatus,
    required TResult Function(String phone, String name, BuildContext context)
        registerInit,
    required TResult Function(String phone, String name, BuildContext context)
        resendVerificationCode,
    required TResult Function(String phone, String code, BuildContext context)
        registerVerif,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        registerConfirm,
    required TResult Function(String email, BuildContext context) addEmail,
    required TResult Function(String phone, BuildContext context)
        getChangePasswordToken,
    required TResult Function(String phone, BuildContext context)
        resendChangePasswordToken,
    required TResult Function(String phone, String token, BuildContext context)
        verifyChangePasswordToken,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        changePassword,
  }) {
    return registerVerif(phone, code, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone, String password, BuildContext context)?
        signIn,
    TResult? Function()? signOut,
    TResult? Function()? checkSignInStatus,
    TResult? Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult? Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult? Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        registerConfirm,
    TResult? Function(String email, BuildContext context)? addEmail,
    TResult? Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult? Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult? Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        changePassword,
  }) {
    return registerVerif?.call(phone, code, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String password, BuildContext context)?
        signIn,
    TResult Function()? signOut,
    TResult Function()? checkSignInStatus,
    TResult Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        registerConfirm,
    TResult Function(String email, BuildContext context)? addEmail,
    TResult Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        changePassword,
    required TResult orElse(),
  }) {
    if (registerVerif != null) {
      return registerVerif(phone, code, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckSignInStatus value) checkSignInStatus,
    required TResult Function(_RegisterInit value) registerInit,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
    required TResult Function(_RegisterVerif value) registerVerif,
    required TResult Function(_RegisterConfirm value) registerConfirm,
    required TResult Function(_AddEmail value) addEmail,
    required TResult Function(_GetChangePasswordToken value)
        getChangePasswordToken,
    required TResult Function(_ResendChangePasswordToken value)
        resendChangePasswordToken,
    required TResult Function(_VerifyChangePasswordToken value)
        verifyChangePasswordToken,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return registerVerif(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult? Function(_RegisterInit value)? registerInit,
    TResult? Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult? Function(_RegisterVerif value)? registerVerif,
    TResult? Function(_RegisterConfirm value)? registerConfirm,
    TResult? Function(_AddEmail value)? addEmail,
    TResult? Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult? Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult? Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return registerVerif?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult Function(_RegisterInit value)? registerInit,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult Function(_RegisterVerif value)? registerVerif,
    TResult Function(_RegisterConfirm value)? registerConfirm,
    TResult Function(_AddEmail value)? addEmail,
    TResult Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (registerVerif != null) {
      return registerVerif(this);
    }
    return orElse();
  }
}

abstract class _RegisterVerif implements UserEvent {
  const factory _RegisterVerif(
          final String phone, final String code, final BuildContext context) =
      _$_RegisterVerif;

  String get phone;
  String get code;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_RegisterVerifCopyWith<_$_RegisterVerif> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegisterConfirmCopyWith<$Res> {
  factory _$$_RegisterConfirmCopyWith(
          _$_RegisterConfirm value, $Res Function(_$_RegisterConfirm) then) =
      __$$_RegisterConfirmCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String phone,
      String password,
      String passwordConfirmation,
      BuildContext context});
}

/// @nodoc
class __$$_RegisterConfirmCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_RegisterConfirm>
    implements _$$_RegisterConfirmCopyWith<$Res> {
  __$$_RegisterConfirmCopyWithImpl(
      _$_RegisterConfirm _value, $Res Function(_$_RegisterConfirm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? password = null,
    Object? passwordConfirmation = null,
    Object? context = null,
  }) {
    return _then(_$_RegisterConfirm(
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_RegisterConfirm implements _RegisterConfirm {
  const _$_RegisterConfirm(
      this.phone, this.password, this.passwordConfirmation, this.context);

  @override
  final String phone;
  @override
  final String password;
  @override
  final String passwordConfirmation;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'UserEvent.registerConfirm(phone: $phone, password: $password, passwordConfirmation: $passwordConfirmation, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterConfirm &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, phone, password, passwordConfirmation, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterConfirmCopyWith<_$_RegisterConfirm> get copyWith =>
      __$$_RegisterConfirmCopyWithImpl<_$_RegisterConfirm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phone, String password, BuildContext context)
        signIn,
    required TResult Function() signOut,
    required TResult Function() checkSignInStatus,
    required TResult Function(String phone, String name, BuildContext context)
        registerInit,
    required TResult Function(String phone, String name, BuildContext context)
        resendVerificationCode,
    required TResult Function(String phone, String code, BuildContext context)
        registerVerif,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        registerConfirm,
    required TResult Function(String email, BuildContext context) addEmail,
    required TResult Function(String phone, BuildContext context)
        getChangePasswordToken,
    required TResult Function(String phone, BuildContext context)
        resendChangePasswordToken,
    required TResult Function(String phone, String token, BuildContext context)
        verifyChangePasswordToken,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        changePassword,
  }) {
    return registerConfirm(phone, password, passwordConfirmation, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone, String password, BuildContext context)?
        signIn,
    TResult? Function()? signOut,
    TResult? Function()? checkSignInStatus,
    TResult? Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult? Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult? Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        registerConfirm,
    TResult? Function(String email, BuildContext context)? addEmail,
    TResult? Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult? Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult? Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        changePassword,
  }) {
    return registerConfirm?.call(
        phone, password, passwordConfirmation, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String password, BuildContext context)?
        signIn,
    TResult Function()? signOut,
    TResult Function()? checkSignInStatus,
    TResult Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        registerConfirm,
    TResult Function(String email, BuildContext context)? addEmail,
    TResult Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        changePassword,
    required TResult orElse(),
  }) {
    if (registerConfirm != null) {
      return registerConfirm(phone, password, passwordConfirmation, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckSignInStatus value) checkSignInStatus,
    required TResult Function(_RegisterInit value) registerInit,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
    required TResult Function(_RegisterVerif value) registerVerif,
    required TResult Function(_RegisterConfirm value) registerConfirm,
    required TResult Function(_AddEmail value) addEmail,
    required TResult Function(_GetChangePasswordToken value)
        getChangePasswordToken,
    required TResult Function(_ResendChangePasswordToken value)
        resendChangePasswordToken,
    required TResult Function(_VerifyChangePasswordToken value)
        verifyChangePasswordToken,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return registerConfirm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult? Function(_RegisterInit value)? registerInit,
    TResult? Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult? Function(_RegisterVerif value)? registerVerif,
    TResult? Function(_RegisterConfirm value)? registerConfirm,
    TResult? Function(_AddEmail value)? addEmail,
    TResult? Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult? Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult? Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return registerConfirm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult Function(_RegisterInit value)? registerInit,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult Function(_RegisterVerif value)? registerVerif,
    TResult Function(_RegisterConfirm value)? registerConfirm,
    TResult Function(_AddEmail value)? addEmail,
    TResult Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (registerConfirm != null) {
      return registerConfirm(this);
    }
    return orElse();
  }
}

abstract class _RegisterConfirm implements UserEvent {
  const factory _RegisterConfirm(
      final String phone,
      final String password,
      final String passwordConfirmation,
      final BuildContext context) = _$_RegisterConfirm;

  String get phone;
  String get password;
  String get passwordConfirmation;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_RegisterConfirmCopyWith<_$_RegisterConfirm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddEmailCopyWith<$Res> {
  factory _$$_AddEmailCopyWith(
          _$_AddEmail value, $Res Function(_$_AddEmail) then) =
      __$$_AddEmailCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, BuildContext context});
}

/// @nodoc
class __$$_AddEmailCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_AddEmail>
    implements _$$_AddEmailCopyWith<$Res> {
  __$$_AddEmailCopyWithImpl(
      _$_AddEmail _value, $Res Function(_$_AddEmail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? context = null,
  }) {
    return _then(_$_AddEmail(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_AddEmail implements _AddEmail {
  const _$_AddEmail(this.email, this.context);

  @override
  final String email;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'UserEvent.addEmail(email: $email, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddEmail &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddEmailCopyWith<_$_AddEmail> get copyWith =>
      __$$_AddEmailCopyWithImpl<_$_AddEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phone, String password, BuildContext context)
        signIn,
    required TResult Function() signOut,
    required TResult Function() checkSignInStatus,
    required TResult Function(String phone, String name, BuildContext context)
        registerInit,
    required TResult Function(String phone, String name, BuildContext context)
        resendVerificationCode,
    required TResult Function(String phone, String code, BuildContext context)
        registerVerif,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        registerConfirm,
    required TResult Function(String email, BuildContext context) addEmail,
    required TResult Function(String phone, BuildContext context)
        getChangePasswordToken,
    required TResult Function(String phone, BuildContext context)
        resendChangePasswordToken,
    required TResult Function(String phone, String token, BuildContext context)
        verifyChangePasswordToken,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        changePassword,
  }) {
    return addEmail(email, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone, String password, BuildContext context)?
        signIn,
    TResult? Function()? signOut,
    TResult? Function()? checkSignInStatus,
    TResult? Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult? Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult? Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        registerConfirm,
    TResult? Function(String email, BuildContext context)? addEmail,
    TResult? Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult? Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult? Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        changePassword,
  }) {
    return addEmail?.call(email, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String password, BuildContext context)?
        signIn,
    TResult Function()? signOut,
    TResult Function()? checkSignInStatus,
    TResult Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        registerConfirm,
    TResult Function(String email, BuildContext context)? addEmail,
    TResult Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        changePassword,
    required TResult orElse(),
  }) {
    if (addEmail != null) {
      return addEmail(email, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckSignInStatus value) checkSignInStatus,
    required TResult Function(_RegisterInit value) registerInit,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
    required TResult Function(_RegisterVerif value) registerVerif,
    required TResult Function(_RegisterConfirm value) registerConfirm,
    required TResult Function(_AddEmail value) addEmail,
    required TResult Function(_GetChangePasswordToken value)
        getChangePasswordToken,
    required TResult Function(_ResendChangePasswordToken value)
        resendChangePasswordToken,
    required TResult Function(_VerifyChangePasswordToken value)
        verifyChangePasswordToken,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return addEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult? Function(_RegisterInit value)? registerInit,
    TResult? Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult? Function(_RegisterVerif value)? registerVerif,
    TResult? Function(_RegisterConfirm value)? registerConfirm,
    TResult? Function(_AddEmail value)? addEmail,
    TResult? Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult? Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult? Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return addEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult Function(_RegisterInit value)? registerInit,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult Function(_RegisterVerif value)? registerVerif,
    TResult Function(_RegisterConfirm value)? registerConfirm,
    TResult Function(_AddEmail value)? addEmail,
    TResult Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (addEmail != null) {
      return addEmail(this);
    }
    return orElse();
  }
}

abstract class _AddEmail implements UserEvent {
  const factory _AddEmail(final String email, final BuildContext context) =
      _$_AddEmail;

  String get email;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_AddEmailCopyWith<_$_AddEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetChangePasswordTokenCopyWith<$Res> {
  factory _$$_GetChangePasswordTokenCopyWith(_$_GetChangePasswordToken value,
          $Res Function(_$_GetChangePasswordToken) then) =
      __$$_GetChangePasswordTokenCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone, BuildContext context});
}

/// @nodoc
class __$$_GetChangePasswordTokenCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_GetChangePasswordToken>
    implements _$$_GetChangePasswordTokenCopyWith<$Res> {
  __$$_GetChangePasswordTokenCopyWithImpl(_$_GetChangePasswordToken _value,
      $Res Function(_$_GetChangePasswordToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? context = null,
  }) {
    return _then(_$_GetChangePasswordToken(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_GetChangePasswordToken implements _GetChangePasswordToken {
  const _$_GetChangePasswordToken({required this.phone, required this.context});

  @override
  final String phone;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'UserEvent.getChangePasswordToken(phone: $phone, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetChangePasswordToken &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetChangePasswordTokenCopyWith<_$_GetChangePasswordToken> get copyWith =>
      __$$_GetChangePasswordTokenCopyWithImpl<_$_GetChangePasswordToken>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phone, String password, BuildContext context)
        signIn,
    required TResult Function() signOut,
    required TResult Function() checkSignInStatus,
    required TResult Function(String phone, String name, BuildContext context)
        registerInit,
    required TResult Function(String phone, String name, BuildContext context)
        resendVerificationCode,
    required TResult Function(String phone, String code, BuildContext context)
        registerVerif,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        registerConfirm,
    required TResult Function(String email, BuildContext context) addEmail,
    required TResult Function(String phone, BuildContext context)
        getChangePasswordToken,
    required TResult Function(String phone, BuildContext context)
        resendChangePasswordToken,
    required TResult Function(String phone, String token, BuildContext context)
        verifyChangePasswordToken,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        changePassword,
  }) {
    return getChangePasswordToken(phone, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone, String password, BuildContext context)?
        signIn,
    TResult? Function()? signOut,
    TResult? Function()? checkSignInStatus,
    TResult? Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult? Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult? Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        registerConfirm,
    TResult? Function(String email, BuildContext context)? addEmail,
    TResult? Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult? Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult? Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        changePassword,
  }) {
    return getChangePasswordToken?.call(phone, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String password, BuildContext context)?
        signIn,
    TResult Function()? signOut,
    TResult Function()? checkSignInStatus,
    TResult Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        registerConfirm,
    TResult Function(String email, BuildContext context)? addEmail,
    TResult Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        changePassword,
    required TResult orElse(),
  }) {
    if (getChangePasswordToken != null) {
      return getChangePasswordToken(phone, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckSignInStatus value) checkSignInStatus,
    required TResult Function(_RegisterInit value) registerInit,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
    required TResult Function(_RegisterVerif value) registerVerif,
    required TResult Function(_RegisterConfirm value) registerConfirm,
    required TResult Function(_AddEmail value) addEmail,
    required TResult Function(_GetChangePasswordToken value)
        getChangePasswordToken,
    required TResult Function(_ResendChangePasswordToken value)
        resendChangePasswordToken,
    required TResult Function(_VerifyChangePasswordToken value)
        verifyChangePasswordToken,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return getChangePasswordToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult? Function(_RegisterInit value)? registerInit,
    TResult? Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult? Function(_RegisterVerif value)? registerVerif,
    TResult? Function(_RegisterConfirm value)? registerConfirm,
    TResult? Function(_AddEmail value)? addEmail,
    TResult? Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult? Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult? Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return getChangePasswordToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult Function(_RegisterInit value)? registerInit,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult Function(_RegisterVerif value)? registerVerif,
    TResult Function(_RegisterConfirm value)? registerConfirm,
    TResult Function(_AddEmail value)? addEmail,
    TResult Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (getChangePasswordToken != null) {
      return getChangePasswordToken(this);
    }
    return orElse();
  }
}

abstract class _GetChangePasswordToken implements UserEvent {
  const factory _GetChangePasswordToken(
      {required final String phone,
      required final BuildContext context}) = _$_GetChangePasswordToken;

  String get phone;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_GetChangePasswordTokenCopyWith<_$_GetChangePasswordToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResendChangePasswordTokenCopyWith<$Res> {
  factory _$$_ResendChangePasswordTokenCopyWith(
          _$_ResendChangePasswordToken value,
          $Res Function(_$_ResendChangePasswordToken) then) =
      __$$_ResendChangePasswordTokenCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone, BuildContext context});
}

/// @nodoc
class __$$_ResendChangePasswordTokenCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_ResendChangePasswordToken>
    implements _$$_ResendChangePasswordTokenCopyWith<$Res> {
  __$$_ResendChangePasswordTokenCopyWithImpl(
      _$_ResendChangePasswordToken _value,
      $Res Function(_$_ResendChangePasswordToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? context = null,
  }) {
    return _then(_$_ResendChangePasswordToken(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_ResendChangePasswordToken implements _ResendChangePasswordToken {
  const _$_ResendChangePasswordToken(
      {required this.phone, required this.context});

  @override
  final String phone;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'UserEvent.resendChangePasswordToken(phone: $phone, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResendChangePasswordToken &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResendChangePasswordTokenCopyWith<_$_ResendChangePasswordToken>
      get copyWith => __$$_ResendChangePasswordTokenCopyWithImpl<
          _$_ResendChangePasswordToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phone, String password, BuildContext context)
        signIn,
    required TResult Function() signOut,
    required TResult Function() checkSignInStatus,
    required TResult Function(String phone, String name, BuildContext context)
        registerInit,
    required TResult Function(String phone, String name, BuildContext context)
        resendVerificationCode,
    required TResult Function(String phone, String code, BuildContext context)
        registerVerif,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        registerConfirm,
    required TResult Function(String email, BuildContext context) addEmail,
    required TResult Function(String phone, BuildContext context)
        getChangePasswordToken,
    required TResult Function(String phone, BuildContext context)
        resendChangePasswordToken,
    required TResult Function(String phone, String token, BuildContext context)
        verifyChangePasswordToken,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        changePassword,
  }) {
    return resendChangePasswordToken(phone, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone, String password, BuildContext context)?
        signIn,
    TResult? Function()? signOut,
    TResult? Function()? checkSignInStatus,
    TResult? Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult? Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult? Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        registerConfirm,
    TResult? Function(String email, BuildContext context)? addEmail,
    TResult? Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult? Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult? Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        changePassword,
  }) {
    return resendChangePasswordToken?.call(phone, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String password, BuildContext context)?
        signIn,
    TResult Function()? signOut,
    TResult Function()? checkSignInStatus,
    TResult Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        registerConfirm,
    TResult Function(String email, BuildContext context)? addEmail,
    TResult Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        changePassword,
    required TResult orElse(),
  }) {
    if (resendChangePasswordToken != null) {
      return resendChangePasswordToken(phone, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckSignInStatus value) checkSignInStatus,
    required TResult Function(_RegisterInit value) registerInit,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
    required TResult Function(_RegisterVerif value) registerVerif,
    required TResult Function(_RegisterConfirm value) registerConfirm,
    required TResult Function(_AddEmail value) addEmail,
    required TResult Function(_GetChangePasswordToken value)
        getChangePasswordToken,
    required TResult Function(_ResendChangePasswordToken value)
        resendChangePasswordToken,
    required TResult Function(_VerifyChangePasswordToken value)
        verifyChangePasswordToken,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return resendChangePasswordToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult? Function(_RegisterInit value)? registerInit,
    TResult? Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult? Function(_RegisterVerif value)? registerVerif,
    TResult? Function(_RegisterConfirm value)? registerConfirm,
    TResult? Function(_AddEmail value)? addEmail,
    TResult? Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult? Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult? Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return resendChangePasswordToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult Function(_RegisterInit value)? registerInit,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult Function(_RegisterVerif value)? registerVerif,
    TResult Function(_RegisterConfirm value)? registerConfirm,
    TResult Function(_AddEmail value)? addEmail,
    TResult Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (resendChangePasswordToken != null) {
      return resendChangePasswordToken(this);
    }
    return orElse();
  }
}

abstract class _ResendChangePasswordToken implements UserEvent {
  const factory _ResendChangePasswordToken(
      {required final String phone,
      required final BuildContext context}) = _$_ResendChangePasswordToken;

  String get phone;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_ResendChangePasswordTokenCopyWith<_$_ResendChangePasswordToken>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VerifyChangePasswordTokenCopyWith<$Res> {
  factory _$$_VerifyChangePasswordTokenCopyWith(
          _$_VerifyChangePasswordToken value,
          $Res Function(_$_VerifyChangePasswordToken) then) =
      __$$_VerifyChangePasswordTokenCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone, String token, BuildContext context});
}

/// @nodoc
class __$$_VerifyChangePasswordTokenCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_VerifyChangePasswordToken>
    implements _$$_VerifyChangePasswordTokenCopyWith<$Res> {
  __$$_VerifyChangePasswordTokenCopyWithImpl(
      _$_VerifyChangePasswordToken _value,
      $Res Function(_$_VerifyChangePasswordToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? token = null,
    Object? context = null,
  }) {
    return _then(_$_VerifyChangePasswordToken(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_VerifyChangePasswordToken implements _VerifyChangePasswordToken {
  const _$_VerifyChangePasswordToken(
      {required this.phone, required this.token, required this.context});

  @override
  final String phone;
  @override
  final String token;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'UserEvent.verifyChangePasswordToken(phone: $phone, token: $token, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyChangePasswordToken &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, token, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyChangePasswordTokenCopyWith<_$_VerifyChangePasswordToken>
      get copyWith => __$$_VerifyChangePasswordTokenCopyWithImpl<
          _$_VerifyChangePasswordToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phone, String password, BuildContext context)
        signIn,
    required TResult Function() signOut,
    required TResult Function() checkSignInStatus,
    required TResult Function(String phone, String name, BuildContext context)
        registerInit,
    required TResult Function(String phone, String name, BuildContext context)
        resendVerificationCode,
    required TResult Function(String phone, String code, BuildContext context)
        registerVerif,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        registerConfirm,
    required TResult Function(String email, BuildContext context) addEmail,
    required TResult Function(String phone, BuildContext context)
        getChangePasswordToken,
    required TResult Function(String phone, BuildContext context)
        resendChangePasswordToken,
    required TResult Function(String phone, String token, BuildContext context)
        verifyChangePasswordToken,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        changePassword,
  }) {
    return verifyChangePasswordToken(phone, token, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone, String password, BuildContext context)?
        signIn,
    TResult? Function()? signOut,
    TResult? Function()? checkSignInStatus,
    TResult? Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult? Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult? Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        registerConfirm,
    TResult? Function(String email, BuildContext context)? addEmail,
    TResult? Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult? Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult? Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        changePassword,
  }) {
    return verifyChangePasswordToken?.call(phone, token, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String password, BuildContext context)?
        signIn,
    TResult Function()? signOut,
    TResult Function()? checkSignInStatus,
    TResult Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        registerConfirm,
    TResult Function(String email, BuildContext context)? addEmail,
    TResult Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        changePassword,
    required TResult orElse(),
  }) {
    if (verifyChangePasswordToken != null) {
      return verifyChangePasswordToken(phone, token, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckSignInStatus value) checkSignInStatus,
    required TResult Function(_RegisterInit value) registerInit,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
    required TResult Function(_RegisterVerif value) registerVerif,
    required TResult Function(_RegisterConfirm value) registerConfirm,
    required TResult Function(_AddEmail value) addEmail,
    required TResult Function(_GetChangePasswordToken value)
        getChangePasswordToken,
    required TResult Function(_ResendChangePasswordToken value)
        resendChangePasswordToken,
    required TResult Function(_VerifyChangePasswordToken value)
        verifyChangePasswordToken,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return verifyChangePasswordToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult? Function(_RegisterInit value)? registerInit,
    TResult? Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult? Function(_RegisterVerif value)? registerVerif,
    TResult? Function(_RegisterConfirm value)? registerConfirm,
    TResult? Function(_AddEmail value)? addEmail,
    TResult? Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult? Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult? Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return verifyChangePasswordToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult Function(_RegisterInit value)? registerInit,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult Function(_RegisterVerif value)? registerVerif,
    TResult Function(_RegisterConfirm value)? registerConfirm,
    TResult Function(_AddEmail value)? addEmail,
    TResult Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (verifyChangePasswordToken != null) {
      return verifyChangePasswordToken(this);
    }
    return orElse();
  }
}

abstract class _VerifyChangePasswordToken implements UserEvent {
  const factory _VerifyChangePasswordToken(
      {required final String phone,
      required final String token,
      required final BuildContext context}) = _$_VerifyChangePasswordToken;

  String get phone;
  String get token;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_VerifyChangePasswordTokenCopyWith<_$_VerifyChangePasswordToken>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangePasswordCopyWith<$Res> {
  factory _$$_ChangePasswordCopyWith(
          _$_ChangePassword value, $Res Function(_$_ChangePassword) then) =
      __$$_ChangePasswordCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String phone,
      String password,
      String passwordConfirmation,
      BuildContext context});
}

/// @nodoc
class __$$_ChangePasswordCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_ChangePassword>
    implements _$$_ChangePasswordCopyWith<$Res> {
  __$$_ChangePasswordCopyWithImpl(
      _$_ChangePassword _value, $Res Function(_$_ChangePassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? password = null,
    Object? passwordConfirmation = null,
    Object? context = null,
  }) {
    return _then(_$_ChangePassword(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirmation: null == passwordConfirmation
          ? _value.passwordConfirmation
          : passwordConfirmation // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_ChangePassword implements _ChangePassword {
  const _$_ChangePassword(
      {required this.phone,
      required this.password,
      required this.passwordConfirmation,
      required this.context});

  @override
  final String phone;
  @override
  final String password;
  @override
  final String passwordConfirmation;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'UserEvent.changePassword(phone: $phone, password: $password, passwordConfirmation: $passwordConfirmation, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePassword &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, phone, password, passwordConfirmation, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePasswordCopyWith<_$_ChangePassword> get copyWith =>
      __$$_ChangePasswordCopyWithImpl<_$_ChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String phone, String password, BuildContext context)
        signIn,
    required TResult Function() signOut,
    required TResult Function() checkSignInStatus,
    required TResult Function(String phone, String name, BuildContext context)
        registerInit,
    required TResult Function(String phone, String name, BuildContext context)
        resendVerificationCode,
    required TResult Function(String phone, String code, BuildContext context)
        registerVerif,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        registerConfirm,
    required TResult Function(String email, BuildContext context) addEmail,
    required TResult Function(String phone, BuildContext context)
        getChangePasswordToken,
    required TResult Function(String phone, BuildContext context)
        resendChangePasswordToken,
    required TResult Function(String phone, String token, BuildContext context)
        verifyChangePasswordToken,
    required TResult Function(String phone, String password,
            String passwordConfirmation, BuildContext context)
        changePassword,
  }) {
    return changePassword(phone, password, passwordConfirmation, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone, String password, BuildContext context)?
        signIn,
    TResult? Function()? signOut,
    TResult? Function()? checkSignInStatus,
    TResult? Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult? Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult? Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        registerConfirm,
    TResult? Function(String email, BuildContext context)? addEmail,
    TResult? Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult? Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult? Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult? Function(String phone, String password,
            String passwordConfirmation, BuildContext context)?
        changePassword,
  }) {
    return changePassword?.call(phone, password, passwordConfirmation, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String password, BuildContext context)?
        signIn,
    TResult Function()? signOut,
    TResult Function()? checkSignInStatus,
    TResult Function(String phone, String name, BuildContext context)?
        registerInit,
    TResult Function(String phone, String name, BuildContext context)?
        resendVerificationCode,
    TResult Function(String phone, String code, BuildContext context)?
        registerVerif,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        registerConfirm,
    TResult Function(String email, BuildContext context)? addEmail,
    TResult Function(String phone, BuildContext context)?
        getChangePasswordToken,
    TResult Function(String phone, BuildContext context)?
        resendChangePasswordToken,
    TResult Function(String phone, String token, BuildContext context)?
        verifyChangePasswordToken,
    TResult Function(String phone, String password, String passwordConfirmation,
            BuildContext context)?
        changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(phone, password, passwordConfirmation, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckSignInStatus value) checkSignInStatus,
    required TResult Function(_RegisterInit value) registerInit,
    required TResult Function(_ResendVerificationCode value)
        resendVerificationCode,
    required TResult Function(_RegisterVerif value) registerVerif,
    required TResult Function(_RegisterConfirm value) registerConfirm,
    required TResult Function(_AddEmail value) addEmail,
    required TResult Function(_GetChangePasswordToken value)
        getChangePasswordToken,
    required TResult Function(_ResendChangePasswordToken value)
        resendChangePasswordToken,
    required TResult Function(_VerifyChangePasswordToken value)
        verifyChangePasswordToken,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult? Function(_RegisterInit value)? registerInit,
    TResult? Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult? Function(_RegisterVerif value)? registerVerif,
    TResult? Function(_RegisterConfirm value)? registerConfirm,
    TResult? Function(_AddEmail value)? addEmail,
    TResult? Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult? Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult? Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult Function(_RegisterInit value)? registerInit,
    TResult Function(_ResendVerificationCode value)? resendVerificationCode,
    TResult Function(_RegisterVerif value)? registerVerif,
    TResult Function(_RegisterConfirm value)? registerConfirm,
    TResult Function(_AddEmail value)? addEmail,
    TResult Function(_GetChangePasswordToken value)? getChangePasswordToken,
    TResult Function(_ResendChangePasswordToken value)?
        resendChangePasswordToken,
    TResult Function(_VerifyChangePasswordToken value)?
        verifyChangePasswordToken,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePassword implements UserEvent {
  const factory _ChangePassword(
      {required final String phone,
      required final String password,
      required final String passwordConfirmation,
      required final BuildContext context}) = _$_ChangePassword;

  String get phone;
  String get password;
  String get passwordConfirmation;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_ChangePasswordCopyWith<_$_ChangePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) signedOut,
    required TResult Function(User user) signedIn,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? signedOut,
    TResult? Function(User user)? signedIn,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? signedOut,
    TResult Function(User user)? signedIn,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SignedOutCopyWith<$Res> {
  factory _$$_SignedOutCopyWith(
          _$_SignedOut value, $Res Function(_$_SignedOut) then) =
      __$$_SignedOutCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_SignedOutCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_SignedOut>
    implements _$$_SignedOutCopyWith<$Res> {
  __$$_SignedOutCopyWithImpl(
      _$_SignedOut _value, $Res Function(_$_SignedOut) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_SignedOut(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SignedOut implements _SignedOut {
  const _$_SignedOut(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'UserState.signedOut(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignedOut &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignedOutCopyWith<_$_SignedOut> get copyWith =>
      __$$_SignedOutCopyWithImpl<_$_SignedOut>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) signedOut,
    required TResult Function(User user) signedIn,
    required TResult Function() loading,
  }) {
    return signedOut(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? signedOut,
    TResult? Function(User user)? signedIn,
    TResult? Function()? loading,
  }) {
    return signedOut?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? signedOut,
    TResult Function(User user)? signedIn,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Loading value) loading,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_Loading value)? loading,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _SignedOut implements UserState {
  const factory _SignedOut(final String? message) = _$_SignedOut;

  String? get message;
  @JsonKey(ignore: true)
  _$$_SignedOutCopyWith<_$_SignedOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignedInCopyWith<$Res> {
  factory _$$_SignedInCopyWith(
          _$_SignedIn value, $Res Function(_$_SignedIn) then) =
      __$$_SignedInCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_SignedInCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_SignedIn>
    implements _$$_SignedInCopyWith<$Res> {
  __$$_SignedInCopyWithImpl(
      _$_SignedIn _value, $Res Function(_$_SignedIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_SignedIn(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_SignedIn implements _SignedIn {
  const _$_SignedIn(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserState.signedIn(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignedIn &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignedInCopyWith<_$_SignedIn> get copyWith =>
      __$$_SignedInCopyWithImpl<_$_SignedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) signedOut,
    required TResult Function(User user) signedIn,
    required TResult Function() loading,
  }) {
    return signedIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? signedOut,
    TResult? Function(User user)? signedIn,
    TResult? Function()? loading,
  }) {
    return signedIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? signedOut,
    TResult Function(User user)? signedIn,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Loading value) loading,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_Loading value)? loading,
  }) {
    return signedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class _SignedIn implements UserState {
  const factory _SignedIn(final User user) = _$_SignedIn;

  User get user;
  @JsonKey(ignore: true)
  _$$_SignedInCopyWith<_$_SignedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) signedOut,
    required TResult Function(User user) signedIn,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? signedOut,
    TResult? Function(User user)? signedIn,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? signedOut,
    TResult Function(User user)? signedIn,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UserState {
  const factory _Loading() = _$_Loading;
}
