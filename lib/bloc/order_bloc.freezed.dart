// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Movie movie) selectMovie,
    required TResult Function(String date) selectDate,
    required TResult Function(
            String time, Cinema cinema, Studio studio, BuildContext context)
        selectTime,
    required TResult Function() order,
    required TResult Function(int orderId) payOrder,
    required TResult Function() cancel,
    required TResult Function() cancelTime,
    required TResult Function() cancelOrderPay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Movie movie)? selectMovie,
    TResult? Function(String date)? selectDate,
    TResult? Function(
            String time, Cinema cinema, Studio studio, BuildContext context)?
        selectTime,
    TResult? Function()? order,
    TResult? Function(int orderId)? payOrder,
    TResult? Function()? cancel,
    TResult? Function()? cancelTime,
    TResult? Function()? cancelOrderPay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Movie movie)? selectMovie,
    TResult Function(String date)? selectDate,
    TResult Function(
            String time, Cinema cinema, Studio studio, BuildContext context)?
        selectTime,
    TResult Function()? order,
    TResult Function(int orderId)? payOrder,
    TResult Function()? cancel,
    TResult Function()? cancelTime,
    TResult Function()? cancelOrderPay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectMovie value) selectMovie,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_SelectTime value) selectTime,
    required TResult Function(_Order value) order,
    required TResult Function(_PayOrder value) payOrder,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_CancelTime value) cancelTime,
    required TResult Function(_CancelOrderPay value) cancelOrderPay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectMovie value)? selectMovie,
    TResult? Function(_SelectDate value)? selectDate,
    TResult? Function(_SelectTime value)? selectTime,
    TResult? Function(_Order value)? order,
    TResult? Function(_PayOrder value)? payOrder,
    TResult? Function(_Cancel value)? cancel,
    TResult? Function(_CancelTime value)? cancelTime,
    TResult? Function(_CancelOrderPay value)? cancelOrderPay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectMovie value)? selectMovie,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_SelectTime value)? selectTime,
    TResult Function(_Order value)? order,
    TResult Function(_PayOrder value)? payOrder,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_CancelTime value)? cancelTime,
    TResult Function(_CancelOrderPay value)? cancelOrderPay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'OrderEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Movie movie) selectMovie,
    required TResult Function(String date) selectDate,
    required TResult Function(
            String time, Cinema cinema, Studio studio, BuildContext context)
        selectTime,
    required TResult Function() order,
    required TResult Function(int orderId) payOrder,
    required TResult Function() cancel,
    required TResult Function() cancelTime,
    required TResult Function() cancelOrderPay,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Movie movie)? selectMovie,
    TResult? Function(String date)? selectDate,
    TResult? Function(
            String time, Cinema cinema, Studio studio, BuildContext context)?
        selectTime,
    TResult? Function()? order,
    TResult? Function(int orderId)? payOrder,
    TResult? Function()? cancel,
    TResult? Function()? cancelTime,
    TResult? Function()? cancelOrderPay,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Movie movie)? selectMovie,
    TResult Function(String date)? selectDate,
    TResult Function(
            String time, Cinema cinema, Studio studio, BuildContext context)?
        selectTime,
    TResult Function()? order,
    TResult Function(int orderId)? payOrder,
    TResult Function()? cancel,
    TResult Function()? cancelTime,
    TResult Function()? cancelOrderPay,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectMovie value) selectMovie,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_SelectTime value) selectTime,
    required TResult Function(_Order value) order,
    required TResult Function(_PayOrder value) payOrder,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_CancelTime value) cancelTime,
    required TResult Function(_CancelOrderPay value) cancelOrderPay,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectMovie value)? selectMovie,
    TResult? Function(_SelectDate value)? selectDate,
    TResult? Function(_SelectTime value)? selectTime,
    TResult? Function(_Order value)? order,
    TResult? Function(_PayOrder value)? payOrder,
    TResult? Function(_Cancel value)? cancel,
    TResult? Function(_CancelTime value)? cancelTime,
    TResult? Function(_CancelOrderPay value)? cancelOrderPay,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectMovie value)? selectMovie,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_SelectTime value)? selectTime,
    TResult Function(_Order value)? order,
    TResult Function(_PayOrder value)? payOrder,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_CancelTime value)? cancelTime,
    TResult Function(_CancelOrderPay value)? cancelOrderPay,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OrderEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_SelectMovieCopyWith<$Res> {
  factory _$$_SelectMovieCopyWith(
          _$_SelectMovie value, $Res Function(_$_SelectMovie) then) =
      __$$_SelectMovieCopyWithImpl<$Res>;
  @useResult
  $Res call({Movie movie});

  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class __$$_SelectMovieCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$_SelectMovie>
    implements _$$_SelectMovieCopyWith<$Res> {
  __$$_SelectMovieCopyWithImpl(
      _$_SelectMovie _value, $Res Function(_$_SelectMovie) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
  }) {
    return _then(_$_SelectMovie(
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieCopyWith<$Res> get movie {
    return $MovieCopyWith<$Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value));
    });
  }
}

/// @nodoc

class _$_SelectMovie implements _SelectMovie {
  const _$_SelectMovie({required this.movie});

  @override
  final Movie movie;

  @override
  String toString() {
    return 'OrderEvent.selectMovie(movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectMovie &&
            (identical(other.movie, movie) || other.movie == movie));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectMovieCopyWith<_$_SelectMovie> get copyWith =>
      __$$_SelectMovieCopyWithImpl<_$_SelectMovie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Movie movie) selectMovie,
    required TResult Function(String date) selectDate,
    required TResult Function(
            String time, Cinema cinema, Studio studio, BuildContext context)
        selectTime,
    required TResult Function() order,
    required TResult Function(int orderId) payOrder,
    required TResult Function() cancel,
    required TResult Function() cancelTime,
    required TResult Function() cancelOrderPay,
  }) {
    return selectMovie(movie);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Movie movie)? selectMovie,
    TResult? Function(String date)? selectDate,
    TResult? Function(
            String time, Cinema cinema, Studio studio, BuildContext context)?
        selectTime,
    TResult? Function()? order,
    TResult? Function(int orderId)? payOrder,
    TResult? Function()? cancel,
    TResult? Function()? cancelTime,
    TResult? Function()? cancelOrderPay,
  }) {
    return selectMovie?.call(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Movie movie)? selectMovie,
    TResult Function(String date)? selectDate,
    TResult Function(
            String time, Cinema cinema, Studio studio, BuildContext context)?
        selectTime,
    TResult Function()? order,
    TResult Function(int orderId)? payOrder,
    TResult Function()? cancel,
    TResult Function()? cancelTime,
    TResult Function()? cancelOrderPay,
    required TResult orElse(),
  }) {
    if (selectMovie != null) {
      return selectMovie(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectMovie value) selectMovie,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_SelectTime value) selectTime,
    required TResult Function(_Order value) order,
    required TResult Function(_PayOrder value) payOrder,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_CancelTime value) cancelTime,
    required TResult Function(_CancelOrderPay value) cancelOrderPay,
  }) {
    return selectMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectMovie value)? selectMovie,
    TResult? Function(_SelectDate value)? selectDate,
    TResult? Function(_SelectTime value)? selectTime,
    TResult? Function(_Order value)? order,
    TResult? Function(_PayOrder value)? payOrder,
    TResult? Function(_Cancel value)? cancel,
    TResult? Function(_CancelTime value)? cancelTime,
    TResult? Function(_CancelOrderPay value)? cancelOrderPay,
  }) {
    return selectMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectMovie value)? selectMovie,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_SelectTime value)? selectTime,
    TResult Function(_Order value)? order,
    TResult Function(_PayOrder value)? payOrder,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_CancelTime value)? cancelTime,
    TResult Function(_CancelOrderPay value)? cancelOrderPay,
    required TResult orElse(),
  }) {
    if (selectMovie != null) {
      return selectMovie(this);
    }
    return orElse();
  }
}

abstract class _SelectMovie implements OrderEvent {
  const factory _SelectMovie({required final Movie movie}) = _$_SelectMovie;

  Movie get movie;
  @JsonKey(ignore: true)
  _$$_SelectMovieCopyWith<_$_SelectMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectDateCopyWith<$Res> {
  factory _$$_SelectDateCopyWith(
          _$_SelectDate value, $Res Function(_$_SelectDate) then) =
      __$$_SelectDateCopyWithImpl<$Res>;
  @useResult
  $Res call({String date});
}

/// @nodoc
class __$$_SelectDateCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$_SelectDate>
    implements _$$_SelectDateCopyWith<$Res> {
  __$$_SelectDateCopyWithImpl(
      _$_SelectDate _value, $Res Function(_$_SelectDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$_SelectDate(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectDate implements _SelectDate {
  const _$_SelectDate({required this.date});

  @override
  final String date;

  @override
  String toString() {
    return 'OrderEvent.selectDate(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectDate &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectDateCopyWith<_$_SelectDate> get copyWith =>
      __$$_SelectDateCopyWithImpl<_$_SelectDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Movie movie) selectMovie,
    required TResult Function(String date) selectDate,
    required TResult Function(
            String time, Cinema cinema, Studio studio, BuildContext context)
        selectTime,
    required TResult Function() order,
    required TResult Function(int orderId) payOrder,
    required TResult Function() cancel,
    required TResult Function() cancelTime,
    required TResult Function() cancelOrderPay,
  }) {
    return selectDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Movie movie)? selectMovie,
    TResult? Function(String date)? selectDate,
    TResult? Function(
            String time, Cinema cinema, Studio studio, BuildContext context)?
        selectTime,
    TResult? Function()? order,
    TResult? Function(int orderId)? payOrder,
    TResult? Function()? cancel,
    TResult? Function()? cancelTime,
    TResult? Function()? cancelOrderPay,
  }) {
    return selectDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Movie movie)? selectMovie,
    TResult Function(String date)? selectDate,
    TResult Function(
            String time, Cinema cinema, Studio studio, BuildContext context)?
        selectTime,
    TResult Function()? order,
    TResult Function(int orderId)? payOrder,
    TResult Function()? cancel,
    TResult Function()? cancelTime,
    TResult Function()? cancelOrderPay,
    required TResult orElse(),
  }) {
    if (selectDate != null) {
      return selectDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectMovie value) selectMovie,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_SelectTime value) selectTime,
    required TResult Function(_Order value) order,
    required TResult Function(_PayOrder value) payOrder,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_CancelTime value) cancelTime,
    required TResult Function(_CancelOrderPay value) cancelOrderPay,
  }) {
    return selectDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectMovie value)? selectMovie,
    TResult? Function(_SelectDate value)? selectDate,
    TResult? Function(_SelectTime value)? selectTime,
    TResult? Function(_Order value)? order,
    TResult? Function(_PayOrder value)? payOrder,
    TResult? Function(_Cancel value)? cancel,
    TResult? Function(_CancelTime value)? cancelTime,
    TResult? Function(_CancelOrderPay value)? cancelOrderPay,
  }) {
    return selectDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectMovie value)? selectMovie,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_SelectTime value)? selectTime,
    TResult Function(_Order value)? order,
    TResult Function(_PayOrder value)? payOrder,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_CancelTime value)? cancelTime,
    TResult Function(_CancelOrderPay value)? cancelOrderPay,
    required TResult orElse(),
  }) {
    if (selectDate != null) {
      return selectDate(this);
    }
    return orElse();
  }
}

abstract class _SelectDate implements OrderEvent {
  const factory _SelectDate({required final String date}) = _$_SelectDate;

  String get date;
  @JsonKey(ignore: true)
  _$$_SelectDateCopyWith<_$_SelectDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectTimeCopyWith<$Res> {
  factory _$$_SelectTimeCopyWith(
          _$_SelectTime value, $Res Function(_$_SelectTime) then) =
      __$$_SelectTimeCopyWithImpl<$Res>;
  @useResult
  $Res call({String time, Cinema cinema, Studio studio, BuildContext context});

  $CinemaCopyWith<$Res> get cinema;
  $StudioCopyWith<$Res> get studio;
}

/// @nodoc
class __$$_SelectTimeCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$_SelectTime>
    implements _$$_SelectTimeCopyWith<$Res> {
  __$$_SelectTimeCopyWithImpl(
      _$_SelectTime _value, $Res Function(_$_SelectTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? cinema = null,
    Object? studio = null,
    Object? context = null,
  }) {
    return _then(_$_SelectTime(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      cinema: null == cinema
          ? _value.cinema
          : cinema // ignore: cast_nullable_to_non_nullable
              as Cinema,
      studio: null == studio
          ? _value.studio
          : studio // ignore: cast_nullable_to_non_nullable
              as Studio,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CinemaCopyWith<$Res> get cinema {
    return $CinemaCopyWith<$Res>(_value.cinema, (value) {
      return _then(_value.copyWith(cinema: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StudioCopyWith<$Res> get studio {
    return $StudioCopyWith<$Res>(_value.studio, (value) {
      return _then(_value.copyWith(studio: value));
    });
  }
}

/// @nodoc

class _$_SelectTime implements _SelectTime {
  const _$_SelectTime(
      {required this.time,
      required this.cinema,
      required this.studio,
      required this.context});

  @override
  final String time;
  @override
  final Cinema cinema;
  @override
  final Studio studio;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'OrderEvent.selectTime(time: $time, cinema: $cinema, studio: $studio, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectTime &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.cinema, cinema) || other.cinema == cinema) &&
            (identical(other.studio, studio) || other.studio == studio) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time, cinema, studio, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectTimeCopyWith<_$_SelectTime> get copyWith =>
      __$$_SelectTimeCopyWithImpl<_$_SelectTime>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Movie movie) selectMovie,
    required TResult Function(String date) selectDate,
    required TResult Function(
            String time, Cinema cinema, Studio studio, BuildContext context)
        selectTime,
    required TResult Function() order,
    required TResult Function(int orderId) payOrder,
    required TResult Function() cancel,
    required TResult Function() cancelTime,
    required TResult Function() cancelOrderPay,
  }) {
    return selectTime(time, cinema, studio, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Movie movie)? selectMovie,
    TResult? Function(String date)? selectDate,
    TResult? Function(
            String time, Cinema cinema, Studio studio, BuildContext context)?
        selectTime,
    TResult? Function()? order,
    TResult? Function(int orderId)? payOrder,
    TResult? Function()? cancel,
    TResult? Function()? cancelTime,
    TResult? Function()? cancelOrderPay,
  }) {
    return selectTime?.call(time, cinema, studio, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Movie movie)? selectMovie,
    TResult Function(String date)? selectDate,
    TResult Function(
            String time, Cinema cinema, Studio studio, BuildContext context)?
        selectTime,
    TResult Function()? order,
    TResult Function(int orderId)? payOrder,
    TResult Function()? cancel,
    TResult Function()? cancelTime,
    TResult Function()? cancelOrderPay,
    required TResult orElse(),
  }) {
    if (selectTime != null) {
      return selectTime(time, cinema, studio, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectMovie value) selectMovie,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_SelectTime value) selectTime,
    required TResult Function(_Order value) order,
    required TResult Function(_PayOrder value) payOrder,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_CancelTime value) cancelTime,
    required TResult Function(_CancelOrderPay value) cancelOrderPay,
  }) {
    return selectTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectMovie value)? selectMovie,
    TResult? Function(_SelectDate value)? selectDate,
    TResult? Function(_SelectTime value)? selectTime,
    TResult? Function(_Order value)? order,
    TResult? Function(_PayOrder value)? payOrder,
    TResult? Function(_Cancel value)? cancel,
    TResult? Function(_CancelTime value)? cancelTime,
    TResult? Function(_CancelOrderPay value)? cancelOrderPay,
  }) {
    return selectTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectMovie value)? selectMovie,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_SelectTime value)? selectTime,
    TResult Function(_Order value)? order,
    TResult Function(_PayOrder value)? payOrder,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_CancelTime value)? cancelTime,
    TResult Function(_CancelOrderPay value)? cancelOrderPay,
    required TResult orElse(),
  }) {
    if (selectTime != null) {
      return selectTime(this);
    }
    return orElse();
  }
}

abstract class _SelectTime implements OrderEvent {
  const factory _SelectTime(
      {required final String time,
      required final Cinema cinema,
      required final Studio studio,
      required final BuildContext context}) = _$_SelectTime;

  String get time;
  Cinema get cinema;
  Studio get studio;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_SelectTimeCopyWith<_$_SelectTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$_Order>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Order implements _Order {
  const _$_Order();

  @override
  String toString() {
    return 'OrderEvent.order()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Order);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Movie movie) selectMovie,
    required TResult Function(String date) selectDate,
    required TResult Function(
            String time, Cinema cinema, Studio studio, BuildContext context)
        selectTime,
    required TResult Function() order,
    required TResult Function(int orderId) payOrder,
    required TResult Function() cancel,
    required TResult Function() cancelTime,
    required TResult Function() cancelOrderPay,
  }) {
    return order();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Movie movie)? selectMovie,
    TResult? Function(String date)? selectDate,
    TResult? Function(
            String time, Cinema cinema, Studio studio, BuildContext context)?
        selectTime,
    TResult? Function()? order,
    TResult? Function(int orderId)? payOrder,
    TResult? Function()? cancel,
    TResult? Function()? cancelTime,
    TResult? Function()? cancelOrderPay,
  }) {
    return order?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Movie movie)? selectMovie,
    TResult Function(String date)? selectDate,
    TResult Function(
            String time, Cinema cinema, Studio studio, BuildContext context)?
        selectTime,
    TResult Function()? order,
    TResult Function(int orderId)? payOrder,
    TResult Function()? cancel,
    TResult Function()? cancelTime,
    TResult Function()? cancelOrderPay,
    required TResult orElse(),
  }) {
    if (order != null) {
      return order();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectMovie value) selectMovie,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_SelectTime value) selectTime,
    required TResult Function(_Order value) order,
    required TResult Function(_PayOrder value) payOrder,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_CancelTime value) cancelTime,
    required TResult Function(_CancelOrderPay value) cancelOrderPay,
  }) {
    return order(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectMovie value)? selectMovie,
    TResult? Function(_SelectDate value)? selectDate,
    TResult? Function(_SelectTime value)? selectTime,
    TResult? Function(_Order value)? order,
    TResult? Function(_PayOrder value)? payOrder,
    TResult? Function(_Cancel value)? cancel,
    TResult? Function(_CancelTime value)? cancelTime,
    TResult? Function(_CancelOrderPay value)? cancelOrderPay,
  }) {
    return order?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectMovie value)? selectMovie,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_SelectTime value)? selectTime,
    TResult Function(_Order value)? order,
    TResult Function(_PayOrder value)? payOrder,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_CancelTime value)? cancelTime,
    TResult Function(_CancelOrderPay value)? cancelOrderPay,
    required TResult orElse(),
  }) {
    if (order != null) {
      return order(this);
    }
    return orElse();
  }
}

abstract class _Order implements OrderEvent {
  const factory _Order() = _$_Order;
}

/// @nodoc
abstract class _$$_PayOrderCopyWith<$Res> {
  factory _$$_PayOrderCopyWith(
          _$_PayOrder value, $Res Function(_$_PayOrder) then) =
      __$$_PayOrderCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId});
}

/// @nodoc
class __$$_PayOrderCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$_PayOrder>
    implements _$$_PayOrderCopyWith<$Res> {
  __$$_PayOrderCopyWithImpl(
      _$_PayOrder _value, $Res Function(_$_PayOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$_PayOrder(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PayOrder implements _PayOrder {
  const _$_PayOrder({required this.orderId});

  @override
  final int orderId;

  @override
  String toString() {
    return 'OrderEvent.payOrder(orderId: $orderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PayOrder &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PayOrderCopyWith<_$_PayOrder> get copyWith =>
      __$$_PayOrderCopyWithImpl<_$_PayOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Movie movie) selectMovie,
    required TResult Function(String date) selectDate,
    required TResult Function(
            String time, Cinema cinema, Studio studio, BuildContext context)
        selectTime,
    required TResult Function() order,
    required TResult Function(int orderId) payOrder,
    required TResult Function() cancel,
    required TResult Function() cancelTime,
    required TResult Function() cancelOrderPay,
  }) {
    return payOrder(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Movie movie)? selectMovie,
    TResult? Function(String date)? selectDate,
    TResult? Function(
            String time, Cinema cinema, Studio studio, BuildContext context)?
        selectTime,
    TResult? Function()? order,
    TResult? Function(int orderId)? payOrder,
    TResult? Function()? cancel,
    TResult? Function()? cancelTime,
    TResult? Function()? cancelOrderPay,
  }) {
    return payOrder?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Movie movie)? selectMovie,
    TResult Function(String date)? selectDate,
    TResult Function(
            String time, Cinema cinema, Studio studio, BuildContext context)?
        selectTime,
    TResult Function()? order,
    TResult Function(int orderId)? payOrder,
    TResult Function()? cancel,
    TResult Function()? cancelTime,
    TResult Function()? cancelOrderPay,
    required TResult orElse(),
  }) {
    if (payOrder != null) {
      return payOrder(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectMovie value) selectMovie,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_SelectTime value) selectTime,
    required TResult Function(_Order value) order,
    required TResult Function(_PayOrder value) payOrder,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_CancelTime value) cancelTime,
    required TResult Function(_CancelOrderPay value) cancelOrderPay,
  }) {
    return payOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectMovie value)? selectMovie,
    TResult? Function(_SelectDate value)? selectDate,
    TResult? Function(_SelectTime value)? selectTime,
    TResult? Function(_Order value)? order,
    TResult? Function(_PayOrder value)? payOrder,
    TResult? Function(_Cancel value)? cancel,
    TResult? Function(_CancelTime value)? cancelTime,
    TResult? Function(_CancelOrderPay value)? cancelOrderPay,
  }) {
    return payOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectMovie value)? selectMovie,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_SelectTime value)? selectTime,
    TResult Function(_Order value)? order,
    TResult Function(_PayOrder value)? payOrder,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_CancelTime value)? cancelTime,
    TResult Function(_CancelOrderPay value)? cancelOrderPay,
    required TResult orElse(),
  }) {
    if (payOrder != null) {
      return payOrder(this);
    }
    return orElse();
  }
}

abstract class _PayOrder implements OrderEvent {
  const factory _PayOrder({required final int orderId}) = _$_PayOrder;

  int get orderId;
  @JsonKey(ignore: true)
  _$$_PayOrderCopyWith<_$_PayOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CancelCopyWith<$Res> {
  factory _$$_CancelCopyWith(_$_Cancel value, $Res Function(_$_Cancel) then) =
      __$$_CancelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CancelCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$_Cancel>
    implements _$$_CancelCopyWith<$Res> {
  __$$_CancelCopyWithImpl(_$_Cancel _value, $Res Function(_$_Cancel) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Cancel implements _Cancel {
  const _$_Cancel();

  @override
  String toString() {
    return 'OrderEvent.cancel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Cancel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Movie movie) selectMovie,
    required TResult Function(String date) selectDate,
    required TResult Function(
            String time, Cinema cinema, Studio studio, BuildContext context)
        selectTime,
    required TResult Function() order,
    required TResult Function(int orderId) payOrder,
    required TResult Function() cancel,
    required TResult Function() cancelTime,
    required TResult Function() cancelOrderPay,
  }) {
    return cancel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Movie movie)? selectMovie,
    TResult? Function(String date)? selectDate,
    TResult? Function(
            String time, Cinema cinema, Studio studio, BuildContext context)?
        selectTime,
    TResult? Function()? order,
    TResult? Function(int orderId)? payOrder,
    TResult? Function()? cancel,
    TResult? Function()? cancelTime,
    TResult? Function()? cancelOrderPay,
  }) {
    return cancel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Movie movie)? selectMovie,
    TResult Function(String date)? selectDate,
    TResult Function(
            String time, Cinema cinema, Studio studio, BuildContext context)?
        selectTime,
    TResult Function()? order,
    TResult Function(int orderId)? payOrder,
    TResult Function()? cancel,
    TResult Function()? cancelTime,
    TResult Function()? cancelOrderPay,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectMovie value) selectMovie,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_SelectTime value) selectTime,
    required TResult Function(_Order value) order,
    required TResult Function(_PayOrder value) payOrder,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_CancelTime value) cancelTime,
    required TResult Function(_CancelOrderPay value) cancelOrderPay,
  }) {
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectMovie value)? selectMovie,
    TResult? Function(_SelectDate value)? selectDate,
    TResult? Function(_SelectTime value)? selectTime,
    TResult? Function(_Order value)? order,
    TResult? Function(_PayOrder value)? payOrder,
    TResult? Function(_Cancel value)? cancel,
    TResult? Function(_CancelTime value)? cancelTime,
    TResult? Function(_CancelOrderPay value)? cancelOrderPay,
  }) {
    return cancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectMovie value)? selectMovie,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_SelectTime value)? selectTime,
    TResult Function(_Order value)? order,
    TResult Function(_PayOrder value)? payOrder,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_CancelTime value)? cancelTime,
    TResult Function(_CancelOrderPay value)? cancelOrderPay,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(this);
    }
    return orElse();
  }
}

abstract class _Cancel implements OrderEvent {
  const factory _Cancel() = _$_Cancel;
}

/// @nodoc
abstract class _$$_CancelTimeCopyWith<$Res> {
  factory _$$_CancelTimeCopyWith(
          _$_CancelTime value, $Res Function(_$_CancelTime) then) =
      __$$_CancelTimeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CancelTimeCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$_CancelTime>
    implements _$$_CancelTimeCopyWith<$Res> {
  __$$_CancelTimeCopyWithImpl(
      _$_CancelTime _value, $Res Function(_$_CancelTime) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CancelTime implements _CancelTime {
  const _$_CancelTime();

  @override
  String toString() {
    return 'OrderEvent.cancelTime()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CancelTime);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Movie movie) selectMovie,
    required TResult Function(String date) selectDate,
    required TResult Function(
            String time, Cinema cinema, Studio studio, BuildContext context)
        selectTime,
    required TResult Function() order,
    required TResult Function(int orderId) payOrder,
    required TResult Function() cancel,
    required TResult Function() cancelTime,
    required TResult Function() cancelOrderPay,
  }) {
    return cancelTime();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Movie movie)? selectMovie,
    TResult? Function(String date)? selectDate,
    TResult? Function(
            String time, Cinema cinema, Studio studio, BuildContext context)?
        selectTime,
    TResult? Function()? order,
    TResult? Function(int orderId)? payOrder,
    TResult? Function()? cancel,
    TResult? Function()? cancelTime,
    TResult? Function()? cancelOrderPay,
  }) {
    return cancelTime?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Movie movie)? selectMovie,
    TResult Function(String date)? selectDate,
    TResult Function(
            String time, Cinema cinema, Studio studio, BuildContext context)?
        selectTime,
    TResult Function()? order,
    TResult Function(int orderId)? payOrder,
    TResult Function()? cancel,
    TResult Function()? cancelTime,
    TResult Function()? cancelOrderPay,
    required TResult orElse(),
  }) {
    if (cancelTime != null) {
      return cancelTime();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectMovie value) selectMovie,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_SelectTime value) selectTime,
    required TResult Function(_Order value) order,
    required TResult Function(_PayOrder value) payOrder,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_CancelTime value) cancelTime,
    required TResult Function(_CancelOrderPay value) cancelOrderPay,
  }) {
    return cancelTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectMovie value)? selectMovie,
    TResult? Function(_SelectDate value)? selectDate,
    TResult? Function(_SelectTime value)? selectTime,
    TResult? Function(_Order value)? order,
    TResult? Function(_PayOrder value)? payOrder,
    TResult? Function(_Cancel value)? cancel,
    TResult? Function(_CancelTime value)? cancelTime,
    TResult? Function(_CancelOrderPay value)? cancelOrderPay,
  }) {
    return cancelTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectMovie value)? selectMovie,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_SelectTime value)? selectTime,
    TResult Function(_Order value)? order,
    TResult Function(_PayOrder value)? payOrder,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_CancelTime value)? cancelTime,
    TResult Function(_CancelOrderPay value)? cancelOrderPay,
    required TResult orElse(),
  }) {
    if (cancelTime != null) {
      return cancelTime(this);
    }
    return orElse();
  }
}

abstract class _CancelTime implements OrderEvent {
  const factory _CancelTime() = _$_CancelTime;
}

/// @nodoc
abstract class _$$_CancelOrderPayCopyWith<$Res> {
  factory _$$_CancelOrderPayCopyWith(
          _$_CancelOrderPay value, $Res Function(_$_CancelOrderPay) then) =
      __$$_CancelOrderPayCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CancelOrderPayCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$_CancelOrderPay>
    implements _$$_CancelOrderPayCopyWith<$Res> {
  __$$_CancelOrderPayCopyWithImpl(
      _$_CancelOrderPay _value, $Res Function(_$_CancelOrderPay) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CancelOrderPay implements _CancelOrderPay {
  const _$_CancelOrderPay();

  @override
  String toString() {
    return 'OrderEvent.cancelOrderPay()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CancelOrderPay);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Movie movie) selectMovie,
    required TResult Function(String date) selectDate,
    required TResult Function(
            String time, Cinema cinema, Studio studio, BuildContext context)
        selectTime,
    required TResult Function() order,
    required TResult Function(int orderId) payOrder,
    required TResult Function() cancel,
    required TResult Function() cancelTime,
    required TResult Function() cancelOrderPay,
  }) {
    return cancelOrderPay();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Movie movie)? selectMovie,
    TResult? Function(String date)? selectDate,
    TResult? Function(
            String time, Cinema cinema, Studio studio, BuildContext context)?
        selectTime,
    TResult? Function()? order,
    TResult? Function(int orderId)? payOrder,
    TResult? Function()? cancel,
    TResult? Function()? cancelTime,
    TResult? Function()? cancelOrderPay,
  }) {
    return cancelOrderPay?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Movie movie)? selectMovie,
    TResult Function(String date)? selectDate,
    TResult Function(
            String time, Cinema cinema, Studio studio, BuildContext context)?
        selectTime,
    TResult Function()? order,
    TResult Function(int orderId)? payOrder,
    TResult Function()? cancel,
    TResult Function()? cancelTime,
    TResult Function()? cancelOrderPay,
    required TResult orElse(),
  }) {
    if (cancelOrderPay != null) {
      return cancelOrderPay();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectMovie value) selectMovie,
    required TResult Function(_SelectDate value) selectDate,
    required TResult Function(_SelectTime value) selectTime,
    required TResult Function(_Order value) order,
    required TResult Function(_PayOrder value) payOrder,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_CancelTime value) cancelTime,
    required TResult Function(_CancelOrderPay value) cancelOrderPay,
  }) {
    return cancelOrderPay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectMovie value)? selectMovie,
    TResult? Function(_SelectDate value)? selectDate,
    TResult? Function(_SelectTime value)? selectTime,
    TResult? Function(_Order value)? order,
    TResult? Function(_PayOrder value)? payOrder,
    TResult? Function(_Cancel value)? cancel,
    TResult? Function(_CancelTime value)? cancelTime,
    TResult? Function(_CancelOrderPay value)? cancelOrderPay,
  }) {
    return cancelOrderPay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectMovie value)? selectMovie,
    TResult Function(_SelectDate value)? selectDate,
    TResult Function(_SelectTime value)? selectTime,
    TResult Function(_Order value)? order,
    TResult Function(_PayOrder value)? payOrder,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_CancelTime value)? cancelTime,
    TResult Function(_CancelOrderPay value)? cancelOrderPay,
    required TResult orElse(),
  }) {
    if (cancelOrderPay != null) {
      return cancelOrderPay(this);
    }
    return orElse();
  }
}

abstract class _CancelOrderPay implements OrderEvent {
  const factory _CancelOrderPay() = _$_CancelOrderPay;
}

/// @nodoc
mixin _$OrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Movie movie) selectedMovie,
    required TResult Function(Movie movie, String date) selectedDate,
    required TResult Function(
            Movie movie, String date, String time, Cinema cinema, Studio studio)
        selectedTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Movie movie)? selectedMovie,
    TResult? Function(Movie movie, String date)? selectedDate,
    TResult? Function(Movie movie, String date, String time, Cinema cinema,
            Studio studio)?
        selectedTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Movie movie)? selectedMovie,
    TResult Function(Movie movie, String date)? selectedDate,
    TResult Function(Movie movie, String date, String time, Cinema cinema,
            Studio studio)?
        selectedTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectedMovie value) selectedMovie,
    required TResult Function(_SelectedDate value) selectedDate,
    required TResult Function(_SelectedTime value) selectedTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SelectedMovie value)? selectedMovie,
    TResult? Function(_SelectedDate value)? selectedDate,
    TResult? Function(_SelectedTime value)? selectedTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectedMovie value)? selectedMovie,
    TResult Function(_SelectedDate value)? selectedDate,
    TResult Function(_SelectedTime value)? selectedTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

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
    extends _$OrderStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'OrderState.initial()';
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
    required TResult Function(Movie movie) selectedMovie,
    required TResult Function(Movie movie, String date) selectedDate,
    required TResult Function(
            Movie movie, String date, String time, Cinema cinema, Studio studio)
        selectedTime,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Movie movie)? selectedMovie,
    TResult? Function(Movie movie, String date)? selectedDate,
    TResult? Function(Movie movie, String date, String time, Cinema cinema,
            Studio studio)?
        selectedTime,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Movie movie)? selectedMovie,
    TResult Function(Movie movie, String date)? selectedDate,
    TResult Function(Movie movie, String date, String time, Cinema cinema,
            Studio studio)?
        selectedTime,
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
    required TResult Function(_SelectedMovie value) selectedMovie,
    required TResult Function(_SelectedDate value) selectedDate,
    required TResult Function(_SelectedTime value) selectedTime,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SelectedMovie value)? selectedMovie,
    TResult? Function(_SelectedDate value)? selectedDate,
    TResult? Function(_SelectedTime value)? selectedTime,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectedMovie value)? selectedMovie,
    TResult Function(_SelectedDate value)? selectedDate,
    TResult Function(_SelectedTime value)? selectedTime,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OrderState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SelectedMovieCopyWith<$Res> {
  factory _$$_SelectedMovieCopyWith(
          _$_SelectedMovie value, $Res Function(_$_SelectedMovie) then) =
      __$$_SelectedMovieCopyWithImpl<$Res>;
  @useResult
  $Res call({Movie movie});

  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class __$$_SelectedMovieCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$_SelectedMovie>
    implements _$$_SelectedMovieCopyWith<$Res> {
  __$$_SelectedMovieCopyWithImpl(
      _$_SelectedMovie _value, $Res Function(_$_SelectedMovie) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
  }) {
    return _then(_$_SelectedMovie(
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieCopyWith<$Res> get movie {
    return $MovieCopyWith<$Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value));
    });
  }
}

/// @nodoc

class _$_SelectedMovie implements _SelectedMovie {
  const _$_SelectedMovie({required this.movie});

  @override
  final Movie movie;

  @override
  String toString() {
    return 'OrderState.selectedMovie(movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedMovie &&
            (identical(other.movie, movie) || other.movie == movie));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedMovieCopyWith<_$_SelectedMovie> get copyWith =>
      __$$_SelectedMovieCopyWithImpl<_$_SelectedMovie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Movie movie) selectedMovie,
    required TResult Function(Movie movie, String date) selectedDate,
    required TResult Function(
            Movie movie, String date, String time, Cinema cinema, Studio studio)
        selectedTime,
  }) {
    return selectedMovie(movie);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Movie movie)? selectedMovie,
    TResult? Function(Movie movie, String date)? selectedDate,
    TResult? Function(Movie movie, String date, String time, Cinema cinema,
            Studio studio)?
        selectedTime,
  }) {
    return selectedMovie?.call(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Movie movie)? selectedMovie,
    TResult Function(Movie movie, String date)? selectedDate,
    TResult Function(Movie movie, String date, String time, Cinema cinema,
            Studio studio)?
        selectedTime,
    required TResult orElse(),
  }) {
    if (selectedMovie != null) {
      return selectedMovie(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectedMovie value) selectedMovie,
    required TResult Function(_SelectedDate value) selectedDate,
    required TResult Function(_SelectedTime value) selectedTime,
  }) {
    return selectedMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SelectedMovie value)? selectedMovie,
    TResult? Function(_SelectedDate value)? selectedDate,
    TResult? Function(_SelectedTime value)? selectedTime,
  }) {
    return selectedMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectedMovie value)? selectedMovie,
    TResult Function(_SelectedDate value)? selectedDate,
    TResult Function(_SelectedTime value)? selectedTime,
    required TResult orElse(),
  }) {
    if (selectedMovie != null) {
      return selectedMovie(this);
    }
    return orElse();
  }
}

abstract class _SelectedMovie implements OrderState {
  const factory _SelectedMovie({required final Movie movie}) = _$_SelectedMovie;

  Movie get movie;
  @JsonKey(ignore: true)
  _$$_SelectedMovieCopyWith<_$_SelectedMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectedDateCopyWith<$Res> {
  factory _$$_SelectedDateCopyWith(
          _$_SelectedDate value, $Res Function(_$_SelectedDate) then) =
      __$$_SelectedDateCopyWithImpl<$Res>;
  @useResult
  $Res call({Movie movie, String date});

  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class __$$_SelectedDateCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$_SelectedDate>
    implements _$$_SelectedDateCopyWith<$Res> {
  __$$_SelectedDateCopyWithImpl(
      _$_SelectedDate _value, $Res Function(_$_SelectedDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
    Object? date = null,
  }) {
    return _then(_$_SelectedDate(
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieCopyWith<$Res> get movie {
    return $MovieCopyWith<$Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value));
    });
  }
}

/// @nodoc

class _$_SelectedDate implements _SelectedDate {
  const _$_SelectedDate({required this.movie, required this.date});

  @override
  final Movie movie;
  @override
  final String date;

  @override
  String toString() {
    return 'OrderState.selectedDate(movie: $movie, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedDate &&
            (identical(other.movie, movie) || other.movie == movie) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedDateCopyWith<_$_SelectedDate> get copyWith =>
      __$$_SelectedDateCopyWithImpl<_$_SelectedDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Movie movie) selectedMovie,
    required TResult Function(Movie movie, String date) selectedDate,
    required TResult Function(
            Movie movie, String date, String time, Cinema cinema, Studio studio)
        selectedTime,
  }) {
    return selectedDate(movie, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Movie movie)? selectedMovie,
    TResult? Function(Movie movie, String date)? selectedDate,
    TResult? Function(Movie movie, String date, String time, Cinema cinema,
            Studio studio)?
        selectedTime,
  }) {
    return selectedDate?.call(movie, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Movie movie)? selectedMovie,
    TResult Function(Movie movie, String date)? selectedDate,
    TResult Function(Movie movie, String date, String time, Cinema cinema,
            Studio studio)?
        selectedTime,
    required TResult orElse(),
  }) {
    if (selectedDate != null) {
      return selectedDate(movie, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectedMovie value) selectedMovie,
    required TResult Function(_SelectedDate value) selectedDate,
    required TResult Function(_SelectedTime value) selectedTime,
  }) {
    return selectedDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SelectedMovie value)? selectedMovie,
    TResult? Function(_SelectedDate value)? selectedDate,
    TResult? Function(_SelectedTime value)? selectedTime,
  }) {
    return selectedDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectedMovie value)? selectedMovie,
    TResult Function(_SelectedDate value)? selectedDate,
    TResult Function(_SelectedTime value)? selectedTime,
    required TResult orElse(),
  }) {
    if (selectedDate != null) {
      return selectedDate(this);
    }
    return orElse();
  }
}

abstract class _SelectedDate implements OrderState {
  const factory _SelectedDate(
      {required final Movie movie,
      required final String date}) = _$_SelectedDate;

  Movie get movie;
  String get date;
  @JsonKey(ignore: true)
  _$$_SelectedDateCopyWith<_$_SelectedDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectedTimeCopyWith<$Res> {
  factory _$$_SelectedTimeCopyWith(
          _$_SelectedTime value, $Res Function(_$_SelectedTime) then) =
      __$$_SelectedTimeCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Movie movie, String date, String time, Cinema cinema, Studio studio});

  $MovieCopyWith<$Res> get movie;
  $CinemaCopyWith<$Res> get cinema;
  $StudioCopyWith<$Res> get studio;
}

/// @nodoc
class __$$_SelectedTimeCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$_SelectedTime>
    implements _$$_SelectedTimeCopyWith<$Res> {
  __$$_SelectedTimeCopyWithImpl(
      _$_SelectedTime _value, $Res Function(_$_SelectedTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
    Object? date = null,
    Object? time = null,
    Object? cinema = null,
    Object? studio = null,
  }) {
    return _then(_$_SelectedTime(
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      cinema: null == cinema
          ? _value.cinema
          : cinema // ignore: cast_nullable_to_non_nullable
              as Cinema,
      studio: null == studio
          ? _value.studio
          : studio // ignore: cast_nullable_to_non_nullable
              as Studio,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieCopyWith<$Res> get movie {
    return $MovieCopyWith<$Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CinemaCopyWith<$Res> get cinema {
    return $CinemaCopyWith<$Res>(_value.cinema, (value) {
      return _then(_value.copyWith(cinema: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StudioCopyWith<$Res> get studio {
    return $StudioCopyWith<$Res>(_value.studio, (value) {
      return _then(_value.copyWith(studio: value));
    });
  }
}

/// @nodoc

class _$_SelectedTime implements _SelectedTime {
  const _$_SelectedTime(
      {required this.movie,
      required this.date,
      required this.time,
      required this.cinema,
      required this.studio});

  @override
  final Movie movie;
  @override
  final String date;
  @override
  final String time;
  @override
  final Cinema cinema;
  @override
  final Studio studio;

  @override
  String toString() {
    return 'OrderState.selectedTime(movie: $movie, date: $date, time: $time, cinema: $cinema, studio: $studio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedTime &&
            (identical(other.movie, movie) || other.movie == movie) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.cinema, cinema) || other.cinema == cinema) &&
            (identical(other.studio, studio) || other.studio == studio));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, movie, date, time, cinema, studio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedTimeCopyWith<_$_SelectedTime> get copyWith =>
      __$$_SelectedTimeCopyWithImpl<_$_SelectedTime>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Movie movie) selectedMovie,
    required TResult Function(Movie movie, String date) selectedDate,
    required TResult Function(
            Movie movie, String date, String time, Cinema cinema, Studio studio)
        selectedTime,
  }) {
    return selectedTime(movie, date, time, cinema, studio);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Movie movie)? selectedMovie,
    TResult? Function(Movie movie, String date)? selectedDate,
    TResult? Function(Movie movie, String date, String time, Cinema cinema,
            Studio studio)?
        selectedTime,
  }) {
    return selectedTime?.call(movie, date, time, cinema, studio);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Movie movie)? selectedMovie,
    TResult Function(Movie movie, String date)? selectedDate,
    TResult Function(Movie movie, String date, String time, Cinema cinema,
            Studio studio)?
        selectedTime,
    required TResult orElse(),
  }) {
    if (selectedTime != null) {
      return selectedTime(movie, date, time, cinema, studio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectedMovie value) selectedMovie,
    required TResult Function(_SelectedDate value) selectedDate,
    required TResult Function(_SelectedTime value) selectedTime,
  }) {
    return selectedTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SelectedMovie value)? selectedMovie,
    TResult? Function(_SelectedDate value)? selectedDate,
    TResult? Function(_SelectedTime value)? selectedTime,
  }) {
    return selectedTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectedMovie value)? selectedMovie,
    TResult Function(_SelectedDate value)? selectedDate,
    TResult Function(_SelectedTime value)? selectedTime,
    required TResult orElse(),
  }) {
    if (selectedTime != null) {
      return selectedTime(this);
    }
    return orElse();
  }
}

abstract class _SelectedTime implements OrderState {
  const factory _SelectedTime(
      {required final Movie movie,
      required final String date,
      required final String time,
      required final Cinema cinema,
      required final Studio studio}) = _$_SelectedTime;

  Movie get movie;
  String get date;
  String get time;
  Cinema get cinema;
  Studio get studio;
  @JsonKey(ignore: true)
  _$$_SelectedTimeCopyWith<_$_SelectedTime> get copyWith =>
      throw _privateConstructorUsedError;
}
