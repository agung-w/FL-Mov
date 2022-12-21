import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/entities/api_result.dart';
import 'package:movie_app/entities/cinema.dart';
import 'package:movie_app/entities/movie.dart';
import 'package:movie_app/entities/order.dart';
import 'package:movie_app/presentations/pages/book_confirmation_page.dart';
import 'package:movie_app/presentations/pages/select_seat_page.dart';
import 'package:movie_app/services/cinema_services.dart';
import 'package:movie_app/services/order_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    on<_SelectTime>((event, emit) async {
      if (state is _SelectedDate) {
        String date = (state as _SelectedDate).date;
        await CinemaServices()
            .getReservedList(
          studioId: event.studio.id,
          date: "$date ${event.time}:00",
          movieId: int.parse((state as _SelectedDate).movie.tmdbId),
        )
            .then((value) {
          emit(_SelectedTime(
              date: date,
              movie: (state as _SelectedDate).movie,
              cinema: event.cinema,
              studio: event.studio,
              time: "${event.time}:00",
              reservedList: value));
          return Navigator.of(event.context, rootNavigator: true)
              .push(MaterialPageRoute(
            builder: (_) => const SelectSeatPage(),
          ));
        });
      }
    });
    on<_SelectSeat>((event, emit) async {
      if (state is _SelectedTime) {
        SharedPreferences pref = await SharedPreferences.getInstance();
        String? token = pref.getString('token');
        if (token != null) {
          ApiResult<Order> result = await OrderServices().orderTicket(
              movieId: int.parse((state as _SelectedTime).movie.tmdbId),
              studioId: (state as _SelectedTime).studio.id,
              quantity: event.selectedSeats.length,
              schedule:
                  "${(state as _SelectedTime).date} ${(state as _SelectedTime).time}",
              seats: event.selectedSeats,
              token: token);
          result.mapOrNull(
            success: (result) {
              emit(_SelectedSeat(
                date: (state as _SelectedTime).date,
                movie: (state as _SelectedTime).movie,
                cinema: (state as _SelectedTime).cinema,
                studio: (state as _SelectedTime).studio,
                time: (state as _SelectedTime).time,
                order: result.value,
              ));
              Navigator.of(event.context).push(MaterialPageRoute(
                builder: (_) => const BookConfirmationPage(),
              ));
            },
          );
        }
      }
    });
    on<_MakeOrder>((event, emit) async {
      if (state is _SelectedSeat) {
        SharedPreferences pref = await SharedPreferences.getInstance();
        String? token = pref.getString('token');
        if (token != null) {
          await OrderServices()
              .payOrder(orderId: event.orderId, token: token)
              .then((value) =>
                  Navigator.popUntil(event.context, (route) => route.isFirst))
              .then((value) => emit(OrderState.selectedDate(
                  date: (state as _SelectedSeat).date,
                  movie: (state as _SelectedSeat).movie)));
        }
      }
    });
    on<_Cancel>(
      (event, emit) {
        emit(const _Initial());
      },
    );
    on<_CancelTime>(
      (event, emit) {
        state.whenOrNull(
          selectedTime: (movie, date, time, cinema, studio, reservedSeats) =>
              emit(_SelectedDate(movie: movie, date: date)),
        );
      },
    );
    on<_CancelSeat>(
      (event, emit) async {
        if (state is _SelectedSeat) {
          SharedPreferences pref = await SharedPreferences.getInstance();
          String? token = pref.getString('token');
          if (token != null) {
            await OrderServices()
                .cancelOrder(
                    token: token, orderId: (state as _SelectedSeat).order.id)
                .then((value) async {
              await CinemaServices()
                  .getReservedList(
                      studioId: (state as _SelectedSeat).studio.id,
                      movieId: int.parse((state as _SelectedSeat).movie.tmdbId),
                      date:
                          "${(state as _SelectedSeat).date} ${(state as _SelectedSeat).time}")
                  .then((value) {
                emit(_SelectedTime(
                    movie: (state as _SelectedSeat).movie,
                    date: (state as _SelectedSeat).date,
                    time: (state as _SelectedSeat).time,
                    cinema: (state as _SelectedSeat).cinema,
                    studio: (state as _SelectedSeat).studio,
                    reservedList: value));
                Navigator.pop(event.context);
                return null;
              });
              return null;
            });
          }
        }
      },
    );
  }
}
