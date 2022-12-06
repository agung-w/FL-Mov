part of 'movie_bloc.dart';

@freezed
class MovieEvent with _$MovieEvent {
  const factory MovieEvent.getInTheater() = _GetInTheater;
  const factory MovieEvent.getMovieDetail(int id) = _GetMovieDetail;
}
