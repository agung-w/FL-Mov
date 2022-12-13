import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/bloc/order_bloc.dart';

class SelectSeatPage extends StatelessWidget {
  const SelectSeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderBloc, OrderState>(
      builder: (context, state) {
        return WillPopScope(
            onWillPop: () async {
              context.read<OrderBloc>().add(const OrderEvent.cancelTime());
              Navigator.pop(context);
              return false;
            },
            child: state.mapOrNull(
                  selectedTime: (value) {
                    return Scaffold(
                        appBar: AppBar(
                          toolbarHeight: 230,
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          leading: Align(
                            alignment: FractionalOffset.topLeft,
                            child: IconButton(
                              icon: const Icon(Icons.arrow_back),
                              onPressed: () {
                                context
                                    .read<OrderBloc>()
                                    .add(const OrderEvent.cancelTime());

                                Navigator.pop(context);
                              },
                            ),
                          ),
                          flexibleSpace: Column(
                            children: [
                              const SizedBox(height: 75),
                              Container(
                                height: 80,
                                margin:
                                    const EdgeInsets.only(left: 16, right: 16),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      value.movie.title,
                                      style: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                      child:
                                          Text("Rating ${value.movie.rating}"),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20)),
                                    color: Colors.black12,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        DateFormat('EEEE, d MMM yyyy ')
                                            .format(DateTime.parse(value.date)),
                                        style: const TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 5, 0, 0),
                                        child: Text(
                                            "${value.cinemaName} - ${value.studioName} - ${value.time}"),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                        ),
                        body: Column(
                          children: [
                            const Expanded(
                                child: Center(child: Text("Layout Seat"))),
                            Container(
                              height: 150,
                              decoration: const BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                            )
                          ],
                        ));
                  },
                ) ??
                const Text("data"));
      },
    );
  }
}
