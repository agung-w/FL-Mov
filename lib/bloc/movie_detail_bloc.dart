import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/entities/api_result.dart';
import 'package:movie_app/entities/movie.dart';
import 'package:movie_app/services/movie_services.dart';

part 'movie_detail_event.dart';
part 'movie_detail_state.dart';
part 'movie_detail_bloc.freezed.dart';

class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  MovieDetailBloc() : super(const _Initial()) {
    on<_GetDetail>((event, emit) async {
      emit(const MovieDetailState.loading());
      final movie = await MovieServices().getMovieDetail(event.id);
      emit(MovieDetailState.loaded(movie));
    });
  }
}
