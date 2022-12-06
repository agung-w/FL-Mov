// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WalletEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBalance,
    required TResult Function() activate,
    required TResult Function(
            String amount, String method, BuildContext context)
        topUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBalance,
    TResult? Function()? activate,
    TResult? Function(String amount, String method, BuildContext context)?
        topUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBalance,
    TResult Function()? activate,
    TResult Function(String amount, String method, BuildContext context)? topUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBalance value) getBalance,
    required TResult Function(_Activate value) activate,
    required TResult Function(_TopUp value) topUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBalance value)? getBalance,
    TResult? Function(_Activate value)? activate,
    TResult? Function(_TopUp value)? topUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBalance value)? getBalance,
    TResult Function(_Activate value)? activate,
    TResult Function(_TopUp value)? topUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletEventCopyWith<$Res> {
  factory $WalletEventCopyWith(
          WalletEvent value, $Res Function(WalletEvent) then) =
      _$WalletEventCopyWithImpl<$Res, WalletEvent>;
}

/// @nodoc
class _$WalletEventCopyWithImpl<$Res, $Val extends WalletEvent>
    implements $WalletEventCopyWith<$Res> {
  _$WalletEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetBalanceCopyWith<$Res> {
  factory _$$_GetBalanceCopyWith(
          _$_GetBalance value, $Res Function(_$_GetBalance) then) =
      __$$_GetBalanceCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetBalanceCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$_GetBalance>
    implements _$$_GetBalanceCopyWith<$Res> {
  __$$_GetBalanceCopyWithImpl(
      _$_GetBalance _value, $Res Function(_$_GetBalance) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetBalance implements _GetBalance {
  const _$_GetBalance();

  @override
  String toString() {
    return 'WalletEvent.getBalance()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetBalance);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBalance,
    required TResult Function() activate,
    required TResult Function(
            String amount, String method, BuildContext context)
        topUp,
  }) {
    return getBalance();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBalance,
    TResult? Function()? activate,
    TResult? Function(String amount, String method, BuildContext context)?
        topUp,
  }) {
    return getBalance?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBalance,
    TResult Function()? activate,
    TResult Function(String amount, String method, BuildContext context)? topUp,
    required TResult orElse(),
  }) {
    if (getBalance != null) {
      return getBalance();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBalance value) getBalance,
    required TResult Function(_Activate value) activate,
    required TResult Function(_TopUp value) topUp,
  }) {
    return getBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBalance value)? getBalance,
    TResult? Function(_Activate value)? activate,
    TResult? Function(_TopUp value)? topUp,
  }) {
    return getBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBalance value)? getBalance,
    TResult Function(_Activate value)? activate,
    TResult Function(_TopUp value)? topUp,
    required TResult orElse(),
  }) {
    if (getBalance != null) {
      return getBalance(this);
    }
    return orElse();
  }
}

abstract class _GetBalance implements WalletEvent {
  const factory _GetBalance() = _$_GetBalance;
}

/// @nodoc
abstract class _$$_ActivateCopyWith<$Res> {
  factory _$$_ActivateCopyWith(
          _$_Activate value, $Res Function(_$_Activate) then) =
      __$$_ActivateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ActivateCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$_Activate>
    implements _$$_ActivateCopyWith<$Res> {
  __$$_ActivateCopyWithImpl(
      _$_Activate _value, $Res Function(_$_Activate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Activate implements _Activate {
  const _$_Activate();

  @override
  String toString() {
    return 'WalletEvent.activate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Activate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBalance,
    required TResult Function() activate,
    required TResult Function(
            String amount, String method, BuildContext context)
        topUp,
  }) {
    return activate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBalance,
    TResult? Function()? activate,
    TResult? Function(String amount, String method, BuildContext context)?
        topUp,
  }) {
    return activate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBalance,
    TResult Function()? activate,
    TResult Function(String amount, String method, BuildContext context)? topUp,
    required TResult orElse(),
  }) {
    if (activate != null) {
      return activate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBalance value) getBalance,
    required TResult Function(_Activate value) activate,
    required TResult Function(_TopUp value) topUp,
  }) {
    return activate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBalance value)? getBalance,
    TResult? Function(_Activate value)? activate,
    TResult? Function(_TopUp value)? topUp,
  }) {
    return activate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBalance value)? getBalance,
    TResult Function(_Activate value)? activate,
    TResult Function(_TopUp value)? topUp,
    required TResult orElse(),
  }) {
    if (activate != null) {
      return activate(this);
    }
    return orElse();
  }
}

abstract class _Activate implements WalletEvent {
  const factory _Activate() = _$_Activate;
}

/// @nodoc
abstract class _$$_TopUpCopyWith<$Res> {
  factory _$$_TopUpCopyWith(_$_TopUp value, $Res Function(_$_TopUp) then) =
      __$$_TopUpCopyWithImpl<$Res>;
  @useResult
  $Res call({String amount, String method, BuildContext context});
}

/// @nodoc
class __$$_TopUpCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$_TopUp>
    implements _$$_TopUpCopyWith<$Res> {
  __$$_TopUpCopyWithImpl(_$_TopUp _value, $Res Function(_$_TopUp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? method = null,
    Object? context = null,
  }) {
    return _then(_$_TopUp(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_TopUp implements _TopUp {
  const _$_TopUp(this.amount, this.method, this.context);

  @override
  final String amount;
  @override
  final String method;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'WalletEvent.topUp(amount: $amount, method: $method, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopUp &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount, method, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopUpCopyWith<_$_TopUp> get copyWith =>
      __$$_TopUpCopyWithImpl<_$_TopUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBalance,
    required TResult Function() activate,
    required TResult Function(
            String amount, String method, BuildContext context)
        topUp,
  }) {
    return topUp(amount, method, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBalance,
    TResult? Function()? activate,
    TResult? Function(String amount, String method, BuildContext context)?
        topUp,
  }) {
    return topUp?.call(amount, method, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBalance,
    TResult Function()? activate,
    TResult Function(String amount, String method, BuildContext context)? topUp,
    required TResult orElse(),
  }) {
    if (topUp != null) {
      return topUp(amount, method, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBalance value) getBalance,
    required TResult Function(_Activate value) activate,
    required TResult Function(_TopUp value) topUp,
  }) {
    return topUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBalance value)? getBalance,
    TResult? Function(_Activate value)? activate,
    TResult? Function(_TopUp value)? topUp,
  }) {
    return topUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBalance value)? getBalance,
    TResult Function(_Activate value)? activate,
    TResult Function(_TopUp value)? topUp,
    required TResult orElse(),
  }) {
    if (topUp != null) {
      return topUp(this);
    }
    return orElse();
  }
}

abstract class _TopUp implements WalletEvent {
  const factory _TopUp(final String amount, final String method,
      final BuildContext context) = _$_TopUp;

  String get amount;
  String get method;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_TopUpCopyWith<_$_TopUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WalletState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ApiResult<String> result) loaded,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ApiResult<String> result)? loaded,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ApiResult<String> result)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStateCopyWith<$Res> {
  factory $WalletStateCopyWith(
          WalletState value, $Res Function(WalletState) then) =
      _$WalletStateCopyWithImpl<$Res, WalletState>;
}

/// @nodoc
class _$WalletStateCopyWithImpl<$Res, $Val extends WalletState>
    implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'WalletState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ApiResult<String> result) loaded,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ApiResult<String> result)? loaded,
    TResult? Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ApiResult<String> result)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WalletState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiResult<String> result});

  $ApiResultCopyWith<String, $Res> get result;
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$_Loaded(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ApiResult<String>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiResultCopyWith<String, $Res> get result {
    return $ApiResultCopyWith<String, $Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.result);

  @override
  final ApiResult<String> result;

  @override
  String toString() {
    return 'WalletState.loaded(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ApiResult<String> result) loaded,
    required TResult Function() loading,
  }) {
    return loaded(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ApiResult<String> result)? loaded,
    TResult? Function()? loading,
  }) {
    return loaded?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ApiResult<String> result)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements WalletState {
  const factory _Loaded(final ApiResult<String> result) = _$_Loaded;

  ApiResult<String> get result;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
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
    extends _$WalletStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'WalletState.loading()';
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
    required TResult Function() initial,
    required TResult Function(ApiResult<String> result) loaded,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ApiResult<String> result)? loaded,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ApiResult<String> result)? loaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements WalletState {
  const factory _Loading() = _$_Loading;
}
