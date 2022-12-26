part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.loaded(
      {required TMDBSearchResult results,
      @Default([]) List<TMDBMovie> movieList,
      @Default([]) List<TMDBTv> tvShowList,
      @Default([]) List<TMDBPerson> personList,
      @Default([]) List<Movie> inTheaterList,
      required String query}) = _Loaded;
  const factory SearchState.loadFailed({required String message}) = _LoadFailed;
}
