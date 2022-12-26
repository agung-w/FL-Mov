part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.topSearch(String query) = _TopSearch;
  const factory SearchEvent.movieSearch(String query) = _MovieSearch;
  const factory SearchEvent.tvSearch(String query) = _TvSearch;
  const factory SearchEvent.personSearch(String query) = _PersonSearch;
  const factory SearchEvent.findByGenre(DiscoverCategory item) = _FindByGenre;
  const factory SearchEvent.clear(BuildContext context) = _Clear;
}
