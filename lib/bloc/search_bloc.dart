import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/entities/movie.dart';
import 'package:movie_app/services/movie_services.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const _Initial()) {
    on<_TopSearch>((event, emit) async {
      if (state is _Loaded) {
        if ((state as _Loaded).query == event.query) {
          _Loaded value = (state as _Loaded);
          emit(_Loaded(
              results: value.results,
              query: value.query,
              movieList: value.results.movieList,
              inTheaterList: value.results.inTheaterList,
              personList: value.results.personList,
              tvShowList: value.results.tvList,
              index: 0));
        } else {
          await MovieServices().search(query: event.query).then((value) =>
              value.map(
                  success: (value) => emit(_Loaded(
                      results: value.value,
                      query: event.query,
                      movieList: value.value.movieList,
                      inTheaterList: value.value.inTheaterList,
                      personList: value.value.personList,
                      tvShowList: value.value.tvList,
                      index: 0)),
                  failed: (message) => emit(
                      _LoadFailed(message: "No result for ${event.query}"))));
        }
      } else {
        await MovieServices().search(query: event.query).then((value) =>
            value.map(
                success: (value) => emit(_Loaded(
                    results: value.value,
                    query: event.query,
                    movieList: value.value.movieList,
                    inTheaterList: value.value.inTheaterList,
                    personList: value.value.personList,
                    tvShowList: value.value.tvList,
                    index: 0)),
                failed: (message) => emit(
                    _LoadFailed(message: "No result for ${event.query}"))));
      }
    });
    on<_MovieSearch>((event, emit) async {
      if (state is _Loaded) {
        if ((state as _Loaded).query == event.query) {
          _Loaded value = (state as _Loaded);
          emit(_Loaded(
              results: value.results,
              query: value.query,
              movieList: value.results.movieList,
              inTheaterList: value.results.inTheaterList,
              index: 1));
        } else {
          await MovieServices().search(query: event.query).then((value) =>
              value.map(
                  success: (value) => emit(_Loaded(
                      results: value.value,
                      query: event.query,
                      movieList: value.value.movieList,
                      inTheaterList: value.value.inTheaterList,
                      index: 1)),
                  failed: (message) => emit(
                      _LoadFailed(message: "No result for ${event.query}"))));
        }
      } else {
        await MovieServices().search(query: event.query).then((value) =>
            value.map(
                success: (value) => emit(_Loaded(
                    results: value.value,
                    query: event.query,
                    movieList: value.value.movieList,
                    inTheaterList: value.value.inTheaterList,
                    index: 1)),
                failed: (message) => emit(
                    _LoadFailed(message: "No result for ${event.query}"))));
      }
    });
    on<_PersonSearch>((event, emit) async {
      if (state is _Loaded) {
        if ((state as _Loaded).query == event.query) {
          _Loaded value = (state as _Loaded);
          emit(_Loaded(
              results: value.results,
              query: value.query,
              personList: value.results.personList,
              index: 3));
        } else {
          await MovieServices().search(query: event.query).then((value) =>
              value.map(
                  success: (value) => emit(_Loaded(
                      results: value.value,
                      query: event.query,
                      personList: value.value.personList,
                      index: 3)),
                  failed: (message) => emit(
                      _LoadFailed(message: "No result for ${event.query}"))));
        }
      } else {
        await MovieServices().search(query: event.query).then((value) =>
            value.map(
                success: (value) => emit(_Loaded(
                    results: value.value,
                    query: event.query,
                    personList: value.value.personList,
                    index: 3)),
                failed: (message) => emit(
                    _LoadFailed(message: "No result for ${event.query}"))));
      }
    });
    on<_TvSearch>((event, emit) async {
      if (state is _Loaded) {
        if ((state as _Loaded).query == event.query) {
          _Loaded value = (state as _Loaded);
          emit(_Loaded(
              results: value.results,
              query: value.query,
              tvShowList: value.results.tvList,
              index: 2));
        } else {
          await MovieServices().search(query: event.query).then((value) =>
              value.map(
                  success: (value) => emit(_Loaded(
                      results: value.value,
                      query: event.query,
                      tvShowList: value.value.tvList,
                      index: 2)),
                  failed: (message) => emit(
                      _LoadFailed(message: "No result for ${event.query}"))));
        }
      } else {
        await MovieServices().search(query: event.query).then((value) =>
            value.map(
                success: (value) => emit(_Loaded(
                    results: value.value,
                    query: event.query,
                    tvShowList: value.value.tvList,
                    index: 2)),
                failed: (message) => emit(
                    _LoadFailed(message: "No result for ${event.query}"))));
      }
    });

    on<_FindByGenre>((event, emit) async {
      if (state is _Initial) {
        await MovieServices().searchByGenre(id: event.item).then((value) =>
            value.map(
                success: (value) => emit(_Loaded(
                    results: value.value, query: event.item.name, index: 0)),
                failed: (value) => emit(_LoadFailed(message: value.message))));
      }
    });

    on<_Clear>((event, emit) {
      emit(const _Initial());
      Navigator.pop(event.context);
    });
  }
}
