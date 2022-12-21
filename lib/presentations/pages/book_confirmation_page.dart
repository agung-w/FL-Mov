import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/bloc/order_bloc.dart';
import 'package:movie_app/bloc/wallet_bloc.dart';
import 'package:movie_app/presentations/widgets/dashed_divider.dart';
import 'package:movie_app/presentations/widgets/draggable_bottom_modal.dart';

class BookConfirmationPage extends StatefulWidget {
  const BookConfirmationPage({super.key});

  @override
  State<BookConfirmationPage> createState() => _BookConfirmationPageState();
}

class _BookConfirmationPageState extends State<BookConfirmationPage> {
  String? paymentMethod;
  @override
  void initState() {
    context.read<WalletBloc>().add(const WalletEvent.getBalance());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<OrderBloc>().add(OrderEvent.cancelSeat(context));
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Booking Confirmation"),
        ),
        body: SingleChildScrollView(
          child: BlocBuilder<OrderBloc, OrderState>(
            builder: (context, state) {
              return state.whenOrNull(selectedSeat: (
                    movie,
                    date,
                    time,
                    cinema,
                    studio,
                    order,
                  ) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                  width: 80,
                                  height: 110,
                                  child: Image.network(
                                    movie.getPosterUrl(),
                                    errorBuilder:
                                        (context, error, stackTrace) =>
                                            Image.network(
                                      'https://i.pinimg.com/564x/a1/cd/44/a1cd44f6617beebb9794877ef59082a1.jpg',
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 280,
                                      child: Text(
                                        movie.title,
                                        overflow: TextOverflow.clip,
                                        maxLines: 1,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                    RichText(
                                        text: TextSpan(
                                            text: order.quantity == 1
                                                ? "${order.quantity} Ticket X"
                                                : "${order.quantity} Tickets X",
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                          TextSpan(
                                              text: " ${studio.getPrice()}",
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w700))
                                        ]))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const DashedDivider(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Cinema",
                                style: TextStyle(fontSize: 16),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "${cinema.brand.toUpperCase()} - ${cinema.name}",
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const DashedDivider(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Date",
                                style: TextStyle(fontSize: 16),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    DateFormat("EEEE, dd MMMM yyyy")
                                        .format(DateTime.parse(date)),
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    DateFormat.Hm()
                                        .format(DateTime.parse("$date $time")),
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const DashedDivider(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Seat",
                                style: TextStyle(fontSize: 16),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(children: [
                                    for (int i = 0; i < order.seats.length; i++)
                                      Text(
                                        i < order.seats.length - 1
                                            ? "${order.seats.elementAt(i).seat},"
                                            : order.seats.elementAt(i).seat,
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      )
                                  ]),
                                  Text(
                                    studio.code,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(16),
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: Colors.black12, width: 0.7)),
                          child: Column(children: [
                            const Text('Payment Detail',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 18)),
                            Padding(
                              padding: const EdgeInsets.only(top: 8, bottom: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Ticket Price",
                                      style: TextStyle(fontSize: 16)),
                                  Text(order.toRupiah(order.subTotal),
                                      style: const TextStyle(fontSize: 16))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8, bottom: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Platform fee",
                                      style: TextStyle(fontSize: 16)),
                                  Text(
                                      order.toRupiah(
                                          order.platformFee.toString()),
                                      style: const TextStyle(fontSize: 16))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8, bottom: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Admin fee",
                                      style: TextStyle(fontSize: 16)),
                                  Text(
                                      order.toRupiah(order.adminFee.toString()),
                                      style: const TextStyle(fontSize: 16))
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 8, bottom: 8),
                              child: Divider(
                                height: 1,
                                thickness: 0.2,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8, bottom: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Total payment",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700)),
                                  Text(order.toRupiah(order.total.toString()),
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700))
                                ],
                              ),
                            ),
                          ]),
                        ),
                        BlocConsumer<WalletBloc, WalletState>(
                          listener: (context, state) {
                            state.mapOrNull(
                              loaded: (value) => value.result.mapOrNull(
                                success: (value) {
                                  if (double.parse(value.value) >
                                      double.parse(order.total.toString())) {
                                    setState(
                                      () => paymentMethod = "Wallet",
                                    );
                                  }
                                  return null;
                                },
                              ),
                            );
                          },
                          builder: (context, state) {
                            return Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                        isScrollControlled: true,
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20))),
                                        context: context,
                                        builder: (context) =>
                                            DraggableBottomModal(
                                              header: Row(children: const [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 8),
                                                  child: Text(
                                                    "Payment Method",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                )
                                              ]),
                                              isScrolable: false,
                                              body: const Text("tes"),
                                            ));
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                          padding: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: const Icon(
                                            Icons.wallet,
                                            color: Colors.white,
                                            size: 22,
                                          )),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          paymentMethod ??
                                              "Choose Payment Method",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16),
                                        ),
                                      ),
                                      const Icon(Icons.expand_more)
                                    ],
                                  )),
                            );
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: paymentMethod != null
                                    ? () {
                                        context.read<OrderBloc>().add(
                                            OrderEvent.makeOrder(
                                                orderId: order.id,
                                                context: context));
                                      }
                                    : null,
                                child: const Text("Order Now")),
                          ),
                        )
                      ],
                    );
                  }) ??
                  const Text("");
            },
          ),
        ),
      ),
    );
  }
}
