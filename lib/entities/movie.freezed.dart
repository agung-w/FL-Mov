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
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<Genre> get genres => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  int get runtime => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String? get backDropPath => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "original_language")
  String? get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String? get releaseDate => throw _privateConstructorUsedError;
  Credit get credits => throw _privateConstructorUsedError;
  Video get videos => throw _privateConstructorUsedError;
  ReviewList get reviews => throw _privateConstructorUsedError;
  TMDBMovieList get similar => throw _privateConstructorUsedError;

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
      {int id,
      String title,
      List<Genre> genres,
      String overview,
      int runtime,
      @JsonKey(name: "backdrop_path") String? backDropPath,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "original_language") String? originalLanguage,
      @JsonKey(name: "release_date") String? releaseDate,
      Credit credits,
      Video videos,
      ReviewList reviews,
      TMDBMovieList similar});

  $CreditCopyWith<$Res> get credits;
  $VideoCopyWith<$Res> get videos;
  $ReviewListCopyWith<$Res> get reviews;
  $TMDBMovieListCopyWith<$Res> get similar;
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
    Object? id = null,
    Object? title = null,
    Object? genres = null,
    Object? overview = null,
    Object? runtime = null,
    Object? backDropPath = freezed,
    Object? posterPath = freezed,
    Object? originalLanguage = freezed,
    Object? releaseDate = freezed,
    Object? credits = null,
    Object? videos = null,
    Object? reviews = null,
    Object? similar = null,
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
      backDropPath: freezed == backDropPath
          ? _value.backDropPath
          : backDropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      credits: null == credits
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as Credit,
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Video,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as ReviewList,
      similar: null == similar
          ? _value.similar
          : similar // ignore: cast_nullable_to_non_nullable
              as TMDBMovieList,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreditCopyWith<$Res> get credits {
    return $CreditCopyWith<$Res>(_value.credits, (value) {
      return _then(_value.copyWith(credits: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoCopyWith<$Res> get videos {
    return $VideoCopyWith<$Res>(_value.videos, (value) {
      return _then(_value.copyWith(videos: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReviewListCopyWith<$Res> get reviews {
    return $ReviewListCopyWith<$Res>(_value.reviews, (value) {
      return _then(_value.copyWith(reviews: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TMDBMovieListCopyWith<$Res> get similar {
    return $TMDBMovieListCopyWith<$Res>(_value.similar, (value) {
      return _then(_value.copyWith(similar: value) as $Val);
    });
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
      {int id,
      String title,
      List<Genre> genres,
      String overview,
      int runtime,
      @JsonKey(name: "backdrop_path") String? backDropPath,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "original_language") String? originalLanguage,
      @JsonKey(name: "release_date") String? releaseDate,
      Credit credits,
      Video videos,
      ReviewList reviews,
      TMDBMovieList similar});

  @override
  $CreditCopyWith<$Res> get credits;
  @override
  $VideoCopyWith<$Res> get videos;
  @override
  $ReviewListCopyWith<$Res> get reviews;
  @override
  $TMDBMovieListCopyWith<$Res> get similar;
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
    Object? id = null,
    Object? title = null,
    Object? genres = null,
    Object? overview = null,
    Object? runtime = null,
    Object? backDropPath = freezed,
    Object? posterPath = freezed,
    Object? originalLanguage = freezed,
    Object? releaseDate = freezed,
    Object? credits = null,
    Object? videos = null,
    Object? reviews = null,
    Object? similar = null,
  }) {
    return _then(_$_MovieDetail(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value._genres
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
      backDropPath: freezed == backDropPath
          ? _value.backDropPath
          : backDropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      credits: null == credits
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as Credit,
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Video,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as ReviewList,
      similar: null == similar
          ? _value.similar
          : similar // ignore: cast_nullable_to_non_nullable
              as TMDBMovieList,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDetail extends _MovieDetail {
  const _$_MovieDetail(
      {required this.id,
      required this.title,
      required final List<Genre> genres,
      required this.overview,
      required this.runtime,
      @JsonKey(name: "backdrop_path") this.backDropPath,
      @JsonKey(name: "poster_path") this.posterPath,
      @JsonKey(name: "original_language") this.originalLanguage,
      @JsonKey(name: "release_date") this.releaseDate,
      required this.credits,
      required this.videos,
      required this.reviews,
      required this.similar})
      : _genres = genres,
        super._();

  factory _$_MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDetailFromJson(json);

  @override
  final int id;
  @override
  final String title;
  final List<Genre> _genres;
  @override
  List<Genre> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  final String overview;
  @override
  final int runtime;
  @override
  @JsonKey(name: "backdrop_path")
  final String? backDropPath;
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "original_language")
  final String? originalLanguage;
  @override
  @JsonKey(name: "release_date")
  final String? releaseDate;
  @override
  final Credit credits;
  @override
  final Video videos;
  @override
  final ReviewList reviews;
  @override
  final TMDBMovieList similar;

  @override
  String toString() {
    return 'MovieDetail(id: $id, title: $title, genres: $genres, overview: $overview, runtime: $runtime, backDropPath: $backDropPath, posterPath: $posterPath, originalLanguage: $originalLanguage, releaseDate: $releaseDate, credits: $credits, videos: $videos, reviews: $reviews, similar: $similar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieDetail &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.backDropPath, backDropPath) ||
                other.backDropPath == backDropPath) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.credits, credits) || other.credits == credits) &&
            (identical(other.videos, videos) || other.videos == videos) &&
            (identical(other.reviews, reviews) || other.reviews == reviews) &&
            (identical(other.similar, similar) || other.similar == similar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(_genres),
      overview,
      runtime,
      backDropPath,
      posterPath,
      originalLanguage,
      releaseDate,
      credits,
      videos,
      reviews,
      similar);

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

abstract class _MovieDetail extends MovieDetail {
  const factory _MovieDetail(
      {required final int id,
      required final String title,
      required final List<Genre> genres,
      required final String overview,
      required final int runtime,
      @JsonKey(name: "backdrop_path") final String? backDropPath,
      @JsonKey(name: "poster_path") final String? posterPath,
      @JsonKey(name: "original_language") final String? originalLanguage,
      @JsonKey(name: "release_date") final String? releaseDate,
      required final Credit credits,
      required final Video videos,
      required final ReviewList reviews,
      required final TMDBMovieList similar}) = _$_MovieDetail;
  const _MovieDetail._() : super._();

  factory _MovieDetail.fromJson(Map<String, dynamic> json) =
      _$_MovieDetail.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  List<Genre> get genres;
  @override
  String get overview;
  @override
  int get runtime;
  @override
  @JsonKey(name: "backdrop_path")
  String? get backDropPath;
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "original_language")
  String? get originalLanguage;
  @override
  @JsonKey(name: "release_date")
  String? get releaseDate;
  @override
  Credit get credits;
  @override
  Video get videos;
  @override
  ReviewList get reviews;
  @override
  TMDBMovieList get similar;
  @override
  @JsonKey(ignore: true)
  _$$_MovieDetailCopyWith<_$_MovieDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

TvDetail _$TvDetailFromJson(Map<String, dynamic> json) {
  return _TvDetail.fromJson(json);
}

/// @nodoc
mixin _$TvDetail {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Genre> get genres => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  int get runtime => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: "original_language")
  String? get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: "first_air_date")
  String? get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: "number_of_episodes")
  int? get numberOfEpisodes => throw _privateConstructorUsedError;
  @JsonKey(name: "number_of_seasons")
  int? get numberOfSeasons => throw _privateConstructorUsedError;
  @JsonKey(name: "aggregate_credits")
  Credit? get credits => throw _privateConstructorUsedError;
  Video get videos => throw _privateConstructorUsedError;
  ReviewList get reviews => throw _privateConstructorUsedError;
  TMDBTvList get similar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvDetailCopyWith<TvDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvDetailCopyWith<$Res> {
  factory $TvDetailCopyWith(TvDetail value, $Res Function(TvDetail) then) =
      _$TvDetailCopyWithImpl<$Res, TvDetail>;
  @useResult
  $Res call(
      {int id,
      String name,
      List<Genre> genres,
      String overview,
      int runtime,
      @JsonKey(name: "vote_average") double? voteAverage,
      @JsonKey(name: "original_language") String? originalLanguage,
      @JsonKey(name: "first_air_date") String? releaseDate,
      @JsonKey(name: "number_of_episodes") int? numberOfEpisodes,
      @JsonKey(name: "number_of_seasons") int? numberOfSeasons,
      @JsonKey(name: "aggregate_credits") Credit? credits,
      Video videos,
      ReviewList reviews,
      TMDBTvList similar});

  $CreditCopyWith<$Res>? get credits;
  $VideoCopyWith<$Res> get videos;
  $ReviewListCopyWith<$Res> get reviews;
  $TMDBTvListCopyWith<$Res> get similar;
}

/// @nodoc
class _$TvDetailCopyWithImpl<$Res, $Val extends TvDetail>
    implements $TvDetailCopyWith<$Res> {
  _$TvDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? genres = null,
    Object? overview = null,
    Object? runtime = null,
    Object? voteAverage = freezed,
    Object? originalLanguage = freezed,
    Object? releaseDate = freezed,
    Object? numberOfEpisodes = freezed,
    Object? numberOfSeasons = freezed,
    Object? credits = freezed,
    Object? videos = null,
    Object? reviews = null,
    Object? similar = null,
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
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfEpisodes: freezed == numberOfEpisodes
          ? _value.numberOfEpisodes
          : numberOfEpisodes // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfSeasons: freezed == numberOfSeasons
          ? _value.numberOfSeasons
          : numberOfSeasons // ignore: cast_nullable_to_non_nullable
              as int?,
      credits: freezed == credits
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as Credit?,
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Video,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as ReviewList,
      similar: null == similar
          ? _value.similar
          : similar // ignore: cast_nullable_to_non_nullable
              as TMDBTvList,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreditCopyWith<$Res>? get credits {
    if (_value.credits == null) {
      return null;
    }

    return $CreditCopyWith<$Res>(_value.credits!, (value) {
      return _then(_value.copyWith(credits: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoCopyWith<$Res> get videos {
    return $VideoCopyWith<$Res>(_value.videos, (value) {
      return _then(_value.copyWith(videos: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReviewListCopyWith<$Res> get reviews {
    return $ReviewListCopyWith<$Res>(_value.reviews, (value) {
      return _then(_value.copyWith(reviews: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TMDBTvListCopyWith<$Res> get similar {
    return $TMDBTvListCopyWith<$Res>(_value.similar, (value) {
      return _then(_value.copyWith(similar: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TvDetailCopyWith<$Res> implements $TvDetailCopyWith<$Res> {
  factory _$$_TvDetailCopyWith(
          _$_TvDetail value, $Res Function(_$_TvDetail) then) =
      __$$_TvDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      List<Genre> genres,
      String overview,
      int runtime,
      @JsonKey(name: "vote_average") double? voteAverage,
      @JsonKey(name: "original_language") String? originalLanguage,
      @JsonKey(name: "first_air_date") String? releaseDate,
      @JsonKey(name: "number_of_episodes") int? numberOfEpisodes,
      @JsonKey(name: "number_of_seasons") int? numberOfSeasons,
      @JsonKey(name: "aggregate_credits") Credit? credits,
      Video videos,
      ReviewList reviews,
      TMDBTvList similar});

  @override
  $CreditCopyWith<$Res>? get credits;
  @override
  $VideoCopyWith<$Res> get videos;
  @override
  $ReviewListCopyWith<$Res> get reviews;
  @override
  $TMDBTvListCopyWith<$Res> get similar;
}

/// @nodoc
class __$$_TvDetailCopyWithImpl<$Res>
    extends _$TvDetailCopyWithImpl<$Res, _$_TvDetail>
    implements _$$_TvDetailCopyWith<$Res> {
  __$$_TvDetailCopyWithImpl(
      _$_TvDetail _value, $Res Function(_$_TvDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? genres = null,
    Object? overview = null,
    Object? runtime = null,
    Object? voteAverage = freezed,
    Object? originalLanguage = freezed,
    Object? releaseDate = freezed,
    Object? numberOfEpisodes = freezed,
    Object? numberOfSeasons = freezed,
    Object? credits = freezed,
    Object? videos = null,
    Object? reviews = null,
    Object? similar = null,
  }) {
    return _then(_$_TvDetail(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value._genres
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
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfEpisodes: freezed == numberOfEpisodes
          ? _value.numberOfEpisodes
          : numberOfEpisodes // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfSeasons: freezed == numberOfSeasons
          ? _value.numberOfSeasons
          : numberOfSeasons // ignore: cast_nullable_to_non_nullable
              as int?,
      credits: freezed == credits
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as Credit?,
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Video,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as ReviewList,
      similar: null == similar
          ? _value.similar
          : similar // ignore: cast_nullable_to_non_nullable
              as TMDBTvList,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TvDetail extends _TvDetail {
  const _$_TvDetail(
      {required this.id,
      required this.name,
      required final List<Genre> genres,
      required this.overview,
      required this.runtime,
      @JsonKey(name: "vote_average") this.voteAverage,
      @JsonKey(name: "original_language") this.originalLanguage,
      @JsonKey(name: "first_air_date") this.releaseDate,
      @JsonKey(name: "number_of_episodes") this.numberOfEpisodes,
      @JsonKey(name: "number_of_seasons") this.numberOfSeasons,
      @JsonKey(name: "aggregate_credits") this.credits,
      required this.videos,
      required this.reviews,
      required this.similar})
      : _genres = genres,
        super._();

  factory _$_TvDetail.fromJson(Map<String, dynamic> json) =>
      _$$_TvDetailFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<Genre> _genres;
  @override
  List<Genre> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  final String overview;
  @override
  final int runtime;
  @override
  @JsonKey(name: "vote_average")
  final double? voteAverage;
  @override
  @JsonKey(name: "original_language")
  final String? originalLanguage;
  @override
  @JsonKey(name: "first_air_date")
  final String? releaseDate;
  @override
  @JsonKey(name: "number_of_episodes")
  final int? numberOfEpisodes;
  @override
  @JsonKey(name: "number_of_seasons")
  final int? numberOfSeasons;
  @override
  @JsonKey(name: "aggregate_credits")
  final Credit? credits;
  @override
  final Video videos;
  @override
  final ReviewList reviews;
  @override
  final TMDBTvList similar;

  @override
  String toString() {
    return 'TvDetail(id: $id, name: $name, genres: $genres, overview: $overview, runtime: $runtime, voteAverage: $voteAverage, originalLanguage: $originalLanguage, releaseDate: $releaseDate, numberOfEpisodes: $numberOfEpisodes, numberOfSeasons: $numberOfSeasons, credits: $credits, videos: $videos, reviews: $reviews, similar: $similar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TvDetail &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.numberOfEpisodes, numberOfEpisodes) ||
                other.numberOfEpisodes == numberOfEpisodes) &&
            (identical(other.numberOfSeasons, numberOfSeasons) ||
                other.numberOfSeasons == numberOfSeasons) &&
            (identical(other.credits, credits) || other.credits == credits) &&
            (identical(other.videos, videos) || other.videos == videos) &&
            (identical(other.reviews, reviews) || other.reviews == reviews) &&
            (identical(other.similar, similar) || other.similar == similar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_genres),
      overview,
      runtime,
      voteAverage,
      originalLanguage,
      releaseDate,
      numberOfEpisodes,
      numberOfSeasons,
      credits,
      videos,
      reviews,
      similar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TvDetailCopyWith<_$_TvDetail> get copyWith =>
      __$$_TvDetailCopyWithImpl<_$_TvDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TvDetailToJson(
      this,
    );
  }
}

abstract class _TvDetail extends TvDetail {
  const factory _TvDetail(
      {required final int id,
      required final String name,
      required final List<Genre> genres,
      required final String overview,
      required final int runtime,
      @JsonKey(name: "vote_average") final double? voteAverage,
      @JsonKey(name: "original_language") final String? originalLanguage,
      @JsonKey(name: "first_air_date") final String? releaseDate,
      @JsonKey(name: "number_of_episodes") final int? numberOfEpisodes,
      @JsonKey(name: "number_of_seasons") final int? numberOfSeasons,
      @JsonKey(name: "aggregate_credits") final Credit? credits,
      required final Video videos,
      required final ReviewList reviews,
      required final TMDBTvList similar}) = _$_TvDetail;
  const _TvDetail._() : super._();

  factory _TvDetail.fromJson(Map<String, dynamic> json) = _$_TvDetail.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<Genre> get genres;
  @override
  String get overview;
  @override
  int get runtime;
  @override
  @JsonKey(name: "vote_average")
  double? get voteAverage;
  @override
  @JsonKey(name: "original_language")
  String? get originalLanguage;
  @override
  @JsonKey(name: "first_air_date")
  String? get releaseDate;
  @override
  @JsonKey(name: "number_of_episodes")
  int? get numberOfEpisodes;
  @override
  @JsonKey(name: "number_of_seasons")
  int? get numberOfSeasons;
  @override
  @JsonKey(name: "aggregate_credits")
  Credit? get credits;
  @override
  Video get videos;
  @override
  ReviewList get reviews;
  @override
  TMDBTvList get similar;
  @override
  @JsonKey(ignore: true)
  _$$_TvDetailCopyWith<_$_TvDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

TMDBTvList _$TMDBTvListFromJson(Map<String, dynamic> json) {
  return _TMDBTvList.fromJson(json);
}

/// @nodoc
mixin _$TMDBTvList {
  @JsonKey(name: "results")
  List<TMDBTv> get tvList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TMDBTvListCopyWith<TMDBTvList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TMDBTvListCopyWith<$Res> {
  factory $TMDBTvListCopyWith(
          TMDBTvList value, $Res Function(TMDBTvList) then) =
      _$TMDBTvListCopyWithImpl<$Res, TMDBTvList>;
  @useResult
  $Res call({@JsonKey(name: "results") List<TMDBTv> tvList});
}

/// @nodoc
class _$TMDBTvListCopyWithImpl<$Res, $Val extends TMDBTvList>
    implements $TMDBTvListCopyWith<$Res> {
  _$TMDBTvListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tvList = null,
  }) {
    return _then(_value.copyWith(
      tvList: null == tvList
          ? _value.tvList
          : tvList // ignore: cast_nullable_to_non_nullable
              as List<TMDBTv>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TMDBTvListCopyWith<$Res>
    implements $TMDBTvListCopyWith<$Res> {
  factory _$$_TMDBTvListCopyWith(
          _$_TMDBTvList value, $Res Function(_$_TMDBTvList) then) =
      __$$_TMDBTvListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "results") List<TMDBTv> tvList});
}

/// @nodoc
class __$$_TMDBTvListCopyWithImpl<$Res>
    extends _$TMDBTvListCopyWithImpl<$Res, _$_TMDBTvList>
    implements _$$_TMDBTvListCopyWith<$Res> {
  __$$_TMDBTvListCopyWithImpl(
      _$_TMDBTvList _value, $Res Function(_$_TMDBTvList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tvList = null,
  }) {
    return _then(_$_TMDBTvList(
      tvList: null == tvList
          ? _value._tvList
          : tvList // ignore: cast_nullable_to_non_nullable
              as List<TMDBTv>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TMDBTvList implements _TMDBTvList {
  const _$_TMDBTvList(
      {@JsonKey(name: "results") required final List<TMDBTv> tvList})
      : _tvList = tvList;

  factory _$_TMDBTvList.fromJson(Map<String, dynamic> json) =>
      _$$_TMDBTvListFromJson(json);

  final List<TMDBTv> _tvList;
  @override
  @JsonKey(name: "results")
  List<TMDBTv> get tvList {
    if (_tvList is EqualUnmodifiableListView) return _tvList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tvList);
  }

  @override
  String toString() {
    return 'TMDBTvList(tvList: $tvList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TMDBTvList &&
            const DeepCollectionEquality().equals(other._tvList, _tvList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tvList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TMDBTvListCopyWith<_$_TMDBTvList> get copyWith =>
      __$$_TMDBTvListCopyWithImpl<_$_TMDBTvList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TMDBTvListToJson(
      this,
    );
  }
}

abstract class _TMDBTvList implements TMDBTvList {
  const factory _TMDBTvList(
          {@JsonKey(name: "results") required final List<TMDBTv> tvList}) =
      _$_TMDBTvList;

  factory _TMDBTvList.fromJson(Map<String, dynamic> json) =
      _$_TMDBTvList.fromJson;

  @override
  @JsonKey(name: "results")
  List<TMDBTv> get tvList;
  @override
  @JsonKey(ignore: true)
  _$$_TMDBTvListCopyWith<_$_TMDBTvList> get copyWith =>
      throw _privateConstructorUsedError;
}

TMDBMovieList _$TMDBMovieListFromJson(Map<String, dynamic> json) {
  return _TMDBMovieList.fromJson(json);
}

/// @nodoc
mixin _$TMDBMovieList {
  @JsonKey(name: "results")
  List<TMDBMovie> get movieList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TMDBMovieListCopyWith<TMDBMovieList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TMDBMovieListCopyWith<$Res> {
  factory $TMDBMovieListCopyWith(
          TMDBMovieList value, $Res Function(TMDBMovieList) then) =
      _$TMDBMovieListCopyWithImpl<$Res, TMDBMovieList>;
  @useResult
  $Res call({@JsonKey(name: "results") List<TMDBMovie> movieList});
}

/// @nodoc
class _$TMDBMovieListCopyWithImpl<$Res, $Val extends TMDBMovieList>
    implements $TMDBMovieListCopyWith<$Res> {
  _$TMDBMovieListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieList = null,
  }) {
    return _then(_value.copyWith(
      movieList: null == movieList
          ? _value.movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as List<TMDBMovie>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TMDBMovieListCopyWith<$Res>
    implements $TMDBMovieListCopyWith<$Res> {
  factory _$$_TMDBMovieListCopyWith(
          _$_TMDBMovieList value, $Res Function(_$_TMDBMovieList) then) =
      __$$_TMDBMovieListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "results") List<TMDBMovie> movieList});
}

/// @nodoc
class __$$_TMDBMovieListCopyWithImpl<$Res>
    extends _$TMDBMovieListCopyWithImpl<$Res, _$_TMDBMovieList>
    implements _$$_TMDBMovieListCopyWith<$Res> {
  __$$_TMDBMovieListCopyWithImpl(
      _$_TMDBMovieList _value, $Res Function(_$_TMDBMovieList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieList = null,
  }) {
    return _then(_$_TMDBMovieList(
      movieList: null == movieList
          ? _value._movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as List<TMDBMovie>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TMDBMovieList implements _TMDBMovieList {
  const _$_TMDBMovieList(
      {@JsonKey(name: "results") required final List<TMDBMovie> movieList})
      : _movieList = movieList;

  factory _$_TMDBMovieList.fromJson(Map<String, dynamic> json) =>
      _$$_TMDBMovieListFromJson(json);

  final List<TMDBMovie> _movieList;
  @override
  @JsonKey(name: "results")
  List<TMDBMovie> get movieList {
    if (_movieList is EqualUnmodifiableListView) return _movieList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movieList);
  }

  @override
  String toString() {
    return 'TMDBMovieList(movieList: $movieList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TMDBMovieList &&
            const DeepCollectionEquality()
                .equals(other._movieList, _movieList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_movieList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TMDBMovieListCopyWith<_$_TMDBMovieList> get copyWith =>
      __$$_TMDBMovieListCopyWithImpl<_$_TMDBMovieList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TMDBMovieListToJson(
      this,
    );
  }
}

abstract class _TMDBMovieList implements TMDBMovieList {
  const factory _TMDBMovieList(
      {@JsonKey(name: "results")
          required final List<TMDBMovie> movieList}) = _$_TMDBMovieList;

  factory _TMDBMovieList.fromJson(Map<String, dynamic> json) =
      _$_TMDBMovieList.fromJson;

  @override
  @JsonKey(name: "results")
  List<TMDBMovie> get movieList;
  @override
  @JsonKey(ignore: true)
  _$$_TMDBMovieListCopyWith<_$_TMDBMovieList> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewList _$ReviewListFromJson(Map<String, dynamic> json) {
  return _ReviewList.fromJson(json);
}

/// @nodoc
mixin _$ReviewList {
  @JsonKey(name: "results")
  List<Review> get reviewList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewListCopyWith<ReviewList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewListCopyWith<$Res> {
  factory $ReviewListCopyWith(
          ReviewList value, $Res Function(ReviewList) then) =
      _$ReviewListCopyWithImpl<$Res, ReviewList>;
  @useResult
  $Res call({@JsonKey(name: "results") List<Review> reviewList});
}

/// @nodoc
class _$ReviewListCopyWithImpl<$Res, $Val extends ReviewList>
    implements $ReviewListCopyWith<$Res> {
  _$ReviewListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewList = null,
  }) {
    return _then(_value.copyWith(
      reviewList: null == reviewList
          ? _value.reviewList
          : reviewList // ignore: cast_nullable_to_non_nullable
              as List<Review>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewListCopyWith<$Res>
    implements $ReviewListCopyWith<$Res> {
  factory _$$_ReviewListCopyWith(
          _$_ReviewList value, $Res Function(_$_ReviewList) then) =
      __$$_ReviewListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "results") List<Review> reviewList});
}

/// @nodoc
class __$$_ReviewListCopyWithImpl<$Res>
    extends _$ReviewListCopyWithImpl<$Res, _$_ReviewList>
    implements _$$_ReviewListCopyWith<$Res> {
  __$$_ReviewListCopyWithImpl(
      _$_ReviewList _value, $Res Function(_$_ReviewList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewList = null,
  }) {
    return _then(_$_ReviewList(
      reviewList: null == reviewList
          ? _value._reviewList
          : reviewList // ignore: cast_nullable_to_non_nullable
              as List<Review>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewList implements _ReviewList {
  const _$_ReviewList(
      {@JsonKey(name: "results") required final List<Review> reviewList})
      : _reviewList = reviewList;

  factory _$_ReviewList.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewListFromJson(json);

  final List<Review> _reviewList;
  @override
  @JsonKey(name: "results")
  List<Review> get reviewList {
    if (_reviewList is EqualUnmodifiableListView) return _reviewList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviewList);
  }

  @override
  String toString() {
    return 'ReviewList(reviewList: $reviewList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewList &&
            const DeepCollectionEquality()
                .equals(other._reviewList, _reviewList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_reviewList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewListCopyWith<_$_ReviewList> get copyWith =>
      __$$_ReviewListCopyWithImpl<_$_ReviewList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewListToJson(
      this,
    );
  }
}

abstract class _ReviewList implements ReviewList {
  const factory _ReviewList(
          {@JsonKey(name: "results") required final List<Review> reviewList}) =
      _$_ReviewList;

  factory _ReviewList.fromJson(Map<String, dynamic> json) =
      _$_ReviewList.fromJson;

  @override
  @JsonKey(name: "results")
  List<Review> get reviewList;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewListCopyWith<_$_ReviewList> get copyWith =>
      throw _privateConstructorUsedError;
}

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  String get author => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call({String author, String content});
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$_ReviewCopyWith(_$_Review value, $Res Function(_$_Review) then) =
      __$$_ReviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String author, String content});
}

/// @nodoc
class __$$_ReviewCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$_Review>
    implements _$$_ReviewCopyWith<$Res> {
  __$$_ReviewCopyWithImpl(_$_Review _value, $Res Function(_$_Review) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? content = null,
  }) {
    return _then(_$_Review(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Review implements _Review {
  const _$_Review({required this.author, required this.content});

  factory _$_Review.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewFromJson(json);

  @override
  final String author;
  @override
  final String content;

  @override
  String toString() {
    return 'Review(author: $author, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Review &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, author, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      __$$_ReviewCopyWithImpl<_$_Review>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  const factory _Review(
      {required final String author,
      required final String content}) = _$_Review;

  factory _Review.fromJson(Map<String, dynamic> json) = _$_Review.fromJson;

  @override
  String get author;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
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

Video _$VideoFromJson(Map<String, dynamic> json) {
  return _Video.fromJson(json);
}

/// @nodoc
mixin _$Video {
  @JsonKey(name: "results")
  List<Trailer> get trailers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoCopyWith<Video> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) then) =
      _$VideoCopyWithImpl<$Res, Video>;
  @useResult
  $Res call({@JsonKey(name: "results") List<Trailer> trailers});
}

/// @nodoc
class _$VideoCopyWithImpl<$Res, $Val extends Video>
    implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trailers = null,
  }) {
    return _then(_value.copyWith(
      trailers: null == trailers
          ? _value.trailers
          : trailers // ignore: cast_nullable_to_non_nullable
              as List<Trailer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VideoCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$$_VideoCopyWith(_$_Video value, $Res Function(_$_Video) then) =
      __$$_VideoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "results") List<Trailer> trailers});
}

/// @nodoc
class __$$_VideoCopyWithImpl<$Res> extends _$VideoCopyWithImpl<$Res, _$_Video>
    implements _$$_VideoCopyWith<$Res> {
  __$$_VideoCopyWithImpl(_$_Video _value, $Res Function(_$_Video) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trailers = null,
  }) {
    return _then(_$_Video(
      trailers: null == trailers
          ? _value._trailers
          : trailers // ignore: cast_nullable_to_non_nullable
              as List<Trailer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Video implements _Video {
  const _$_Video(
      {@JsonKey(name: "results") final List<Trailer> trailers = const []})
      : _trailers = trailers;

  factory _$_Video.fromJson(Map<String, dynamic> json) =>
      _$$_VideoFromJson(json);

  final List<Trailer> _trailers;
  @override
  @JsonKey(name: "results")
  List<Trailer> get trailers {
    if (_trailers is EqualUnmodifiableListView) return _trailers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trailers);
  }

  @override
  String toString() {
    return 'Video(trailers: $trailers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Video &&
            const DeepCollectionEquality().equals(other._trailers, _trailers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_trailers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoCopyWith<_$_Video> get copyWith =>
      __$$_VideoCopyWithImpl<_$_Video>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoToJson(
      this,
    );
  }
}

abstract class _Video implements Video {
  const factory _Video(
      {@JsonKey(name: "results") final List<Trailer> trailers}) = _$_Video;

  factory _Video.fromJson(Map<String, dynamic> json) = _$_Video.fromJson;

  @override
  @JsonKey(name: "results")
  List<Trailer> get trailers;
  @override
  @JsonKey(ignore: true)
  _$$_VideoCopyWith<_$_Video> get copyWith =>
      throw _privateConstructorUsedError;
}

Trailer _$TrailerFromJson(Map<String, dynamic> json) {
  return _Trailer.fromJson(json);
}

/// @nodoc
mixin _$Trailer {
  String get name => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get site => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrailerCopyWith<Trailer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailerCopyWith<$Res> {
  factory $TrailerCopyWith(Trailer value, $Res Function(Trailer) then) =
      _$TrailerCopyWithImpl<$Res, Trailer>;
  @useResult
  $Res call({String name, String key, String site});
}

/// @nodoc
class _$TrailerCopyWithImpl<$Res, $Val extends Trailer>
    implements $TrailerCopyWith<$Res> {
  _$TrailerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? key = null,
    Object? site = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      site: null == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TrailerCopyWith<$Res> implements $TrailerCopyWith<$Res> {
  factory _$$_TrailerCopyWith(
          _$_Trailer value, $Res Function(_$_Trailer) then) =
      __$$_TrailerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String key, String site});
}

/// @nodoc
class __$$_TrailerCopyWithImpl<$Res>
    extends _$TrailerCopyWithImpl<$Res, _$_Trailer>
    implements _$$_TrailerCopyWith<$Res> {
  __$$_TrailerCopyWithImpl(_$_Trailer _value, $Res Function(_$_Trailer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? key = null,
    Object? site = null,
  }) {
    return _then(_$_Trailer(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      site: null == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Trailer implements _Trailer {
  const _$_Trailer({required this.name, required this.key, required this.site});

  factory _$_Trailer.fromJson(Map<String, dynamic> json) =>
      _$$_TrailerFromJson(json);

  @override
  final String name;
  @override
  final String key;
  @override
  final String site;

  @override
  String toString() {
    return 'Trailer(name: $name, key: $key, site: $site)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Trailer &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.site, site) || other.site == site));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, key, site);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrailerCopyWith<_$_Trailer> get copyWith =>
      __$$_TrailerCopyWithImpl<_$_Trailer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrailerToJson(
      this,
    );
  }
}

abstract class _Trailer implements Trailer {
  const factory _Trailer(
      {required final String name,
      required final String key,
      required final String site}) = _$_Trailer;

  factory _Trailer.fromJson(Map<String, dynamic> json) = _$_Trailer.fromJson;

  @override
  String get name;
  @override
  String get key;
  @override
  String get site;
  @override
  @JsonKey(ignore: true)
  _$$_TrailerCopyWith<_$_Trailer> get copyWith =>
      throw _privateConstructorUsedError;
}

Credit _$CreditFromJson(Map<String, dynamic> json) {
  return _Credit.fromJson(json);
}

/// @nodoc
mixin _$Credit {
  List<Cast> get cast => throw _privateConstructorUsedError;
  List<Crew> get crew => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditCopyWith<Credit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCopyWith<$Res> {
  factory $CreditCopyWith(Credit value, $Res Function(Credit) then) =
      _$CreditCopyWithImpl<$Res, Credit>;
  @useResult
  $Res call({List<Cast> cast, List<Crew> crew});
}

/// @nodoc
class _$CreditCopyWithImpl<$Res, $Val extends Credit>
    implements $CreditCopyWith<$Res> {
  _$CreditCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cast = null,
    Object? crew = null,
  }) {
    return _then(_value.copyWith(
      cast: null == cast
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
      crew: null == crew
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<Crew>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreditCopyWith<$Res> implements $CreditCopyWith<$Res> {
  factory _$$_CreditCopyWith(_$_Credit value, $Res Function(_$_Credit) then) =
      __$$_CreditCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Cast> cast, List<Crew> crew});
}

/// @nodoc
class __$$_CreditCopyWithImpl<$Res>
    extends _$CreditCopyWithImpl<$Res, _$_Credit>
    implements _$$_CreditCopyWith<$Res> {
  __$$_CreditCopyWithImpl(_$_Credit _value, $Res Function(_$_Credit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cast = null,
    Object? crew = null,
  }) {
    return _then(_$_Credit(
      cast: null == cast
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
      crew: null == crew
          ? _value._crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<Crew>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Credit extends _Credit {
  const _$_Credit(
      {final List<Cast> cast = const [], final List<Crew> crew = const []})
      : _cast = cast,
        _crew = crew,
        super._();

  factory _$_Credit.fromJson(Map<String, dynamic> json) =>
      _$$_CreditFromJson(json);

  final List<Cast> _cast;
  @override
  @JsonKey()
  List<Cast> get cast {
    if (_cast is EqualUnmodifiableListView) return _cast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cast);
  }

  final List<Crew> _crew;
  @override
  @JsonKey()
  List<Crew> get crew {
    if (_crew is EqualUnmodifiableListView) return _crew;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crew);
  }

  @override
  String toString() {
    return 'Credit(cast: $cast, crew: $crew)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Credit &&
            const DeepCollectionEquality().equals(other._cast, _cast) &&
            const DeepCollectionEquality().equals(other._crew, _crew));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cast),
      const DeepCollectionEquality().hash(_crew));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreditCopyWith<_$_Credit> get copyWith =>
      __$$_CreditCopyWithImpl<_$_Credit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreditToJson(
      this,
    );
  }
}

abstract class _Credit extends Credit {
  const factory _Credit({final List<Cast> cast, final List<Crew> crew}) =
      _$_Credit;
  const _Credit._() : super._();

  factory _Credit.fromJson(Map<String, dynamic> json) = _$_Credit.fromJson;

  @override
  List<Cast> get cast;
  @override
  List<Crew> get crew;
  @override
  @JsonKey(ignore: true)
  _$$_CreditCopyWith<_$_Credit> get copyWith =>
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

Crew _$CrewFromJson(Map<String, dynamic> json) {
  return _Crew.fromJson(json);
}

/// @nodoc
mixin _$Crew {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get character => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_path")
  String? get profileUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CrewCopyWith<Crew> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrewCopyWith<$Res> {
  factory $CrewCopyWith(Crew value, $Res Function(Crew) then) =
      _$CrewCopyWithImpl<$Res, Crew>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? character,
      @JsonKey(name: "profile_path") String? profileUrl});
}

/// @nodoc
class _$CrewCopyWithImpl<$Res, $Val extends Crew>
    implements $CrewCopyWith<$Res> {
  _$CrewCopyWithImpl(this._value, this._then);

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
abstract class _$$_CrewCopyWith<$Res> implements $CrewCopyWith<$Res> {
  factory _$$_CrewCopyWith(_$_Crew value, $Res Function(_$_Crew) then) =
      __$$_CrewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? character,
      @JsonKey(name: "profile_path") String? profileUrl});
}

/// @nodoc
class __$$_CrewCopyWithImpl<$Res> extends _$CrewCopyWithImpl<$Res, _$_Crew>
    implements _$$_CrewCopyWith<$Res> {
  __$$_CrewCopyWithImpl(_$_Crew _value, $Res Function(_$_Crew) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? character = freezed,
    Object? profileUrl = freezed,
  }) {
    return _then(_$_Crew(
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
class _$_Crew extends _Crew {
  const _$_Crew(
      {required this.id,
      required this.name,
      this.character,
      @JsonKey(name: "profile_path") this.profileUrl})
      : super._();

  factory _$_Crew.fromJson(Map<String, dynamic> json) => _$$_CrewFromJson(json);

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
    return 'Crew(id: $id, name: $name, character: $character, profileUrl: $profileUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Crew &&
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
  _$$_CrewCopyWith<_$_Crew> get copyWith =>
      __$$_CrewCopyWithImpl<_$_Crew>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CrewToJson(
      this,
    );
  }
}

abstract class _Crew extends Crew {
  const factory _Crew(
      {required final int id,
      required final String name,
      final String? character,
      @JsonKey(name: "profile_path") final String? profileUrl}) = _$_Crew;
  const _Crew._() : super._();

  factory _Crew.fromJson(Map<String, dynamic> json) = _$_Crew.fromJson;

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
  _$$_CrewCopyWith<_$_Crew> get copyWith => throw _privateConstructorUsedError;
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
