import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/entities/api_result.dart';
import 'package:movie_app/services/movie_services.dart';

import '../entities/movie.dart';

part 'movie_event.dart';
part 'movie_state.dart';
part 'movie_bloc.freezed.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  MovieBloc() : super(const _Initial()) {
    on<_GetInTheater>((event, emit) async {
      emit(const MovieState.loading());
      final movies = await MovieServices().getInTheater();
      emit(MovieState.loaded(movies));
    });
  }
}
