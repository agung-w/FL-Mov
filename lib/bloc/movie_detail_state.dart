part of 'movie_detail_bloc.dart';

@freezed
class MovieDetailState with _$MovieDetailState {
  const factory MovieDetailState.initial() = _Initial;
  const factory MovieDetailState.loaded(ApiResult<MovieDetail> movie) = _Loaded;
  const factory MovieDetailState.loading() = _Loading;
}
