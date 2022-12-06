// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getInTheater,
    required TResult Function(int id) getMovieDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getInTheater,
    TResult? Function(int id)? getMovieDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getInTheater,
    TResult Function(int id)? getMovieDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInTheater value) getInTheater,
    required TResult Function(_GetMovieDetail value) getMovieDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetInTheater value)? getInTheater,
    TResult? Function(_GetMovieDetail value)? getMovieDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInTheater value)? getInTheater,
    TResult Function(_GetMovieDetail value)? getMovieDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieEventCopyWith<$Res> {
  factory $MovieEventCopyWith(
          MovieEvent value, $Res Function(MovieEvent) then) =
      _$MovieEventCopyWithImpl<$Res, MovieEvent>;
}

/// @nodoc
class _$MovieEventCopyWithImpl<$Res, $Val extends MovieEvent>
    implements $MovieEventCopyWith<$Res> {
  _$MovieEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetInTheaterCopyWith<$Res> {
  factory _$$_GetInTheaterCopyWith(
          _$_GetInTheater value, $Res Function(_$_GetInTheater) then) =
      __$$_GetInTheaterCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetInTheaterCopyWithImpl<$Res>
    extends _$MovieEventCopyWithImpl<$Res, _$_GetInTheater>
    implements _$$_GetInTheaterCopyWith<$Res> {
  __$$_GetInTheaterCopyWithImpl(
      _$_GetInTheater _value, $Res Function(_$_GetInTheater) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetInTheater implements _GetInTheater {
  const _$_GetInTheater();

  @override
  String toString() {
    return 'MovieEvent.getInTheater()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetInTheater);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getInTheater,
    required TResult Function(int id) getMovieDetail,
  }) {
    return getInTheater();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getInTheater,
    TResult? Function(int id)? getMovieDetail,
  }) {
    return getInTheater?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getInTheater,
    TResult Function(int id)? getMovieDetail,
    required TResult orElse(),
  }) {
    if (getInTheater != null) {
      return getInTheater();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInTheater value) getInTheater,
    required TResult Function(_GetMovieDetail value) getMovieDetail,
  }) {
    return getInTheater(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetInTheater value)? getInTheater,
    TResult? Function(_GetMovieDetail value)? getMovieDetail,
  }) {
    return getInTheater?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInTheater value)? getInTheater,
    TResult Function(_GetMovieDetail value)? getMovieDetail,
    required TResult orElse(),
  }) {
    if (getInTheater != null) {
      return getInTheater(this);
    }
    return orElse();
  }
}

abstract class _GetInTheater implements MovieEvent {
  const factory _GetInTheater() = _$_GetInTheater;
}

/// @nodoc
abstract class _$$_GetMovieDetailCopyWith<$Res> {
  factory _$$_GetMovieDetailCopyWith(
          _$_GetMovieDetail value, $Res Function(_$_GetMovieDetail) then) =
      __$$_GetMovieDetailCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_GetMovieDetailCopyWithImpl<$Res>
    extends _$MovieEventCopyWithImpl<$Res, _$_GetMovieDetail>
    implements _$$_GetMovieDetailCopyWith<$Res> {
  __$$_GetMovieDetailCopyWithImpl(
      _$_GetMovieDetail _value, $Res Function(_$_GetMovieDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_GetMovieDetail(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetMovieDetail implements _GetMovieDetail {
  const _$_GetMovieDetail(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'MovieEvent.getMovieDetail(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMovieDetail &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMovieDetailCopyWith<_$_GetMovieDetail> get copyWith =>
      __$$_GetMovieDetailCopyWithImpl<_$_GetMovieDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getInTheater,
    required TResult Function(int id) getMovieDetail,
  }) {
    return getMovieDetail(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getInTheater,
    TResult? Function(int id)? getMovieDetail,
  }) {
    return getMovieDetail?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getInTheater,
    TResult Function(int id)? getMovieDetail,
    required TResult orElse(),
  }) {
    if (getMovieDetail != null) {
      return getMovieDetail(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInTheater value) getInTheater,
    required TResult Function(_GetMovieDetail value) getMovieDetail,
  }) {
    return getMovieDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetInTheater value)? getInTheater,
    TResult? Function(_GetMovieDetail value)? getMovieDetail,
  }) {
    return getMovieDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInTheater value)? getInTheater,
    TResult Function(_GetMovieDetail value)? getMovieDetail,
    required TResult orElse(),
  }) {
    if (getMovieDetail != null) {
      return getMovieDetail(this);
    }
    return orElse();
  }
}

abstract class _GetMovieDetail implements MovieEvent {
  const factory _GetMovieDetail(final int id) = _$_GetMovieDetail;

  int get id;
  @JsonKey(ignore: true)
  _$$_GetMovieDetailCopyWith<_$_GetMovieDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ApiResult<List<Movie>> movies) loaded,
    required TResult Function() loading,
    required TResult Function(ApiResult<MovieDetail> movie) loadedDetail,
    required TResult Function() loadingDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ApiResult<List<Movie>> movies)? loaded,
    TResult? Function()? loading,
    TResult? Function(ApiResult<MovieDetail> movie)? loadedDetail,
    TResult? Function()? loadingDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ApiResult<List<Movie>> movies)? loaded,
    TResult Function()? loading,
    TResult Function(ApiResult<MovieDetail> movie)? loadedDetail,
    TResult Function()? loadingDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedDetail value) loadedDetail,
    required TResult Function(_LoadingDetail value) loadingDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedDetail value)? loadedDetail,
    TResult? Function(_LoadingDetail value)? loadingDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedDetail value)? loadedDetail,
    TResult Function(_LoadingDetail value)? loadingDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieStateCopyWith<$Res> {
  factory $MovieStateCopyWith(
          MovieState value, $Res Function(MovieState) then) =
      _$MovieStateCopyWithImpl<$Res, MovieState>;
}

/// @nodoc
class _$MovieStateCopyWithImpl<$Res, $Val extends MovieState>
    implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._value, this._then);

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
    extends _$MovieStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MovieState.initial()';
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
    required TResult Function(ApiResult<List<Movie>> movies) loaded,
    required TResult Function() loading,
    required TResult Function(ApiResult<MovieDetail> movie) loadedDetail,
    required TResult Function() loadingDetail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ApiResult<List<Movie>> movies)? loaded,
    TResult? Function()? loading,
    TResult? Function(ApiResult<MovieDetail> movie)? loadedDetail,
    TResult? Function()? loadingDetail,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ApiResult<List<Movie>> movies)? loaded,
    TResult Function()? loading,
    TResult Function(ApiResult<MovieDetail> movie)? loadedDetail,
    TResult Function()? loadingDetail,
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
    required TResult Function(_LoadedDetail value) loadedDetail,
    required TResult Function(_LoadingDetail value) loadingDetail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedDetail value)? loadedDetail,
    TResult? Function(_LoadingDetail value)? loadingDetail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedDetail value)? loadedDetail,
    TResult Function(_LoadingDetail value)? loadingDetail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MovieState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiResult<List<Movie>> movies});

  $ApiResultCopyWith<List<Movie>, $Res> get movies;
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
  }) {
    return _then(_$_Loaded(
      null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as ApiResult<List<Movie>>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiResultCopyWith<List<Movie>, $Res> get movies {
    return $ApiResultCopyWith<List<Movie>, $Res>(_value.movies, (value) {
      return _then(_value.copyWith(movies: value));
    });
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.movies);

  @override
  final ApiResult<List<Movie>> movies;

  @override
  String toString() {
    return 'MovieState.loaded(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.movies, movies) || other.movies == movies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movies);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ApiResult<List<Movie>> movies) loaded,
    required TResult Function() loading,
    required TResult Function(ApiResult<MovieDetail> movie) loadedDetail,
    required TResult Function() loadingDetail,
  }) {
    return loaded(movies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ApiResult<List<Movie>> movies)? loaded,
    TResult? Function()? loading,
    TResult? Function(ApiResult<MovieDetail> movie)? loadedDetail,
    TResult? Function()? loadingDetail,
  }) {
    return loaded?.call(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ApiResult<List<Movie>> movies)? loaded,
    TResult Function()? loading,
    TResult Function(ApiResult<MovieDetail> movie)? loadedDetail,
    TResult Function()? loadingDetail,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedDetail value) loadedDetail,
    required TResult Function(_LoadingDetail value) loadingDetail,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedDetail value)? loadedDetail,
    TResult? Function(_LoadingDetail value)? loadingDetail,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedDetail value)? loadedDetail,
    TResult Function(_LoadingDetail value)? loadingDetail,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements MovieState {
  const factory _Loaded(final ApiResult<List<Movie>> movies) = _$_Loaded;

  ApiResult<List<Movie>> get movies;
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
    extends _$MovieStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'MovieState.loading()';
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
    required TResult Function(ApiResult<List<Movie>> movies) loaded,
    required TResult Function() loading,
    required TResult Function(ApiResult<MovieDetail> movie) loadedDetail,
    required TResult Function() loadingDetail,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ApiResult<List<Movie>> movies)? loaded,
    TResult? Function()? loading,
    TResult? Function(ApiResult<MovieDetail> movie)? loadedDetail,
    TResult? Function()? loadingDetail,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ApiResult<List<Movie>> movies)? loaded,
    TResult Function()? loading,
    TResult Function(ApiResult<MovieDetail> movie)? loadedDetail,
    TResult Function()? loadingDetail,
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
    required TResult Function(_LoadedDetail value) loadedDetail,
    required TResult Function(_LoadingDetail value) loadingDetail,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedDetail value)? loadedDetail,
    TResult? Function(_LoadingDetail value)? loadingDetail,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedDetail value)? loadedDetail,
    TResult Function(_LoadingDetail value)? loadingDetail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MovieState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedDetailCopyWith<$Res> {
  factory _$$_LoadedDetailCopyWith(
          _$_LoadedDetail value, $Res Function(_$_LoadedDetail) then) =
      __$$_LoadedDetailCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiResult<MovieDetail> movie});

  $ApiResultCopyWith<MovieDetail, $Res> get movie;
}

/// @nodoc
class __$$_LoadedDetailCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$_LoadedDetail>
    implements _$$_LoadedDetailCopyWith<$Res> {
  __$$_LoadedDetailCopyWithImpl(
      _$_LoadedDetail _value, $Res Function(_$_LoadedDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
  }) {
    return _then(_$_LoadedDetail(
      null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as ApiResult<MovieDetail>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiResultCopyWith<MovieDetail, $Res> get movie {
    return $ApiResultCopyWith<MovieDetail, $Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value));
    });
  }
}

/// @nodoc

class _$_LoadedDetail implements _LoadedDetail {
  const _$_LoadedDetail(this.movie);

  @override
  final ApiResult<MovieDetail> movie;

  @override
  String toString() {
    return 'MovieState.loadedDetail(movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedDetail &&
            (identical(other.movie, movie) || other.movie == movie));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedDetailCopyWith<_$_LoadedDetail> get copyWith =>
      __$$_LoadedDetailCopyWithImpl<_$_LoadedDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ApiResult<List<Movie>> movies) loaded,
    required TResult Function() loading,
    required TResult Function(ApiResult<MovieDetail> movie) loadedDetail,
    required TResult Function() loadingDetail,
  }) {
    return loadedDetail(movie);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ApiResult<List<Movie>> movies)? loaded,
    TResult? Function()? loading,
    TResult? Function(ApiResult<MovieDetail> movie)? loadedDetail,
    TResult? Function()? loadingDetail,
  }) {
    return loadedDetail?.call(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ApiResult<List<Movie>> movies)? loaded,
    TResult Function()? loading,
    TResult Function(ApiResult<MovieDetail> movie)? loadedDetail,
    TResult Function()? loadingDetail,
    required TResult orElse(),
  }) {
    if (loadedDetail != null) {
      return loadedDetail(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedDetail value) loadedDetail,
    required TResult Function(_LoadingDetail value) loadingDetail,
  }) {
    return loadedDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedDetail value)? loadedDetail,
    TResult? Function(_LoadingDetail value)? loadingDetail,
  }) {
    return loadedDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedDetail value)? loadedDetail,
    TResult Function(_LoadingDetail value)? loadingDetail,
    required TResult orElse(),
  }) {
    if (loadedDetail != null) {
      return loadedDetail(this);
    }
    return orElse();
  }
}

abstract class _LoadedDetail implements MovieState {
  const factory _LoadedDetail(final ApiResult<MovieDetail> movie) =
      _$_LoadedDetail;

  ApiResult<MovieDetail> get movie;
  @JsonKey(ignore: true)
  _$$_LoadedDetailCopyWith<_$_LoadedDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingDetailCopyWith<$Res> {
  factory _$$_LoadingDetailCopyWith(
          _$_LoadingDetail value, $Res Function(_$_LoadingDetail) then) =
      __$$_LoadingDetailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingDetailCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$_LoadingDetail>
    implements _$$_LoadingDetailCopyWith<$Res> {
  __$$_LoadingDetailCopyWithImpl(
      _$_LoadingDetail _value, $Res Function(_$_LoadingDetail) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingDetail implements _LoadingDetail {
  const _$_LoadingDetail();

  @override
  String toString() {
    return 'MovieState.loadingDetail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingDetail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ApiResult<List<Movie>> movies) loaded,
    required TResult Function() loading,
    required TResult Function(ApiResult<MovieDetail> movie) loadedDetail,
    required TResult Function() loadingDetail,
  }) {
    return loadingDetail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ApiResult<List<Movie>> movies)? loaded,
    TResult? Function()? loading,
    TResult? Function(ApiResult<MovieDetail> movie)? loadedDetail,
    TResult? Function()? loadingDetail,
  }) {
    return loadingDetail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ApiResult<List<Movie>> movies)? loaded,
    TResult Function()? loading,
    TResult Function(ApiResult<MovieDetail> movie)? loadedDetail,
    TResult Function()? loadingDetail,
    required TResult orElse(),
  }) {
    if (loadingDetail != null) {
      return loadingDetail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadedDetail value) loadedDetail,
    required TResult Function(_LoadingDetail value) loadingDetail,
  }) {
    return loadingDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadedDetail value)? loadedDetail,
    TResult? Function(_LoadingDetail value)? loadingDetail,
  }) {
    return loadingDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadedDetail value)? loadedDetail,
    TResult Function(_LoadingDetail value)? loadingDetail,
    required TResult orElse(),
  }) {
    if (loadingDetail != null) {
      return loadingDetail(this);
    }
    return orElse();
  }
}

abstract class _LoadingDetail implements MovieState {
  const factory _LoadingDetail() = _$_LoadingDetail;
}
