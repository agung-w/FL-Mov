import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/order_bloc.dart';
import 'package:movie_app/entities/cinema.dart';

class CinemaCard extends StatelessWidget {
  final Cinema cinema;

  const CinemaCard({super.key, required this.cinema});

  @override
  Widget build(BuildContext context) {
    List<String> schedule = [
      "10:00",
      "12:00",
      "14:00",
      "16:00",
      "18:00",
      "20:00",
      "22:00"
    ];
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.all(0),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Image.asset(
                    'assets/${cinema.brand}.png',
                    width: 35,
                    height: 35,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Text(
                cinema.name,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black12,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                    children: cinema.studios
                        .map(
                          (e) => Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      e.code,
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(e.getPrice(),
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                              ),
                              GridView.count(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                crossAxisCount: 3,
                                childAspectRatio: 3.5,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                                padding:
                                    const EdgeInsets.only(left: 16, right: 10),
                                children: schedule
                                    .map((time) => GestureDetector(
                                          onTap: () {
                                            context.read<OrderBloc>().add(
                                                OrderEvent.selectTime(
                                                    time: time,
                                                    cinema: cinema,
                                                    studio: e,
                                                    context: context));
                                          },
                                          child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Center(child: Text(time))),
                                        ))
                                    .toList(),
                              )
                            ],
                          ),
                        )
                        .toList()),
              ),
            ),
          )
        ],
      ),
    );
  }
}
