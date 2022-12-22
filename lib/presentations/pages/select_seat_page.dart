import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/bloc/order_bloc.dart';
import 'package:movie_app/entities/cinema.dart';
import 'package:movie_app/entities/currency.dart';
import 'package:movie_app/presentations/helper/color_pallet.dart';
import 'package:movie_app/presentations/widgets/dashed_divider.dart';
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
      String seatNumber =
          "${String.fromCharCode(65 + (studio.column - 1 - row))}${column + 1}";
      String seatNumberPair =
          "${String.fromCharCode(65 + (studio.column - 1 - row))}${column += column.isOdd ? 0 : 2}";
      setState(() {
        if (selectedSeats.length < 6) {
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
        } else {
          if (selectedSeats.contains(seatNumber)) {
            if (studio.code == "VELVET 2D") {
              selectedSeats.remove(seatNumberPair);
            }
            selectedSeats.remove(seatNumber);
          } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("Maximum 6 seat")));
          }
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
                        backgroundColor:
                            const Color.fromARGB(245, 245, 245, 255),
                        appBar: AppBar(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          title: Text(value.movie.title),
                          bottom: AppBar(
                            automaticallyImplyLeading: false,
                            toolbarHeight: 55,
                            flexibleSpace: SizedBox(
                              height: 55,
                              child: Column(children: [
                                const Divider(
                                  color: Colors.black12,
                                  thickness: 1,
                                  height: 1,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(16, 0, 16, 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                            "${value.cinema.name} - ${DateFormat('EEEE, d MMM yyyy ').format(DateTime.parse(value.date))}"),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              value.studio.code,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                                "Showtime ${DateFormat.Hm().format(DateTime.parse("${value.date} ${value.time}"))}")
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ),
                        body: Column(
                          children: [
                            Container(
                              height: 100,
                              color: const Color(0xFF152067),
                              width: double.infinity,
                              child: const Center(
                                child: Text(
                                  "SCREEN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28),
                                ),
                              ),
                            ),
                            FutureBuilder(
                              builder: (context, snapshot) => Expanded(
                                  child: InteractiveViewer(
                                constrained: false,
                                scaleEnabled: true,
                                child: SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.62,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 35,
                                          ),
                                          for (int j = 0;
                                              j < value.studio.column;
                                              j++)
                                            Row(
                                              children: [
                                                for (int i = 0;
                                                    i < value.studio.row;
                                                    i++) ...{
                                                  Seat(
                                                      seatNumber:
                                                          "${String.fromCharCode(65 + (value.studio.column - 1 - j))}${i + 1}",
                                                      isEnable: value
                                                                  .reservedList !=
                                                              null
                                                          ? value.reservedList!
                                                              .contains(
                                                                  "${String.fromCharCode(65 + (value.studio.column - 1 - j))}${i + 1}")
                                                          : true,
                                                      isSelected: selectedSeats
                                                          .contains(
                                                              "${String.fromCharCode(65 + (value.studio.column - 1 - j))}${i + 1}"),
                                                      onTap: () {
                                                        onTap(
                                                            value.studio, j, i);
                                                      }),
                                                  if (value.studio.column <
                                                          10 &&
                                                      i.isOdd)
                                                    const SizedBox(
                                                      height: 25,
                                                      width: 25,
                                                    )
                                                }
                                              ],
                                            )
                                        ]),
                                  ),
                                ),
                              )),
                            ),
                            Container(
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
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(16, 8, 16, 8),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Colors.black),
                                              ),
                                              width: 12,
                                              height: 12,
                                            ),
                                            const Text(" Unavailable"),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: Colors.grey,
                                                border: Border.all(
                                                    color: Colors.black),
                                              ),
                                              width: 12,
                                              height: 12,
                                            ),
                                            const Text(" Available"),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: Colors.blue,
                                                border: Border.all(
                                                    color: Colors.black),
                                              ),
                                              width: 12,
                                              height: 12,
                                            ),
                                            const Text(" Selected"),
                                          ],
                                        )
                                      ],
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                                      child: DashedDivider(
                                        height: 1,
                                      ),
                                    ),
                                    if (selectedSeats.isNotEmpty) ...{
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 4),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            if (selectedSeats.length > 1)
                                              Text(
                                                  "${selectedSeats.length} seats selected")
                                            else
                                              Text(
                                                  "${selectedSeats.length} seat selected"),
                                            GestureDetector(
                                              onTap: () => setState(() {
                                                selectedSeats.clear();
                                              }),
                                              child: const Text(
                                                "Clear all",
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 4),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(children: [
                                              for (int i = 0;
                                                  i < selectedSeats.length;
                                                  i++)
                                                Text(
                                                  i < selectedSeats.length - 1
                                                      ? "${selectedSeats.elementAt(i)},"
                                                      : selectedSeats
                                                          .elementAt(i),
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                            ]),
                                            Text(
                                                Currency().toCurrencyID(
                                                    "${selectedSeats.length * double.parse(value.studio.price)}"),
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold))
                                          ],
                                        ),
                                      )
                                    },
                                    SizedBox(
                                      width: double.infinity,
                                      child: ElevatedButton(
                                          onPressed: selectedSeats.isNotEmpty
                                              ? () {
                                                  context.read<OrderBloc>().add(
                                                      OrderEvent.selectSeat(
                                                          selectedSeats:
                                                              selectedSeats,
                                                          context: context));
                                                }
                                              : null,
                                          child: const Text("Continue")),
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
