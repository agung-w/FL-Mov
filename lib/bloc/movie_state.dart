part of 'movie_bloc.dart';

@freezed
class MovieState with _$MovieState {
  const factory MovieState.initial() = _Initial;
  const factory MovieState.loaded(ApiResult<List<Movie>> movies) = _Loaded;
  const factory MovieState.loading() = _Loading;
}
