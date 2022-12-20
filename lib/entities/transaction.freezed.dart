// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  int get id => throw _privateConstructorUsedError;
  TransactionDetail? get detail => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_type")
  String? get transactionType => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_method")
  String? get transactionMethod => throw _privateConstructorUsedError;
  String get total => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {int id,
      TransactionDetail? detail,
      @JsonKey(name: "transaction_type") String? transactionType,
      @JsonKey(name: "transaction_method") String? transactionMethod,
      String total,
      String status,
      @JsonKey(name: "created_at") String date});

  $TransactionDetailCopyWith<$Res>? get detail;
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? detail = freezed,
    Object? transactionType = freezed,
    Object? transactionMethod = freezed,
    Object? total = null,
    Object? status = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as TransactionDetail?,
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionMethod: freezed == transactionMethod
          ? _value.transactionMethod
          : transactionMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionDetailCopyWith<$Res>? get detail {
    if (_value.detail == null) {
      return null;
    }

    return $TransactionDetailCopyWith<$Res>(_value.detail!, (value) {
      return _then(_value.copyWith(detail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$_TransactionCopyWith(
          _$_Transaction value, $Res Function(_$_Transaction) then) =
      __$$_TransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      TransactionDetail? detail,
      @JsonKey(name: "transaction_type") String? transactionType,
      @JsonKey(name: "transaction_method") String? transactionMethod,
      String total,
      String status,
      @JsonKey(name: "created_at") String date});

  @override
  $TransactionDetailCopyWith<$Res>? get detail;
}

/// @nodoc
class __$$_TransactionCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$_Transaction>
    implements _$$_TransactionCopyWith<$Res> {
  __$$_TransactionCopyWithImpl(
      _$_Transaction _value, $Res Function(_$_Transaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? detail = freezed,
    Object? transactionType = freezed,
    Object? transactionMethod = freezed,
    Object? total = null,
    Object? status = null,
    Object? date = null,
  }) {
    return _then(_$_Transaction(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as TransactionDetail?,
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionMethod: freezed == transactionMethod
          ? _value.transactionMethod
          : transactionMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transaction extends _Transaction {
  const _$_Transaction(
      {required this.id,
      this.detail,
      @JsonKey(name: "transaction_type") this.transactionType,
      @JsonKey(name: "transaction_method") this.transactionMethod,
      required this.total,
      required this.status,
      @JsonKey(name: "created_at") required this.date})
      : super._();

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionFromJson(json);

  @override
  final int id;
  @override
  final TransactionDetail? detail;
  @override
  @JsonKey(name: "transaction_type")
  final String? transactionType;
  @override
  @JsonKey(name: "transaction_method")
  final String? transactionMethod;
  @override
  final String total;
  @override
  final String status;
  @override
  @JsonKey(name: "created_at")
  final String date;

  @override
  String toString() {
    return 'Transaction(id: $id, detail: $detail, transactionType: $transactionType, transactionMethod: $transactionMethod, total: $total, status: $status, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transaction &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.transactionMethod, transactionMethod) ||
                other.transactionMethod == transactionMethod) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, detail, transactionType,
      transactionMethod, total, status, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      __$$_TransactionCopyWithImpl<_$_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionToJson(
      this,
    );
  }
}

abstract class _Transaction extends Transaction {
  const factory _Transaction(
          {required final int id,
          final TransactionDetail? detail,
          @JsonKey(name: "transaction_type") final String? transactionType,
          @JsonKey(name: "transaction_method") final String? transactionMethod,
          required final String total,
          required final String status,
          @JsonKey(name: "created_at") required final String date}) =
      _$_Transaction;
  const _Transaction._() : super._();

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  int get id;
  @override
  TransactionDetail? get detail;
  @override
  @JsonKey(name: "transaction_type")
  String? get transactionType;
  @override
  @JsonKey(name: "transaction_method")
  String? get transactionMethod;
  @override
  String get total;
  @override
  String get status;
  @override
  @JsonKey(name: "created_at")
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionDetail _$TransactionDetailFromJson(Map<String, dynamic> json) {
  return _TransactionDetail.fromJson(json);
}

/// @nodoc
mixin _$TransactionDetail {
  Movie get movie => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDetailCopyWith<TransactionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDetailCopyWith<$Res> {
  factory $TransactionDetailCopyWith(
          TransactionDetail value, $Res Function(TransactionDetail) then) =
      _$TransactionDetailCopyWithImpl<$Res, TransactionDetail>;
  @useResult
  $Res call({Movie movie, int quantity});

  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class _$TransactionDetailCopyWithImpl<$Res, $Val extends TransactionDetail>
    implements $TransactionDetailCopyWith<$Res> {
  _$TransactionDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieCopyWith<$Res> get movie {
    return $MovieCopyWith<$Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionDetailCopyWith<$Res>
    implements $TransactionDetailCopyWith<$Res> {
  factory _$$_TransactionDetailCopyWith(_$_TransactionDetail value,
          $Res Function(_$_TransactionDetail) then) =
      __$$_TransactionDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Movie movie, int quantity});

  @override
  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class __$$_TransactionDetailCopyWithImpl<$Res>
    extends _$TransactionDetailCopyWithImpl<$Res, _$_TransactionDetail>
    implements _$$_TransactionDetailCopyWith<$Res> {
  __$$_TransactionDetailCopyWithImpl(
      _$_TransactionDetail _value, $Res Function(_$_TransactionDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
    Object? quantity = null,
  }) {
    return _then(_$_TransactionDetail(
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionDetail implements _TransactionDetail {
  const _$_TransactionDetail({required this.movie, required this.quantity});

  factory _$_TransactionDetail.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionDetailFromJson(json);

  @override
  final Movie movie;
  @override
  final int quantity;

  @override
  String toString() {
    return 'TransactionDetail(movie: $movie, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionDetail &&
            (identical(other.movie, movie) || other.movie == movie) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, movie, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionDetailCopyWith<_$_TransactionDetail> get copyWith =>
      __$$_TransactionDetailCopyWithImpl<_$_TransactionDetail>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionDetailToJson(
      this,
    );
  }
}

abstract class _TransactionDetail implements TransactionDetail {
  const factory _TransactionDetail(
      {required final Movie movie,
      required final int quantity}) = _$_TransactionDetail;

  factory _TransactionDetail.fromJson(Map<String, dynamic> json) =
      _$_TransactionDetail.fromJson;

  @override
  Movie get movie;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionDetailCopyWith<_$_TransactionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
