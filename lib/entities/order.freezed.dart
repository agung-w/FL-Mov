// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  int get id => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "sub_total")
  String get subTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "platform_fee")
  String? get platformFee => throw _privateConstructorUsedError;
  @JsonKey(name: "admin_fee")
  String? get adminFee => throw _privateConstructorUsedError;
  String get schedule => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  String? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "tickets")
  List<Seat> get seats => throw _privateConstructorUsedError;
  Movie get movie => throw _privateConstructorUsedError;
  Cinema get cinema => throw _privateConstructorUsedError;
  Studio get studio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {int id,
      int quantity,
      @JsonKey(name: "sub_total") String subTotal,
      @JsonKey(name: "platform_fee") String? platformFee,
      @JsonKey(name: "admin_fee") String? adminFee,
      String schedule,
      int? discount,
      String? total,
      @JsonKey(name: "tickets") List<Seat> seats,
      Movie movie,
      Cinema cinema,
      Studio studio});

  $MovieCopyWith<$Res> get movie;
  $CinemaCopyWith<$Res> get cinema;
  $StudioCopyWith<$Res> get studio;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
    Object? subTotal = null,
    Object? platformFee = freezed,
    Object? adminFee = freezed,
    Object? schedule = null,
    Object? discount = freezed,
    Object? total = freezed,
    Object? seats = null,
    Object? movie = null,
    Object? cinema = null,
    Object? studio = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as String,
      platformFee: freezed == platformFee
          ? _value.platformFee
          : platformFee // ignore: cast_nullable_to_non_nullable
              as String?,
      adminFee: freezed == adminFee
          ? _value.adminFee
          : adminFee // ignore: cast_nullable_to_non_nullable
              as String?,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as String,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      seats: null == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as List<Seat>,
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
      cinema: null == cinema
          ? _value.cinema
          : cinema // ignore: cast_nullable_to_non_nullable
              as Cinema,
      studio: null == studio
          ? _value.studio
          : studio // ignore: cast_nullable_to_non_nullable
              as Studio,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieCopyWith<$Res> get movie {
    return $MovieCopyWith<$Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CinemaCopyWith<$Res> get cinema {
    return $CinemaCopyWith<$Res>(_value.cinema, (value) {
      return _then(_value.copyWith(cinema: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StudioCopyWith<$Res> get studio {
    return $StudioCopyWith<$Res>(_value.studio, (value) {
      return _then(_value.copyWith(studio: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int quantity,
      @JsonKey(name: "sub_total") String subTotal,
      @JsonKey(name: "platform_fee") String? platformFee,
      @JsonKey(name: "admin_fee") String? adminFee,
      String schedule,
      int? discount,
      String? total,
      @JsonKey(name: "tickets") List<Seat> seats,
      Movie movie,
      Cinema cinema,
      Studio studio});

  @override
  $MovieCopyWith<$Res> get movie;
  @override
  $CinemaCopyWith<$Res> get cinema;
  @override
  $StudioCopyWith<$Res> get studio;
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res, _$_Order>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
    Object? subTotal = null,
    Object? platformFee = freezed,
    Object? adminFee = freezed,
    Object? schedule = null,
    Object? discount = freezed,
    Object? total = freezed,
    Object? seats = null,
    Object? movie = null,
    Object? cinema = null,
    Object? studio = null,
  }) {
    return _then(_$_Order(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as String,
      platformFee: freezed == platformFee
          ? _value.platformFee
          : platformFee // ignore: cast_nullable_to_non_nullable
              as String?,
      adminFee: freezed == adminFee
          ? _value.adminFee
          : adminFee // ignore: cast_nullable_to_non_nullable
              as String?,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as String,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      seats: null == seats
          ? _value._seats
          : seats // ignore: cast_nullable_to_non_nullable
              as List<Seat>,
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
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
}

/// @nodoc
@JsonSerializable()
class _$_Order extends _Order {
  const _$_Order(
      {required this.id,
      required this.quantity,
      @JsonKey(name: "sub_total") required this.subTotal,
      @JsonKey(name: "platform_fee") required this.platformFee,
      @JsonKey(name: "admin_fee") required this.adminFee,
      required this.schedule,
      this.discount,
      required this.total,
      @JsonKey(name: "tickets") required final List<Seat> seats,
      required this.movie,
      required this.cinema,
      required this.studio})
      : _seats = seats,
        super._();

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$$_OrderFromJson(json);

  @override
  final int id;
  @override
  final int quantity;
  @override
  @JsonKey(name: "sub_total")
  final String subTotal;
  @override
  @JsonKey(name: "platform_fee")
  final String? platformFee;
  @override
  @JsonKey(name: "admin_fee")
  final String? adminFee;
  @override
  final String schedule;
  @override
  final int? discount;
  @override
  final String? total;
  final List<Seat> _seats;
  @override
  @JsonKey(name: "tickets")
  List<Seat> get seats {
    if (_seats is EqualUnmodifiableListView) return _seats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seats);
  }

  @override
  final Movie movie;
  @override
  final Cinema cinema;
  @override
  final Studio studio;

  @override
  String toString() {
    return 'Order(id: $id, quantity: $quantity, subTotal: $subTotal, platformFee: $platformFee, adminFee: $adminFee, schedule: $schedule, discount: $discount, total: $total, seats: $seats, movie: $movie, cinema: $cinema, studio: $studio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            (identical(other.platformFee, platformFee) ||
                other.platformFee == platformFee) &&
            (identical(other.adminFee, adminFee) ||
                other.adminFee == adminFee) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._seats, _seats) &&
            (identical(other.movie, movie) || other.movie == movie) &&
            (identical(other.cinema, cinema) || other.cinema == cinema) &&
            (identical(other.studio, studio) || other.studio == studio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      quantity,
      subTotal,
      platformFee,
      adminFee,
      schedule,
      discount,
      total,
      const DeepCollectionEquality().hash(_seats),
      movie,
      cinema,
      studio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      __$$_OrderCopyWithImpl<_$_Order>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderToJson(
      this,
    );
  }
}

abstract class _Order extends Order {
  const factory _Order(
      {required final int id,
      required final int quantity,
      @JsonKey(name: "sub_total") required final String subTotal,
      @JsonKey(name: "platform_fee") required final String? platformFee,
      @JsonKey(name: "admin_fee") required final String? adminFee,
      required final String schedule,
      final int? discount,
      required final String? total,
      @JsonKey(name: "tickets") required final List<Seat> seats,
      required final Movie movie,
      required final Cinema cinema,
      required final Studio studio}) = _$_Order;
  const _Order._() : super._();

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  int get id;
  @override
  int get quantity;
  @override
  @JsonKey(name: "sub_total")
  String get subTotal;
  @override
  @JsonKey(name: "platform_fee")
  String? get platformFee;
  @override
  @JsonKey(name: "admin_fee")
  String? get adminFee;
  @override
  String get schedule;
  @override
  int? get discount;
  @override
  String? get total;
  @override
  @JsonKey(name: "tickets")
  List<Seat> get seats;
  @override
  Movie get movie;
  @override
  Cinema get cinema;
  @override
  Studio get studio;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}

Seat _$SeatFromJson(Map<String, dynamic> json) {
  return _Seat.fromJson(json);
}

/// @nodoc
mixin _$Seat {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "order_id")
  int get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "studio_id")
  int get studioId => throw _privateConstructorUsedError;
  String get schedule => throw _privateConstructorUsedError;
  String get seat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeatCopyWith<Seat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatCopyWith<$Res> {
  factory $SeatCopyWith(Seat value, $Res Function(Seat) then) =
      _$SeatCopyWithImpl<$Res, Seat>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "order_id") int orderId,
      @JsonKey(name: "user_id") int userId,
      @JsonKey(name: "studio_id") int studioId,
      String schedule,
      String seat});
}

/// @nodoc
class _$SeatCopyWithImpl<$Res, $Val extends Seat>
    implements $SeatCopyWith<$Res> {
  _$SeatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? userId = null,
    Object? studioId = null,
    Object? schedule = null,
    Object? seat = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      studioId: null == studioId
          ? _value.studioId
          : studioId // ignore: cast_nullable_to_non_nullable
              as int,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as String,
      seat: null == seat
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SeatCopyWith<$Res> implements $SeatCopyWith<$Res> {
  factory _$$_SeatCopyWith(_$_Seat value, $Res Function(_$_Seat) then) =
      __$$_SeatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "order_id") int orderId,
      @JsonKey(name: "user_id") int userId,
      @JsonKey(name: "studio_id") int studioId,
      String schedule,
      String seat});
}

/// @nodoc
class __$$_SeatCopyWithImpl<$Res> extends _$SeatCopyWithImpl<$Res, _$_Seat>
    implements _$$_SeatCopyWith<$Res> {
  __$$_SeatCopyWithImpl(_$_Seat _value, $Res Function(_$_Seat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? userId = null,
    Object? studioId = null,
    Object? schedule = null,
    Object? seat = null,
  }) {
    return _then(_$_Seat(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      studioId: null == studioId
          ? _value.studioId
          : studioId // ignore: cast_nullable_to_non_nullable
              as int,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as String,
      seat: null == seat
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Seat implements _Seat {
  const _$_Seat(
      {required this.id,
      @JsonKey(name: "order_id") required this.orderId,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "studio_id") required this.studioId,
      required this.schedule,
      required this.seat});

  factory _$_Seat.fromJson(Map<String, dynamic> json) => _$$_SeatFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "order_id")
  final int orderId;
  @override
  @JsonKey(name: "user_id")
  final int userId;
  @override
  @JsonKey(name: "studio_id")
  final int studioId;
  @override
  final String schedule;
  @override
  final String seat;

  @override
  String toString() {
    return 'Seat(id: $id, orderId: $orderId, userId: $userId, studioId: $studioId, schedule: $schedule, seat: $seat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Seat &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.studioId, studioId) ||
                other.studioId == studioId) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.seat, seat) || other.seat == seat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, orderId, userId, studioId, schedule, seat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeatCopyWith<_$_Seat> get copyWith =>
      __$$_SeatCopyWithImpl<_$_Seat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeatToJson(
      this,
    );
  }
}

abstract class _Seat implements Seat {
  const factory _Seat(
      {required final int id,
      @JsonKey(name: "order_id") required final int orderId,
      @JsonKey(name: "user_id") required final int userId,
      @JsonKey(name: "studio_id") required final int studioId,
      required final String schedule,
      required final String seat}) = _$_Seat;

  factory _Seat.fromJson(Map<String, dynamic> json) = _$_Seat.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "order_id")
  int get orderId;
  @override
  @JsonKey(name: "user_id")
  int get userId;
  @override
  @JsonKey(name: "studio_id")
  int get studioId;
  @override
  String get schedule;
  @override
  String get seat;
  @override
  @JsonKey(ignore: true)
  _$$_SeatCopyWith<_$_Seat> get copyWith => throw _privateConstructorUsedError;
}
