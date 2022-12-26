// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
mixin _$Movie {
  String get title => throw _privateConstructorUsedError;
  set title(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_url")
  String get posterUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_url")
  set posterUrl(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  String get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  set rating(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "tmdb_id")
  String get tmdbId => throw _privateConstructorUsedError;
  @JsonKey(name: "tmdb_id")
  set tmdbId(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res, Movie>;
  @useResult
  $Res call(
      {String title,
      @JsonKey(name: "poster_url") String posterUrl,
      @JsonKey(name: "vote_average") String rating,
      @JsonKey(name: "tmdb_id") String tmdbId});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res, $Val extends Movie>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? posterUrl = null,
    Object? rating = null,
    Object? tmdbId = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posterUrl: null == posterUrl
          ? _value.posterUrl
          : posterUrl // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      tmdbId: null == tmdbId
          ? _value.tmdbId
          : tmdbId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$_MovieCopyWith(_$_Movie value, $Res Function(_$_Movie) then) =
      __$$_MovieCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      @JsonKey(name: "poster_url") String posterUrl,
      @JsonKey(name: "vote_average") String rating,
      @JsonKey(name: "tmdb_id") String tmdbId});
}

/// @nodoc
class __$$_MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res, _$_Movie>
    implements _$$_MovieCopyWith<$Res> {
  __$$_MovieCopyWithImpl(_$_Movie _value, $Res Function(_$_Movie) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? posterUrl = null,
    Object? rating = null,
    Object? tmdbId = null,
  }) {
    return _then(_$_Movie(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posterUrl: null == posterUrl
          ? _value.posterUrl
          : posterUrl // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      tmdbId: null == tmdbId
          ? _value.tmdbId
          : tmdbId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Movie extends _Movie {
  _$_Movie(
      {required this.title,
      @JsonKey(name: "poster_url") required this.posterUrl,
      @JsonKey(name: "vote_average") required this.rating,
      @JsonKey(name: "tmdb_id") required this.tmdbId})
      : super._();

  factory _$_Movie.fromJson(Map<String, dynamic> json) =>
      _$$_MovieFromJson(json);

  @override
  String title;
  @override
  @JsonKey(name: "poster_url")
  String posterUrl;
  @override
  @JsonKey(name: "vote_average")
  String rating;
  @override
  @JsonKey(name: "tmdb_id")
  String tmdbId;

  @override
  String toString() {
    return 'Movie(title: $title, posterUrl: $posterUrl, rating: $rating, tmdbId: $tmdbId)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieCopyWith<_$_Movie> get copyWith =>
      __$$_MovieCopyWithImpl<_$_Movie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieToJson(
      this,
    );
  }
}

abstract class _Movie extends Movie {
  factory _Movie(
      {required String title,
      @JsonKey(name: "poster_url") required String posterUrl,
      @JsonKey(name: "vote_average") required String rating,
      @JsonKey(name: "tmdb_id") required String tmdbId}) = _$_Movie;
  _Movie._() : super._();

  factory _Movie.fromJson(Map<String, dynamic> json) = _$_Movie.fromJson;

  @override
  String get title;
  set title(String value);
  @override
  @JsonKey(name: "poster_url")
  String get posterUrl;
  @JsonKey(name: "poster_url")
  set posterUrl(String value);
  @override
  @JsonKey(name: "vote_average")
  String get rating;
  @JsonKey(name: "vote_average")
  set rating(String value);
  @override
  @JsonKey(name: "tmdb_id")
  String get tmdbId;
  @JsonKey(name: "tmdb_id")
  set tmdbId(String value);
  @override
  @JsonKey(ignore: true)
  _$$_MovieCopyWith<_$_Movie> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieDetail _$MovieDetailFromJson(Map<String, dynamic> json) {
  return _MovieDetail.fromJson(json);
}

/// @nodoc
mixin _$MovieDetail {
  List<Genre> get genres => throw _privateConstructorUsedError;
  set genres(List<Genre> value) => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  set overview(String value) => throw _privateConstructorUsedError;
  int get runtime => throw _privateConstructorUsedError;
  set runtime(int value) => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  set status(String value) => throw _privateConstructorUsedError;
  List<Cast>? get casts => throw _privateConstructorUsedError;
  set casts(List<Cast>? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailCopyWith<MovieDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailCopyWith<$Res> {
  factory $MovieDetailCopyWith(
          MovieDetail value, $Res Function(MovieDetail) then) =
      _$MovieDetailCopyWithImpl<$Res, MovieDetail>;
  @useResult
  $Res call(
      {List<Genre> genres,
      String overview,
      int runtime,
      String status,
      List<Cast>? casts});
}

/// @nodoc
class _$MovieDetailCopyWithImpl<$Res, $Val extends MovieDetail>
    implements $MovieDetailCopyWith<$Res> {
  _$MovieDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genres = null,
    Object? overview = null,
    Object? runtime = null,
    Object? status = null,
    Object? casts = freezed,
  }) {
    return _then(_value.copyWith(
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      runtime: null == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      casts: freezed == casts
          ? _value.casts
          : casts // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieDetailCopyWith<$Res>
    implements $MovieDetailCopyWith<$Res> {
  factory _$$_MovieDetailCopyWith(
          _$_MovieDetail value, $Res Function(_$_MovieDetail) then) =
      __$$_MovieDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Genre> genres,
      String overview,
      int runtime,
      String status,
      List<Cast>? casts});
}

/// @nodoc
class __$$_MovieDetailCopyWithImpl<$Res>
    extends _$MovieDetailCopyWithImpl<$Res, _$_MovieDetail>
    implements _$$_MovieDetailCopyWith<$Res> {
  __$$_MovieDetailCopyWithImpl(
      _$_MovieDetail _value, $Res Function(_$_MovieDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genres = null,
    Object? overview = null,
    Object? runtime = null,
    Object? status = null,
    Object? casts = freezed,
  }) {
    return _then(_$_MovieDetail(
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      runtime: null == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      casts: freezed == casts
          ? _value.casts
          : casts // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDetail implements _MovieDetail {
  _$_MovieDetail(
      {required this.genres,
      required this.overview,
      required this.runtime,
      required this.status,
      this.casts});

  factory _$_MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDetailFromJson(json);

  @override
  List<Genre> genres;
  @override
  String overview;
  @override
  int runtime;
  @override
  String status;
  @override
  List<Cast>? casts;

  @override
  String toString() {
    return 'MovieDetail(genres: $genres, overview: $overview, runtime: $runtime, status: $status, casts: $casts)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieDetailCopyWith<_$_MovieDetail> get copyWith =>
      __$$_MovieDetailCopyWithImpl<_$_MovieDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDetailToJson(
      this,
    );
  }
}

abstract class _MovieDetail implements MovieDetail {
  factory _MovieDetail(
      {required List<Genre> genres,
      required String overview,
      required int runtime,
      required String status,
      List<Cast>? casts}) = _$_MovieDetail;

  factory _MovieDetail.fromJson(Map<String, dynamic> json) =
      _$_MovieDetail.fromJson;

  @override
  List<Genre> get genres;
  set genres(List<Genre> value);
  @override
  String get overview;
  set overview(String value);
  @override
  int get runtime;
  set runtime(int value);
  @override
  String get status;
  set status(String value);
  @override
  List<Cast>? get casts;
  set casts(List<Cast>? value);
  @override
  @JsonKey(ignore: true)
  _$$_MovieDetailCopyWith<_$_MovieDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

Genre _$GenreFromJson(Map<String, dynamic> json) {
  return _Genre.fromJson(json);
}

/// @nodoc
mixin _$Genre {
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreCopyWith<Genre> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreCopyWith<$Res> {
  factory $GenreCopyWith(Genre value, $Res Function(Genre) then) =
      _$GenreCopyWithImpl<$Res, Genre>;
  @useResult
  $Res call({String name, int id});
}

/// @nodoc
class _$GenreCopyWithImpl<$Res, $Val extends Genre>
    implements $GenreCopyWith<$Res> {
  _$GenreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GenreCopyWith<$Res> implements $GenreCopyWith<$Res> {
  factory _$$_GenreCopyWith(_$_Genre value, $Res Function(_$_Genre) then) =
      __$$_GenreCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int id});
}

/// @nodoc
class __$$_GenreCopyWithImpl<$Res> extends _$GenreCopyWithImpl<$Res, _$_Genre>
    implements _$$_GenreCopyWith<$Res> {
  __$$_GenreCopyWithImpl(_$_Genre _value, $Res Function(_$_Genre) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_$_Genre(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Genre implements _Genre {
  const _$_Genre({required this.name, required this.id});

  factory _$_Genre.fromJson(Map<String, dynamic> json) =>
      _$$_GenreFromJson(json);

  @override
  final String name;
  @override
  final int id;

  @override
  String toString() {
    return 'Genre(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Genre &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenreCopyWith<_$_Genre> get copyWith =>
      __$$_GenreCopyWithImpl<_$_Genre>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenreToJson(
      this,
    );
  }
}

abstract class _Genre implements Genre {
  const factory _Genre({required final String name, required final int id}) =
      _$_Genre;

  factory _Genre.fromJson(Map<String, dynamic> json) = _$_Genre.fromJson;

  @override
  String get name;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_GenreCopyWith<_$_Genre> get copyWith =>
      throw _privateConstructorUsedError;
}

Cast _$CastFromJson(Map<String, dynamic> json) {
  return _Cast.fromJson(json);
}

/// @nodoc
mixin _$Cast {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get character => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_path")
  String? get profileUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastCopyWith<Cast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastCopyWith<$Res> {
  factory $CastCopyWith(Cast value, $Res Function(Cast) then) =
      _$CastCopyWithImpl<$Res, Cast>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? character,
      @JsonKey(name: "profile_path") String? profileUrl});
}

/// @nodoc
class _$CastCopyWithImpl<$Res, $Val extends Cast>
    implements $CastCopyWith<$Res> {
  _$CastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? character = freezed,
    Object? profileUrl = freezed,
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
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      profileUrl: freezed == profileUrl
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CastCopyWith<$Res> implements $CastCopyWith<$Res> {
  factory _$$_CastCopyWith(_$_Cast value, $Res Function(_$_Cast) then) =
      __$$_CastCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? character,
      @JsonKey(name: "profile_path") String? profileUrl});
}

/// @nodoc
class __$$_CastCopyWithImpl<$Res> extends _$CastCopyWithImpl<$Res, _$_Cast>
    implements _$$_CastCopyWith<$Res> {
  __$$_CastCopyWithImpl(_$_Cast _value, $Res Function(_$_Cast) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? character = freezed,
    Object? profileUrl = freezed,
  }) {
    return _then(_$_Cast(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      profileUrl: freezed == profileUrl
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cast extends _Cast {
  const _$_Cast(
      {required this.id,
      required this.name,
      this.character,
      @JsonKey(name: "profile_path") this.profileUrl})
      : super._();

  factory _$_Cast.fromJson(Map<String, dynamic> json) => _$$_CastFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? character;
  @override
  @JsonKey(name: "profile_path")
  final String? profileUrl;

  @override
  String toString() {
    return 'Cast(id: $id, name: $name, character: $character, profileUrl: $profileUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cast &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.character, character) ||
                other.character == character) &&
            (identical(other.profileUrl, profileUrl) ||
                other.profileUrl == profileUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, character, profileUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CastCopyWith<_$_Cast> get copyWith =>
      __$$_CastCopyWithImpl<_$_Cast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CastToJson(
      this,
    );
  }
}

abstract class _Cast extends Cast {
  const factory _Cast(
      {required final int id,
      required final String name,
      final String? character,
      @JsonKey(name: "profile_path") final String? profileUrl}) = _$_Cast;
  const _Cast._() : super._();

  factory _Cast.fromJson(Map<String, dynamic> json) = _$_Cast.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get character;
  @override
  @JsonKey(name: "profile_path")
  String? get profileUrl;
  @override
  @JsonKey(ignore: true)
  _$$_CastCopyWith<_$_Cast> get copyWith => throw _privateConstructorUsedError;
}

TMDBSearchResult _$TMDBSearchResultFromJson(Map<String, dynamic> json) {
  return _TMDBSearchResult.fromJson(json);
}

/// @nodoc
mixin _$TMDBSearchResult {
  List<Movie> get inTheaterList => throw _privateConstructorUsedError;
  set inTheaterList(List<Movie> value) => throw _privateConstructorUsedError;
  List<TMDBMovie> get movieList => throw _privateConstructorUsedError;
  set movieList(List<TMDBMovie> value) => throw _privateConstructorUsedError;
  List<TMDBTv> get tvList => throw _privateConstructorUsedError;
  set tvList(List<TMDBTv> value) => throw _privateConstructorUsedError;
  List<TMDBPerson> get personList => throw _privateConstructorUsedError;
  set personList(List<TMDBPerson> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TMDBSearchResultCopyWith<TMDBSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TMDBSearchResultCopyWith<$Res> {
  factory $TMDBSearchResultCopyWith(
          TMDBSearchResult value, $Res Function(TMDBSearchResult) then) =
      _$TMDBSearchResultCopyWithImpl<$Res, TMDBSearchResult>;
  @useResult
  $Res call(
      {List<Movie> inTheaterList,
      List<TMDBMovie> movieList,
      List<TMDBTv> tvList,
      List<TMDBPerson> personList});
}

/// @nodoc
class _$TMDBSearchResultCopyWithImpl<$Res, $Val extends TMDBSearchResult>
    implements $TMDBSearchResultCopyWith<$Res> {
  _$TMDBSearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inTheaterList = null,
    Object? movieList = null,
    Object? tvList = null,
    Object? personList = null,
  }) {
    return _then(_value.copyWith(
      inTheaterList: null == inTheaterList
          ? _value.inTheaterList
          : inTheaterList // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      movieList: null == movieList
          ? _value.movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as List<TMDBMovie>,
      tvList: null == tvList
          ? _value.tvList
          : tvList // ignore: cast_nullable_to_non_nullable
              as List<TMDBTv>,
      personList: null == personList
          ? _value.personList
          : personList // ignore: cast_nullable_to_non_nullable
              as List<TMDBPerson>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TMDBSearchResultCopyWith<$Res>
    implements $TMDBSearchResultCopyWith<$Res> {
  factory _$$_TMDBSearchResultCopyWith(
          _$_TMDBSearchResult value, $Res Function(_$_TMDBSearchResult) then) =
      __$$_TMDBSearchResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Movie> inTheaterList,
      List<TMDBMovie> movieList,
      List<TMDBTv> tvList,
      List<TMDBPerson> personList});
}

/// @nodoc
class __$$_TMDBSearchResultCopyWithImpl<$Res>
    extends _$TMDBSearchResultCopyWithImpl<$Res, _$_TMDBSearchResult>
    implements _$$_TMDBSearchResultCopyWith<$Res> {
  __$$_TMDBSearchResultCopyWithImpl(
      _$_TMDBSearchResult _value, $Res Function(_$_TMDBSearchResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inTheaterList = null,
    Object? movieList = null,
    Object? tvList = null,
    Object? personList = null,
  }) {
    return _then(_$_TMDBSearchResult(
      inTheaterList: null == inTheaterList
          ? _value.inTheaterList
          : inTheaterList // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      movieList: null == movieList
          ? _value.movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as List<TMDBMovie>,
      tvList: null == tvList
          ? _value.tvList
          : tvList // ignore: cast_nullable_to_non_nullable
              as List<TMDBTv>,
      personList: null == personList
          ? _value.personList
          : personList // ignore: cast_nullable_to_non_nullable
              as List<TMDBPerson>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TMDBSearchResult extends _TMDBSearchResult {
  _$_TMDBSearchResult(
      {this.inTheaterList = const [],
      this.movieList = const [],
      this.tvList = const [],
      this.personList = const []})
      : super._();

  factory _$_TMDBSearchResult.fromJson(Map<String, dynamic> json) =>
      _$$_TMDBSearchResultFromJson(json);

  @override
  @JsonKey()
  List<Movie> inTheaterList;
  @override
  @JsonKey()
  List<TMDBMovie> movieList;
  @override
  @JsonKey()
  List<TMDBTv> tvList;
  @override
  @JsonKey()
  List<TMDBPerson> personList;

  @override
  String toString() {
    return 'TMDBSearchResult(inTheaterList: $inTheaterList, movieList: $movieList, tvList: $tvList, personList: $personList)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TMDBSearchResultCopyWith<_$_TMDBSearchResult> get copyWith =>
      __$$_TMDBSearchResultCopyWithImpl<_$_TMDBSearchResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TMDBSearchResultToJson(
      this,
    );
  }
}

abstract class _TMDBSearchResult extends TMDBSearchResult {
  factory _TMDBSearchResult(
      {List<Movie> inTheaterList,
      List<TMDBMovie> movieList,
      List<TMDBTv> tvList,
      List<TMDBPerson> personList}) = _$_TMDBSearchResult;
  _TMDBSearchResult._() : super._();

  factory _TMDBSearchResult.fromJson(Map<String, dynamic> json) =
      _$_TMDBSearchResult.fromJson;

  @override
  List<Movie> get inTheaterList;
  set inTheaterList(List<Movie> value);
  @override
  List<TMDBMovie> get movieList;
  set movieList(List<TMDBMovie> value);
  @override
  List<TMDBTv> get tvList;
  set tvList(List<TMDBTv> value);
  @override
  List<TMDBPerson> get personList;
  set personList(List<TMDBPerson> value);
  @override
  @JsonKey(ignore: true)
  _$$_TMDBSearchResultCopyWith<_$_TMDBSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

TMDBMovie _$TMDBMovieFromJson(Map<String, dynamic> json) {
  return _TMDBMovie.fromJson(json);
}

/// @nodoc
mixin _$TMDBMovie {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  set title(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  set backdropPath(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  set posterPath(String? value) => throw _privateConstructorUsedError;
  String? get mediaType => throw _privateConstructorUsedError;
  set mediaType(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TMDBMovieCopyWith<TMDBMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TMDBMovieCopyWith<$Res> {
  factory $TMDBMovieCopyWith(TMDBMovie value, $Res Function(TMDBMovie) then) =
      _$TMDBMovieCopyWithImpl<$Res, TMDBMovie>;
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "poster_path") String? posterPath,
      String? mediaType});
}

/// @nodoc
class _$TMDBMovieCopyWithImpl<$Res, $Val extends TMDBMovie>
    implements $TMDBMovieCopyWith<$Res> {
  _$TMDBMovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? mediaType = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TMDBMovieCopyWith<$Res> implements $TMDBMovieCopyWith<$Res> {
  factory _$$_TMDBMovieCopyWith(
          _$_TMDBMovie value, $Res Function(_$_TMDBMovie) then) =
      __$$_TMDBMovieCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "poster_path") String? posterPath,
      String? mediaType});
}

/// @nodoc
class __$$_TMDBMovieCopyWithImpl<$Res>
    extends _$TMDBMovieCopyWithImpl<$Res, _$_TMDBMovie>
    implements _$$_TMDBMovieCopyWith<$Res> {
  __$$_TMDBMovieCopyWithImpl(
      _$_TMDBMovie _value, $Res Function(_$_TMDBMovie) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? mediaType = freezed,
  }) {
    return _then(_$_TMDBMovie(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TMDBMovie extends _TMDBMovie {
  _$_TMDBMovie(
      {required this.id,
      required this.title,
      @JsonKey(name: "backdrop_path") this.backdropPath,
      @JsonKey(name: "poster_path") this.posterPath,
      this.mediaType = "Movie"})
      : super._();

  factory _$_TMDBMovie.fromJson(Map<String, dynamic> json) =>
      _$$_TMDBMovieFromJson(json);

  @override
  int id;
  @override
  String title;
  @override
  @JsonKey(name: "backdrop_path")
  String? backdropPath;
  @override
  @JsonKey(name: "poster_path")
  String? posterPath;
  @override
  @JsonKey()
  String? mediaType;

  @override
  String toString() {
    return 'TMDBMovie(id: $id, title: $title, backdropPath: $backdropPath, posterPath: $posterPath, mediaType: $mediaType)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TMDBMovieCopyWith<_$_TMDBMovie> get copyWith =>
      __$$_TMDBMovieCopyWithImpl<_$_TMDBMovie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TMDBMovieToJson(
      this,
    );
  }
}

abstract class _TMDBMovie extends TMDBMovie {
  factory _TMDBMovie(
      {required int id,
      required String title,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "poster_path") String? posterPath,
      String? mediaType}) = _$_TMDBMovie;
  _TMDBMovie._() : super._();

  factory _TMDBMovie.fromJson(Map<String, dynamic> json) =
      _$_TMDBMovie.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  String get title;
  set title(String value);
  @override
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  @JsonKey(name: "backdrop_path")
  set backdropPath(String? value);
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @JsonKey(name: "poster_path")
  set posterPath(String? value);
  @override
  String? get mediaType;
  set mediaType(String? value);
  @override
  @JsonKey(ignore: true)
  _$$_TMDBMovieCopyWith<_$_TMDBMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

TMDBTv _$TMDBTvFromJson(Map<String, dynamic> json) {
  return _TMDBTv.fromJson(json);
}

/// @nodoc
mixin _$TMDBTv {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  set backdropPath(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  set posterPath(String? value) => throw _privateConstructorUsedError;
  String? get mediaType => throw _privateConstructorUsedError;
  set mediaType(String? value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TMDBTvCopyWith<TMDBTv> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TMDBTvCopyWith<$Res> {
  factory $TMDBTvCopyWith(TMDBTv value, $Res Function(TMDBTv) then) =
      _$TMDBTvCopyWithImpl<$Res, TMDBTv>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "poster_path") String? posterPath,
      String? mediaType,
      String name});
}

/// @nodoc
class _$TMDBTvCopyWithImpl<$Res, $Val extends TMDBTv>
    implements $TMDBTvCopyWith<$Res> {
  _$TMDBTvCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? mediaType = freezed,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TMDBTvCopyWith<$Res> implements $TMDBTvCopyWith<$Res> {
  factory _$$_TMDBTvCopyWith(_$_TMDBTv value, $Res Function(_$_TMDBTv) then) =
      __$$_TMDBTvCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "poster_path") String? posterPath,
      String? mediaType,
      String name});
}

/// @nodoc
class __$$_TMDBTvCopyWithImpl<$Res>
    extends _$TMDBTvCopyWithImpl<$Res, _$_TMDBTv>
    implements _$$_TMDBTvCopyWith<$Res> {
  __$$_TMDBTvCopyWithImpl(_$_TMDBTv _value, $Res Function(_$_TMDBTv) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? mediaType = freezed,
    Object? name = null,
  }) {
    return _then(_$_TMDBTv(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TMDBTv extends _TMDBTv {
  _$_TMDBTv(
      {required this.id,
      @JsonKey(name: "backdrop_path") this.backdropPath,
      @JsonKey(name: "poster_path") this.posterPath,
      this.mediaType = "Tv",
      required this.name})
      : super._();

  factory _$_TMDBTv.fromJson(Map<String, dynamic> json) =>
      _$$_TMDBTvFromJson(json);

  @override
  int id;
  @override
  @JsonKey(name: "backdrop_path")
  String? backdropPath;
  @override
  @JsonKey(name: "poster_path")
  String? posterPath;
  @override
  @JsonKey()
  String? mediaType;
  @override
  String name;

  @override
  String toString() {
    return 'TMDBTv(id: $id, backdropPath: $backdropPath, posterPath: $posterPath, mediaType: $mediaType, name: $name)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TMDBTvCopyWith<_$_TMDBTv> get copyWith =>
      __$$_TMDBTvCopyWithImpl<_$_TMDBTv>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TMDBTvToJson(
      this,
    );
  }
}

abstract class _TMDBTv extends TMDBTv {
  factory _TMDBTv(
      {required int id,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "poster_path") String? posterPath,
      String? mediaType,
      required String name}) = _$_TMDBTv;
  _TMDBTv._() : super._();

  factory _TMDBTv.fromJson(Map<String, dynamic> json) = _$_TMDBTv.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  @JsonKey(name: "backdrop_path")
  set backdropPath(String? value);
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @JsonKey(name: "poster_path")
  set posterPath(String? value);
  @override
  String? get mediaType;
  set mediaType(String? value);
  @override
  String get name;
  set name(String value);
  @override
  @JsonKey(ignore: true)
  _$$_TMDBTvCopyWith<_$_TMDBTv> get copyWith =>
      throw _privateConstructorUsedError;
}

TMDBPerson _$TMDBPersonFromJson(Map<String, dynamic> json) {
  return _TMDBPerson.fromJson(json);
}

/// @nodoc
mixin _$TMDBPerson {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_path")
  String? get profilePath => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_path")
  set profilePath(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "known_for_department")
  String? get knownForDepartment => throw _privateConstructorUsedError;
  @JsonKey(name: "known_for_department")
  set knownForDepartment(String? value) =>
      throw _privateConstructorUsedError; // @JsonKey(name: "known_for")
//     List<TMDBMovie>? knownFor,
  String get name =>
      throw _privateConstructorUsedError; // @JsonKey(name: "known_for")
//     List<TMDBMovie>? knownFor,
  set name(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TMDBPersonCopyWith<TMDBPerson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TMDBPersonCopyWith<$Res> {
  factory $TMDBPersonCopyWith(
          TMDBPerson value, $Res Function(TMDBPerson) then) =
      _$TMDBPersonCopyWithImpl<$Res, TMDBPerson>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "profile_path") String? profilePath,
      @JsonKey(name: "known_for_department") String? knownForDepartment,
      String name});
}

/// @nodoc
class _$TMDBPersonCopyWithImpl<$Res, $Val extends TMDBPerson>
    implements $TMDBPersonCopyWith<$Res> {
  _$TMDBPersonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profilePath = freezed,
    Object? knownForDepartment = freezed,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      knownForDepartment: freezed == knownForDepartment
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TMDBPersonCopyWith<$Res>
    implements $TMDBPersonCopyWith<$Res> {
  factory _$$_TMDBPersonCopyWith(
          _$_TMDBPerson value, $Res Function(_$_TMDBPerson) then) =
      __$$_TMDBPersonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "profile_path") String? profilePath,
      @JsonKey(name: "known_for_department") String? knownForDepartment,
      String name});
}

/// @nodoc
class __$$_TMDBPersonCopyWithImpl<$Res>
    extends _$TMDBPersonCopyWithImpl<$Res, _$_TMDBPerson>
    implements _$$_TMDBPersonCopyWith<$Res> {
  __$$_TMDBPersonCopyWithImpl(
      _$_TMDBPerson _value, $Res Function(_$_TMDBPerson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profilePath = freezed,
    Object? knownForDepartment = freezed,
    Object? name = null,
  }) {
    return _then(_$_TMDBPerson(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      knownForDepartment: freezed == knownForDepartment
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TMDBPerson extends _TMDBPerson {
  _$_TMDBPerson(
      {required this.id,
      @JsonKey(name: "profile_path") this.profilePath,
      @JsonKey(name: "known_for_department") this.knownForDepartment = "Person",
      required this.name})
      : super._();

  factory _$_TMDBPerson.fromJson(Map<String, dynamic> json) =>
      _$$_TMDBPersonFromJson(json);

  @override
  int id;
  @override
  @JsonKey(name: "profile_path")
  String? profilePath;
  @override
  @JsonKey(name: "known_for_department")
  String? knownForDepartment;
// @JsonKey(name: "known_for")
//     List<TMDBMovie>? knownFor,
  @override
  String name;

  @override
  String toString() {
    return 'TMDBPerson(id: $id, profilePath: $profilePath, knownForDepartment: $knownForDepartment, name: $name)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TMDBPersonCopyWith<_$_TMDBPerson> get copyWith =>
      __$$_TMDBPersonCopyWithImpl<_$_TMDBPerson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TMDBPersonToJson(
      this,
    );
  }
}

abstract class _TMDBPerson extends TMDBPerson {
  factory _TMDBPerson(
      {required int id,
      @JsonKey(name: "profile_path") String? profilePath,
      @JsonKey(name: "known_for_department") String? knownForDepartment,
      required String name}) = _$_TMDBPerson;
  _TMDBPerson._() : super._();

  factory _TMDBPerson.fromJson(Map<String, dynamic> json) =
      _$_TMDBPerson.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  @JsonKey(name: "profile_path")
  String? get profilePath;
  @JsonKey(name: "profile_path")
  set profilePath(String? value);
  @override
  @JsonKey(name: "known_for_department")
  String? get knownForDepartment;
  @JsonKey(name: "known_for_department")
  set knownForDepartment(String? value);
  @override // @JsonKey(name: "known_for")
//     List<TMDBMovie>? knownFor,
  String get name; // @JsonKey(name: "known_for")
//     List<TMDBMovie>? knownFor,
  set name(String value);
  @override
  @JsonKey(ignore: true)
  _$$_TMDBPersonCopyWith<_$_TMDBPerson> get copyWith =>
      throw _privateConstructorUsedError;
}
