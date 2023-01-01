// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) topSearch,
    required TResult Function(String query) movieSearch,
    required TResult Function(String query) tvSearch,
    required TResult Function(String query) personSearch,
    required TResult Function(DiscoverCategory item) findByGenre,
    required TResult Function(BuildContext context) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? topSearch,
    TResult? Function(String query)? movieSearch,
    TResult? Function(String query)? tvSearch,
    TResult? Function(String query)? personSearch,
    TResult? Function(DiscoverCategory item)? findByGenre,
    TResult? Function(BuildContext context)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? topSearch,
    TResult Function(String query)? movieSearch,
    TResult Function(String query)? tvSearch,
    TResult Function(String query)? personSearch,
    TResult Function(DiscoverCategory item)? findByGenre,
    TResult Function(BuildContext context)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TopSearch value) topSearch,
    required TResult Function(_MovieSearch value) movieSearch,
    required TResult Function(_TvSearch value) tvSearch,
    required TResult Function(_PersonSearch value) personSearch,
    required TResult Function(_FindByGenre value) findByGenre,
    required TResult Function(_Clear value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TopSearch value)? topSearch,
    TResult? Function(_MovieSearch value)? movieSearch,
    TResult? Function(_TvSearch value)? tvSearch,
    TResult? Function(_PersonSearch value)? personSearch,
    TResult? Function(_FindByGenre value)? findByGenre,
    TResult? Function(_Clear value)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopSearch value)? topSearch,
    TResult Function(_MovieSearch value)? movieSearch,
    TResult Function(_TvSearch value)? tvSearch,
    TResult Function(_PersonSearch value)? personSearch,
    TResult Function(_FindByGenre value)? findByGenre,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TopSearchCopyWith<$Res> {
  factory _$$_TopSearchCopyWith(
          _$_TopSearch value, $Res Function(_$_TopSearch) then) =
      __$$_TopSearchCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_TopSearchCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_TopSearch>
    implements _$$_TopSearchCopyWith<$Res> {
  __$$_TopSearchCopyWithImpl(
      _$_TopSearch _value, $Res Function(_$_TopSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_TopSearch(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TopSearch implements _TopSearch {
  const _$_TopSearch(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.topSearch(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopSearch &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopSearchCopyWith<_$_TopSearch> get copyWith =>
      __$$_TopSearchCopyWithImpl<_$_TopSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) topSearch,
    required TResult Function(String query) movieSearch,
    required TResult Function(String query) tvSearch,
    required TResult Function(String query) personSearch,
    required TResult Function(DiscoverCategory item) findByGenre,
    required TResult Function(BuildContext context) clear,
  }) {
    return topSearch(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? topSearch,
    TResult? Function(String query)? movieSearch,
    TResult? Function(String query)? tvSearch,
    TResult? Function(String query)? personSearch,
    TResult? Function(DiscoverCategory item)? findByGenre,
    TResult? Function(BuildContext context)? clear,
  }) {
    return topSearch?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? topSearch,
    TResult Function(String query)? movieSearch,
    TResult Function(String query)? tvSearch,
    TResult Function(String query)? personSearch,
    TResult Function(DiscoverCategory item)? findByGenre,
    TResult Function(BuildContext context)? clear,
    required TResult orElse(),
  }) {
    if (topSearch != null) {
      return topSearch(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TopSearch value) topSearch,
    required TResult Function(_MovieSearch value) movieSearch,
    required TResult Function(_TvSearch value) tvSearch,
    required TResult Function(_PersonSearch value) personSearch,
    required TResult Function(_FindByGenre value) findByGenre,
    required TResult Function(_Clear value) clear,
  }) {
    return topSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TopSearch value)? topSearch,
    TResult? Function(_MovieSearch value)? movieSearch,
    TResult? Function(_TvSearch value)? tvSearch,
    TResult? Function(_PersonSearch value)? personSearch,
    TResult? Function(_FindByGenre value)? findByGenre,
    TResult? Function(_Clear value)? clear,
  }) {
    return topSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopSearch value)? topSearch,
    TResult Function(_MovieSearch value)? movieSearch,
    TResult Function(_TvSearch value)? tvSearch,
    TResult Function(_PersonSearch value)? personSearch,
    TResult Function(_FindByGenre value)? findByGenre,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (topSearch != null) {
      return topSearch(this);
    }
    return orElse();
  }
}

abstract class _TopSearch implements SearchEvent {
  const factory _TopSearch(final String query) = _$_TopSearch;

  String get query;
  @JsonKey(ignore: true)
  _$$_TopSearchCopyWith<_$_TopSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MovieSearchCopyWith<$Res> {
  factory _$$_MovieSearchCopyWith(
          _$_MovieSearch value, $Res Function(_$_MovieSearch) then) =
      __$$_MovieSearchCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_MovieSearchCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_MovieSearch>
    implements _$$_MovieSearchCopyWith<$Res> {
  __$$_MovieSearchCopyWithImpl(
      _$_MovieSearch _value, $Res Function(_$_MovieSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_MovieSearch(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MovieSearch implements _MovieSearch {
  const _$_MovieSearch(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.movieSearch(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieSearch &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieSearchCopyWith<_$_MovieSearch> get copyWith =>
      __$$_MovieSearchCopyWithImpl<_$_MovieSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) topSearch,
    required TResult Function(String query) movieSearch,
    required TResult Function(String query) tvSearch,
    required TResult Function(String query) personSearch,
    required TResult Function(DiscoverCategory item) findByGenre,
    required TResult Function(BuildContext context) clear,
  }) {
    return movieSearch(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? topSearch,
    TResult? Function(String query)? movieSearch,
    TResult? Function(String query)? tvSearch,
    TResult? Function(String query)? personSearch,
    TResult? Function(DiscoverCategory item)? findByGenre,
    TResult? Function(BuildContext context)? clear,
  }) {
    return movieSearch?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? topSearch,
    TResult Function(String query)? movieSearch,
    TResult Function(String query)? tvSearch,
    TResult Function(String query)? personSearch,
    TResult Function(DiscoverCategory item)? findByGenre,
    TResult Function(BuildContext context)? clear,
    required TResult orElse(),
  }) {
    if (movieSearch != null) {
      return movieSearch(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TopSearch value) topSearch,
    required TResult Function(_MovieSearch value) movieSearch,
    required TResult Function(_TvSearch value) tvSearch,
    required TResult Function(_PersonSearch value) personSearch,
    required TResult Function(_FindByGenre value) findByGenre,
    required TResult Function(_Clear value) clear,
  }) {
    return movieSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TopSearch value)? topSearch,
    TResult? Function(_MovieSearch value)? movieSearch,
    TResult? Function(_TvSearch value)? tvSearch,
    TResult? Function(_PersonSearch value)? personSearch,
    TResult? Function(_FindByGenre value)? findByGenre,
    TResult? Function(_Clear value)? clear,
  }) {
    return movieSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopSearch value)? topSearch,
    TResult Function(_MovieSearch value)? movieSearch,
    TResult Function(_TvSearch value)? tvSearch,
    TResult Function(_PersonSearch value)? personSearch,
    TResult Function(_FindByGenre value)? findByGenre,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (movieSearch != null) {
      return movieSearch(this);
    }
    return orElse();
  }
}

abstract class _MovieSearch implements SearchEvent {
  const factory _MovieSearch(final String query) = _$_MovieSearch;

  String get query;
  @JsonKey(ignore: true)
  _$$_MovieSearchCopyWith<_$_MovieSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TvSearchCopyWith<$Res> {
  factory _$$_TvSearchCopyWith(
          _$_TvSearch value, $Res Function(_$_TvSearch) then) =
      __$$_TvSearchCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_TvSearchCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_TvSearch>
    implements _$$_TvSearchCopyWith<$Res> {
  __$$_TvSearchCopyWithImpl(
      _$_TvSearch _value, $Res Function(_$_TvSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_TvSearch(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TvSearch implements _TvSearch {
  const _$_TvSearch(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.tvSearch(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TvSearch &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TvSearchCopyWith<_$_TvSearch> get copyWith =>
      __$$_TvSearchCopyWithImpl<_$_TvSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) topSearch,
    required TResult Function(String query) movieSearch,
    required TResult Function(String query) tvSearch,
    required TResult Function(String query) personSearch,
    required TResult Function(DiscoverCategory item) findByGenre,
    required TResult Function(BuildContext context) clear,
  }) {
    return tvSearch(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? topSearch,
    TResult? Function(String query)? movieSearch,
    TResult? Function(String query)? tvSearch,
    TResult? Function(String query)? personSearch,
    TResult? Function(DiscoverCategory item)? findByGenre,
    TResult? Function(BuildContext context)? clear,
  }) {
    return tvSearch?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? topSearch,
    TResult Function(String query)? movieSearch,
    TResult Function(String query)? tvSearch,
    TResult Function(String query)? personSearch,
    TResult Function(DiscoverCategory item)? findByGenre,
    TResult Function(BuildContext context)? clear,
    required TResult orElse(),
  }) {
    if (tvSearch != null) {
      return tvSearch(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TopSearch value) topSearch,
    required TResult Function(_MovieSearch value) movieSearch,
    required TResult Function(_TvSearch value) tvSearch,
    required TResult Function(_PersonSearch value) personSearch,
    required TResult Function(_FindByGenre value) findByGenre,
    required TResult Function(_Clear value) clear,
  }) {
    return tvSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TopSearch value)? topSearch,
    TResult? Function(_MovieSearch value)? movieSearch,
    TResult? Function(_TvSearch value)? tvSearch,
    TResult? Function(_PersonSearch value)? personSearch,
    TResult? Function(_FindByGenre value)? findByGenre,
    TResult? Function(_Clear value)? clear,
  }) {
    return tvSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopSearch value)? topSearch,
    TResult Function(_MovieSearch value)? movieSearch,
    TResult Function(_TvSearch value)? tvSearch,
    TResult Function(_PersonSearch value)? personSearch,
    TResult Function(_FindByGenre value)? findByGenre,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (tvSearch != null) {
      return tvSearch(this);
    }
    return orElse();
  }
}

abstract class _TvSearch implements SearchEvent {
  const factory _TvSearch(final String query) = _$_TvSearch;

  String get query;
  @JsonKey(ignore: true)
  _$$_TvSearchCopyWith<_$_TvSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PersonSearchCopyWith<$Res> {
  factory _$$_PersonSearchCopyWith(
          _$_PersonSearch value, $Res Function(_$_PersonSearch) then) =
      __$$_PersonSearchCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_PersonSearchCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_PersonSearch>
    implements _$$_PersonSearchCopyWith<$Res> {
  __$$_PersonSearchCopyWithImpl(
      _$_PersonSearch _value, $Res Function(_$_PersonSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_PersonSearch(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PersonSearch implements _PersonSearch {
  const _$_PersonSearch(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.personSearch(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonSearch &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonSearchCopyWith<_$_PersonSearch> get copyWith =>
      __$$_PersonSearchCopyWithImpl<_$_PersonSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) topSearch,
    required TResult Function(String query) movieSearch,
    required TResult Function(String query) tvSearch,
    required TResult Function(String query) personSearch,
    required TResult Function(DiscoverCategory item) findByGenre,
    required TResult Function(BuildContext context) clear,
  }) {
    return personSearch(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? topSearch,
    TResult? Function(String query)? movieSearch,
    TResult? Function(String query)? tvSearch,
    TResult? Function(String query)? personSearch,
    TResult? Function(DiscoverCategory item)? findByGenre,
    TResult? Function(BuildContext context)? clear,
  }) {
    return personSearch?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? topSearch,
    TResult Function(String query)? movieSearch,
    TResult Function(String query)? tvSearch,
    TResult Function(String query)? personSearch,
    TResult Function(DiscoverCategory item)? findByGenre,
    TResult Function(BuildContext context)? clear,
    required TResult orElse(),
  }) {
    if (personSearch != null) {
      return personSearch(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TopSearch value) topSearch,
    required TResult Function(_MovieSearch value) movieSearch,
    required TResult Function(_TvSearch value) tvSearch,
    required TResult Function(_PersonSearch value) personSearch,
    required TResult Function(_FindByGenre value) findByGenre,
    required TResult Function(_Clear value) clear,
  }) {
    return personSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TopSearch value)? topSearch,
    TResult? Function(_MovieSearch value)? movieSearch,
    TResult? Function(_TvSearch value)? tvSearch,
    TResult? Function(_PersonSearch value)? personSearch,
    TResult? Function(_FindByGenre value)? findByGenre,
    TResult? Function(_Clear value)? clear,
  }) {
    return personSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopSearch value)? topSearch,
    TResult Function(_MovieSearch value)? movieSearch,
    TResult Function(_TvSearch value)? tvSearch,
    TResult Function(_PersonSearch value)? personSearch,
    TResult Function(_FindByGenre value)? findByGenre,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (personSearch != null) {
      return personSearch(this);
    }
    return orElse();
  }
}

abstract class _PersonSearch implements SearchEvent {
  const factory _PersonSearch(final String query) = _$_PersonSearch;

  String get query;
  @JsonKey(ignore: true)
  _$$_PersonSearchCopyWith<_$_PersonSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FindByGenreCopyWith<$Res> {
  factory _$$_FindByGenreCopyWith(
          _$_FindByGenre value, $Res Function(_$_FindByGenre) then) =
      __$$_FindByGenreCopyWithImpl<$Res>;
  @useResult
  $Res call({DiscoverCategory item});
}

/// @nodoc
class __$$_FindByGenreCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_FindByGenre>
    implements _$$_FindByGenreCopyWith<$Res> {
  __$$_FindByGenreCopyWithImpl(
      _$_FindByGenre _value, $Res Function(_$_FindByGenre) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$_FindByGenre(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as DiscoverCategory,
    ));
  }
}

/// @nodoc

class _$_FindByGenre implements _FindByGenre {
  const _$_FindByGenre(this.item);

  @override
  final DiscoverCategory item;

  @override
  String toString() {
    return 'SearchEvent.findByGenre(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FindByGenre &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FindByGenreCopyWith<_$_FindByGenre> get copyWith =>
      __$$_FindByGenreCopyWithImpl<_$_FindByGenre>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) topSearch,
    required TResult Function(String query) movieSearch,
    required TResult Function(String query) tvSearch,
    required TResult Function(String query) personSearch,
    required TResult Function(DiscoverCategory item) findByGenre,
    required TResult Function(BuildContext context) clear,
  }) {
    return findByGenre(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? topSearch,
    TResult? Function(String query)? movieSearch,
    TResult? Function(String query)? tvSearch,
    TResult? Function(String query)? personSearch,
    TResult? Function(DiscoverCategory item)? findByGenre,
    TResult? Function(BuildContext context)? clear,
  }) {
    return findByGenre?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? topSearch,
    TResult Function(String query)? movieSearch,
    TResult Function(String query)? tvSearch,
    TResult Function(String query)? personSearch,
    TResult Function(DiscoverCategory item)? findByGenre,
    TResult Function(BuildContext context)? clear,
    required TResult orElse(),
  }) {
    if (findByGenre != null) {
      return findByGenre(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TopSearch value) topSearch,
    required TResult Function(_MovieSearch value) movieSearch,
    required TResult Function(_TvSearch value) tvSearch,
    required TResult Function(_PersonSearch value) personSearch,
    required TResult Function(_FindByGenre value) findByGenre,
    required TResult Function(_Clear value) clear,
  }) {
    return findByGenre(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TopSearch value)? topSearch,
    TResult? Function(_MovieSearch value)? movieSearch,
    TResult? Function(_TvSearch value)? tvSearch,
    TResult? Function(_PersonSearch value)? personSearch,
    TResult? Function(_FindByGenre value)? findByGenre,
    TResult? Function(_Clear value)? clear,
  }) {
    return findByGenre?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopSearch value)? topSearch,
    TResult Function(_MovieSearch value)? movieSearch,
    TResult Function(_TvSearch value)? tvSearch,
    TResult Function(_PersonSearch value)? personSearch,
    TResult Function(_FindByGenre value)? findByGenre,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (findByGenre != null) {
      return findByGenre(this);
    }
    return orElse();
  }
}

abstract class _FindByGenre implements SearchEvent {
  const factory _FindByGenre(final DiscoverCategory item) = _$_FindByGenre;

  DiscoverCategory get item;
  @JsonKey(ignore: true)
  _$$_FindByGenreCopyWith<_$_FindByGenre> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearCopyWith<$Res> {
  factory _$$_ClearCopyWith(_$_Clear value, $Res Function(_$_Clear) then) =
      __$$_ClearCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_ClearCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_Clear>
    implements _$$_ClearCopyWith<$Res> {
  __$$_ClearCopyWithImpl(_$_Clear _value, $Res Function(_$_Clear) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$_Clear(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_Clear implements _Clear {
  const _$_Clear(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SearchEvent.clear(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Clear &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClearCopyWith<_$_Clear> get copyWith =>
      __$$_ClearCopyWithImpl<_$_Clear>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) topSearch,
    required TResult Function(String query) movieSearch,
    required TResult Function(String query) tvSearch,
    required TResult Function(String query) personSearch,
    required TResult Function(DiscoverCategory item) findByGenre,
    required TResult Function(BuildContext context) clear,
  }) {
    return clear(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? topSearch,
    TResult? Function(String query)? movieSearch,
    TResult? Function(String query)? tvSearch,
    TResult? Function(String query)? personSearch,
    TResult? Function(DiscoverCategory item)? findByGenre,
    TResult? Function(BuildContext context)? clear,
  }) {
    return clear?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? topSearch,
    TResult Function(String query)? movieSearch,
    TResult Function(String query)? tvSearch,
    TResult Function(String query)? personSearch,
    TResult Function(DiscoverCategory item)? findByGenre,
    TResult Function(BuildContext context)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TopSearch value) topSearch,
    required TResult Function(_MovieSearch value) movieSearch,
    required TResult Function(_TvSearch value) tvSearch,
    required TResult Function(_PersonSearch value) personSearch,
    required TResult Function(_FindByGenre value) findByGenre,
    required TResult Function(_Clear value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TopSearch value)? topSearch,
    TResult? Function(_MovieSearch value)? movieSearch,
    TResult? Function(_TvSearch value)? tvSearch,
    TResult? Function(_PersonSearch value)? personSearch,
    TResult? Function(_FindByGenre value)? findByGenre,
    TResult? Function(_Clear value)? clear,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopSearch value)? topSearch,
    TResult Function(_MovieSearch value)? movieSearch,
    TResult Function(_TvSearch value)? tvSearch,
    TResult Function(_PersonSearch value)? personSearch,
    TResult Function(_FindByGenre value)? findByGenre,
    TResult Function(_Clear value)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _Clear implements SearchEvent {
  const factory _Clear(final BuildContext context) = _$_Clear;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_ClearCopyWith<_$_Clear> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            TMDBSearchResult results,
            List<TMDBMovie> movieList,
            List<TMDBTv> tvShowList,
            List<TMDBPerson> personList,
            List<Movie> inTheaterList,
            String query,
            int index)
        loaded,
    required TResult Function(String message) loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            TMDBSearchResult results,
            List<TMDBMovie> movieList,
            List<TMDBTv> tvShowList,
            List<TMDBPerson> personList,
            List<Movie> inTheaterList,
            String query,
            int index)?
        loaded,
    TResult? Function(String message)? loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            TMDBSearchResult results,
            List<TMDBMovie> movieList,
            List<TMDBTv> tvShowList,
            List<TMDBPerson> personList,
            List<Movie> inTheaterList,
            String query,
            int index)?
        loaded,
    TResult Function(String message)? loadFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadFailed value) loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadFailed value)? loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadFailed value)? loadFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

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
    extends _$SearchStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SearchState.initial()';
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
    required TResult Function(
            TMDBSearchResult results,
            List<TMDBMovie> movieList,
            List<TMDBTv> tvShowList,
            List<TMDBPerson> personList,
            List<Movie> inTheaterList,
            String query,
            int index)
        loaded,
    required TResult Function(String message) loadFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            TMDBSearchResult results,
            List<TMDBMovie> movieList,
            List<TMDBTv> tvShowList,
            List<TMDBPerson> personList,
            List<Movie> inTheaterList,
            String query,
            int index)?
        loaded,
    TResult? Function(String message)? loadFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            TMDBSearchResult results,
            List<TMDBMovie> movieList,
            List<TMDBTv> tvShowList,
            List<TMDBPerson> personList,
            List<Movie> inTheaterList,
            String query,
            int index)?
        loaded,
    TResult Function(String message)? loadFailed,
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
    required TResult Function(_LoadFailed value) loadFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadFailed value)? loadFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {TMDBSearchResult results,
      List<TMDBMovie> movieList,
      List<TMDBTv> tvShowList,
      List<TMDBPerson> personList,
      List<Movie> inTheaterList,
      String query,
      int index});

  $TMDBSearchResultCopyWith<$Res> get results;
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? movieList = null,
    Object? tvShowList = null,
    Object? personList = null,
    Object? inTheaterList = null,
    Object? query = null,
    Object? index = null,
  }) {
    return _then(_$_Loaded(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as TMDBSearchResult,
      movieList: null == movieList
          ? _value._movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as List<TMDBMovie>,
      tvShowList: null == tvShowList
          ? _value._tvShowList
          : tvShowList // ignore: cast_nullable_to_non_nullable
              as List<TMDBTv>,
      personList: null == personList
          ? _value._personList
          : personList // ignore: cast_nullable_to_non_nullable
              as List<TMDBPerson>,
      inTheaterList: null == inTheaterList
          ? _value._inTheaterList
          : inTheaterList // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TMDBSearchResultCopyWith<$Res> get results {
    return $TMDBSearchResultCopyWith<$Res>(_value.results, (value) {
      return _then(_value.copyWith(results: value));
    });
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required this.results,
      final List<TMDBMovie> movieList = const [],
      final List<TMDBTv> tvShowList = const [],
      final List<TMDBPerson> personList = const [],
      final List<Movie> inTheaterList = const [],
      required this.query,
      required this.index})
      : _movieList = movieList,
        _tvShowList = tvShowList,
        _personList = personList,
        _inTheaterList = inTheaterList;

  @override
  final TMDBSearchResult results;
  final List<TMDBMovie> _movieList;
  @override
  @JsonKey()
  List<TMDBMovie> get movieList {
    if (_movieList is EqualUnmodifiableListView) return _movieList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movieList);
  }

  final List<TMDBTv> _tvShowList;
  @override
  @JsonKey()
  List<TMDBTv> get tvShowList {
    if (_tvShowList is EqualUnmodifiableListView) return _tvShowList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tvShowList);
  }

  final List<TMDBPerson> _personList;
  @override
  @JsonKey()
  List<TMDBPerson> get personList {
    if (_personList is EqualUnmodifiableListView) return _personList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_personList);
  }

  final List<Movie> _inTheaterList;
  @override
  @JsonKey()
  List<Movie> get inTheaterList {
    if (_inTheaterList is EqualUnmodifiableListView) return _inTheaterList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inTheaterList);
  }

  @override
  final String query;
  @override
  final int index;

  @override
  String toString() {
    return 'SearchState.loaded(results: $results, movieList: $movieList, tvShowList: $tvShowList, personList: $personList, inTheaterList: $inTheaterList, query: $query, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.results, results) || other.results == results) &&
            const DeepCollectionEquality()
                .equals(other._movieList, _movieList) &&
            const DeepCollectionEquality()
                .equals(other._tvShowList, _tvShowList) &&
            const DeepCollectionEquality()
                .equals(other._personList, _personList) &&
            const DeepCollectionEquality()
                .equals(other._inTheaterList, _inTheaterList) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      results,
      const DeepCollectionEquality().hash(_movieList),
      const DeepCollectionEquality().hash(_tvShowList),
      const DeepCollectionEquality().hash(_personList),
      const DeepCollectionEquality().hash(_inTheaterList),
      query,
      index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            TMDBSearchResult results,
            List<TMDBMovie> movieList,
            List<TMDBTv> tvShowList,
            List<TMDBPerson> personList,
            List<Movie> inTheaterList,
            String query,
            int index)
        loaded,
    required TResult Function(String message) loadFailed,
  }) {
    return loaded(results, movieList, tvShowList, personList, inTheaterList,
        query, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            TMDBSearchResult results,
            List<TMDBMovie> movieList,
            List<TMDBTv> tvShowList,
            List<TMDBPerson> personList,
            List<Movie> inTheaterList,
            String query,
            int index)?
        loaded,
    TResult? Function(String message)? loadFailed,
  }) {
    return loaded?.call(results, movieList, tvShowList, personList,
        inTheaterList, query, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            TMDBSearchResult results,
            List<TMDBMovie> movieList,
            List<TMDBTv> tvShowList,
            List<TMDBPerson> personList,
            List<Movie> inTheaterList,
            String query,
            int index)?
        loaded,
    TResult Function(String message)? loadFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(results, movieList, tvShowList, personList, inTheaterList,
          query, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadFailed value) loadFailed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadFailed value)? loadFailed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements SearchState {
  const factory _Loaded(
      {required final TMDBSearchResult results,
      final List<TMDBMovie> movieList,
      final List<TMDBTv> tvShowList,
      final List<TMDBPerson> personList,
      final List<Movie> inTheaterList,
      required final String query,
      required final int index}) = _$_Loaded;

  TMDBSearchResult get results;
  List<TMDBMovie> get movieList;
  List<TMDBTv> get tvShowList;
  List<TMDBPerson> get personList;
  List<Movie> get inTheaterList;
  String get query;
  int get index;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailedCopyWith<$Res> {
  factory _$$_LoadFailedCopyWith(
          _$_LoadFailed value, $Res Function(_$_LoadFailed) then) =
      __$$_LoadFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_LoadFailedCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_LoadFailed>
    implements _$$_LoadFailedCopyWith<$Res> {
  __$$_LoadFailedCopyWithImpl(
      _$_LoadFailed _value, $Res Function(_$_LoadFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_LoadFailed(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadFailed implements _LoadFailed {
  const _$_LoadFailed({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'SearchState.loadFailed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailedCopyWith<_$_LoadFailed> get copyWith =>
      __$$_LoadFailedCopyWithImpl<_$_LoadFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            TMDBSearchResult results,
            List<TMDBMovie> movieList,
            List<TMDBTv> tvShowList,
            List<TMDBPerson> personList,
            List<Movie> inTheaterList,
            String query,
            int index)
        loaded,
    required TResult Function(String message) loadFailed,
  }) {
    return loadFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            TMDBSearchResult results,
            List<TMDBMovie> movieList,
            List<TMDBTv> tvShowList,
            List<TMDBPerson> personList,
            List<Movie> inTheaterList,
            String query,
            int index)?
        loaded,
    TResult? Function(String message)? loadFailed,
  }) {
    return loadFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            TMDBSearchResult results,
            List<TMDBMovie> movieList,
            List<TMDBTv> tvShowList,
            List<TMDBPerson> personList,
            List<Movie> inTheaterList,
            String query,
            int index)?
        loaded,
    TResult Function(String message)? loadFailed,
    required TResult orElse(),
  }) {
    if (loadFailed != null) {
      return loadFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_LoadFailed value) loadFailed,
  }) {
    return loadFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_LoadFailed value)? loadFailed,
  }) {
    return loadFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_LoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loadFailed != null) {
      return loadFailed(this);
    }
    return orElse();
  }
}

abstract class _LoadFailed implements SearchState {
  const factory _LoadFailed({required final String message}) = _$_LoadFailed;

  String get message;
  @JsonKey(ignore: true)
  _$$_LoadFailedCopyWith<_$_LoadFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
