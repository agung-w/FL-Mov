import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/bloc/order_bloc.dart';
import 'package:movie_app/entities/cinema.dart';
import 'package:movie_app/presentations/widgets/seat.dart';

class SelectSeatPage extends StatefulWidget {
  const SelectSeatPage({super.key});

  @override
  State<SelectSeatPage> createState() => _SelectSeatPageState();
}

class _SelectSeatPageState extends State<SelectSeatPage> {
  List<String> selectedSeats = [];
  @override
  Widget build(BuildContext context) {
    void onTap(Studio studio, int row, int column) {
      String seatNumber = "${String.fromCharCode(row + 65)}${column + 1}";
      String seatNumberPair =
          "${String.fromCharCode(row + 65)}${column += column.isOdd ? 0 : 2}";
      setState(() {
        if (selectedSeats.contains(seatNumber)) {
          if (studio.code == "VELVET 2D") {
            selectedSeats.remove(seatNumberPair);
          }
          selectedSeats.remove(seatNumber);
        } else {
          if (studio.code == "VELVET 2D") {
            selectedSeats.add(seatNumberPair);
          }
          selectedSeats.add(seatNumber);
        }
        selectedSeats.sort((a, b) {
          return a.toLowerCase().compareTo(b.toLowerCase());
        });
      });
    }

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
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 16, 16, 0),
                                  color: const Color(0xFFefeef3),
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
                                            "${value.cinema.brand} - ${value.studio.code} - ${value.time}"),
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
                            Container(
                              height: 100,
                              color: const Color(0xFF152067),
                              width: double.infinity,
                            ),
                            FutureBuilder(
                              builder: (context, snapshot) => Expanded(
                                  child: InteractiveViewer(
                                boundaryMargin:
                                    const EdgeInsets.fromLTRB(4, 0, 4, 0),
                                constrained: false,
                                scaleEnabled: true,
                                child: Column(children: [
                                  for (int j = 0; j < value.studio.column; j++)
                                    Row(
                                      children: [
                                        for (int i = 0;
                                            i < value.studio.row;
                                            i++)
                                          Seat(
                                              seatNumber:
                                                  "${String.fromCharCode(j + 65)}${i + 1}",
                                              isEnable: true,
                                              isSelected: selectedSeats.contains(
                                                  "${String.fromCharCode(j + 65)}${i + 1}"),
                                              onTap: () {
                                                onTap(value.studio, j, i);
                                              })
                                      ],
                                    )
                                ]),
                              )),
                            ),
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20)),
                              child: Container(
                                height: 100,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(0.0, 1.0), //(x,y)
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    const Text("Selected Seat"),
                                    Row(
                                        children: selectedSeats
                                            .map((e) => Text(e))
                                            .toList()),
                                    Row(
                                      children: [
                                        const Text("Total"),
                                        Text((selectedSeats.length *
                                                double.parse(
                                                    value.studio.price))
                                            .toString())
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ));
                  },
                ) ??
                const Text(""));
      },
    );
  }
}
