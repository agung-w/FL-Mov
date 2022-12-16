// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cinema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cinema _$CinemaFromJson(Map<String, dynamic> json) {
  return _Cinema.fromJson(json);
}

/// @nodoc
mixin _$Cinema {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  List<Studio> get studios => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CinemaCopyWith<Cinema> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CinemaCopyWith<$Res> {
  factory $CinemaCopyWith(Cinema value, $Res Function(Cinema) then) =
      _$CinemaCopyWithImpl<$Res, Cinema>;
  @useResult
  $Res call({int id, String name, String brand, List<Studio> studios});
}

/// @nodoc
class _$CinemaCopyWithImpl<$Res, $Val extends Cinema>
    implements $CinemaCopyWith<$Res> {
  _$CinemaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? brand = null,
    Object? studios = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      studios: null == studios
          ? _value.studios
          : studios // ignore: cast_nullable_to_non_nullable
              as List<Studio>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CinemaCopyWith<$Res> implements $CinemaCopyWith<$Res> {
  factory _$$_CinemaCopyWith(_$_Cinema value, $Res Function(_$_Cinema) then) =
      __$$_CinemaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String brand, List<Studio> studios});
}

/// @nodoc
class __$$_CinemaCopyWithImpl<$Res>
    extends _$CinemaCopyWithImpl<$Res, _$_Cinema>
    implements _$$_CinemaCopyWith<$Res> {
  __$$_CinemaCopyWithImpl(_$_Cinema _value, $Res Function(_$_Cinema) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? brand = null,
    Object? studios = null,
  }) {
    return _then(_$_Cinema(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      studios: null == studios
          ? _value._studios
          : studios // ignore: cast_nullable_to_non_nullable
              as List<Studio>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cinema implements _Cinema {
  const _$_Cinema(
      {required this.id,
      required this.name,
      required this.brand,
      required final List<Studio> studios})
      : _studios = studios;

  factory _$_Cinema.fromJson(Map<String, dynamic> json) =>
      _$$_CinemaFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String brand;
  final List<Studio> _studios;
  @override
  List<Studio> get studios {
    if (_studios is EqualUnmodifiableListView) return _studios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studios);
  }

  @override
  String toString() {
    return 'Cinema(id: $id, name: $name, brand: $brand, studios: $studios)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cinema &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            const DeepCollectionEquality().equals(other._studios, _studios));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, brand,
      const DeepCollectionEquality().hash(_studios));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CinemaCopyWith<_$_Cinema> get copyWith =>
      __$$_CinemaCopyWithImpl<_$_Cinema>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CinemaToJson(
      this,
    );
  }
}

abstract class _Cinema implements Cinema {
  const factory _Cinema(
      {required final int id,
      required final String name,
      required final String brand,
      required final List<Studio> studios}) = _$_Cinema;

  factory _Cinema.fromJson(Map<String, dynamic> json) = _$_Cinema.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get brand;
  @override
  List<Studio> get studios;
  @override
  @JsonKey(ignore: true)
  _$$_CinemaCopyWith<_$_Cinema> get copyWith =>
      throw _privateConstructorUsedError;
}

Studio _$StudioFromJson(Map<String, dynamic> json) {
  return _Studio.fromJson(json);
}

/// @nodoc
mixin _$Studio {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  int get capacity => throw _privateConstructorUsedError;
  int get row => throw _privateConstructorUsedError;
  int get column => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudioCopyWith<Studio> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudioCopyWith<$Res> {
  factory $StudioCopyWith(Studio value, $Res Function(Studio) then) =
      _$StudioCopyWithImpl<$Res, Studio>;
  @useResult
  $Res call(
      {int id, String code, int capacity, int row, int column, String price});
}

/// @nodoc
class _$StudioCopyWithImpl<$Res, $Val extends Studio>
    implements $StudioCopyWith<$Res> {
  _$StudioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? capacity = null,
    Object? row = null,
    Object? column = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      row: null == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      column: null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StudioCopyWith<$Res> implements $StudioCopyWith<$Res> {
  factory _$$_StudioCopyWith(_$_Studio value, $Res Function(_$_Studio) then) =
      __$$_StudioCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String code, int capacity, int row, int column, String price});
}

/// @nodoc
class __$$_StudioCopyWithImpl<$Res>
    extends _$StudioCopyWithImpl<$Res, _$_Studio>
    implements _$$_StudioCopyWith<$Res> {
  __$$_StudioCopyWithImpl(_$_Studio _value, $Res Function(_$_Studio) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? capacity = null,
    Object? row = null,
    Object? column = null,
    Object? price = null,
  }) {
    return _then(_$_Studio(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      row: null == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      column: null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Studio extends _Studio {
  const _$_Studio(
      {required this.id,
      required this.code,
      required this.capacity,
      required this.row,
      required this.column,
      required this.price})
      : super._();

  factory _$_Studio.fromJson(Map<String, dynamic> json) =>
      _$$_StudioFromJson(json);

  @override
  final int id;
  @override
  final String code;
  @override
  final int capacity;
  @override
  final int row;
  @override
  final int column;
  @override
  final String price;

  @override
  String toString() {
    return 'Studio(id: $id, code: $code, capacity: $capacity, row: $row, column: $column, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Studio &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, code, capacity, row, column, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudioCopyWith<_$_Studio> get copyWith =>
      __$$_StudioCopyWithImpl<_$_Studio>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudioToJson(
      this,
    );
  }
}

abstract class _Studio extends Studio {
  const factory _Studio(
      {required final int id,
      required final String code,
      required final int capacity,
      required final int row,
      required final int column,
      required final String price}) = _$_Studio;
  const _Studio._() : super._();

  factory _Studio.fromJson(Map<String, dynamic> json) = _$_Studio.fromJson;

  @override
  int get id;
  @override
  String get code;
  @override
  int get capacity;
  @override
  int get row;
  @override
  int get column;
  @override
  String get price;
  @override
  @JsonKey(ignore: true)
  _$$_StudioCopyWith<_$_Studio> get copyWith =>
      throw _privateConstructorUsedError;
}
