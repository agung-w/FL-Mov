import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/entities/cinema.dart';
import 'package:movie_app/entities/movie.dart';
import 'package:movie_app/presentations/pages/select_seat_page.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(const _Initial()) {
    on<_SelectMovie>(
      (event, emit) {
        state.mapOrNull(
          initial: (value) {
            emit(_SelectedMovie(movie: event.movie));
          },
        );
      },
    );
    on<_SelectDate>(
      (event, emit) {
        state.mapOrNull(
          selectedMovie: (value) {
            emit(
              _SelectedDate(date: event.date, movie: value.movie),
            );
          },
          selectedDate: (value) {
            emit(_SelectedDate(movie: value.movie, date: event.date));
          },
        );
      },
    );
    on<_SelectTime>((event, emit) {
      state.mapOrNull(
        selectedDate: (value) {
          String date = value.date;
          emit(_SelectedTime(
              date: date,
              movie: value.movie,
              cinema: event.cinema,
              studio: event.studio,
              time: "${event.time}:00"));
          Navigator.of(event.context, rootNavigator: true)
              .push(MaterialPageRoute(
            builder: (_) => const SelectSeatPage(),
          ));
        },
      );
    });
    on<_Cancel>(
      (event, emit) {
        emit(const _Initial());
      },
    );
    on<_CancelTime>(
      (event, emit) {
        state.whenOrNull(
          selectedTime: (movie, date, time, cinema, studio) =>
              emit(_SelectedDate(movie: movie, date: date)),
        );
      },
    );
  }
}
