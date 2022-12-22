import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/bloc/order_bloc.dart';
import 'package:movie_app/bloc/wallet_bloc.dart';
import 'package:movie_app/entities/currency.dart';
import 'package:movie_app/entities/transaction.dart';
import 'package:movie_app/presentations/pages/top_up_page.dart';
import 'package:movie_app/presentations/widgets/dashed_divider.dart';

class BookConfirmationPage extends StatefulWidget {
  const BookConfirmationPage({super.key});

  @override
  State<BookConfirmationPage> createState() => _BookConfirmationPageState();
}

class _BookConfirmationPageState extends State<BookConfirmationPage> {
  late PaymentMethod paymentMethod;
  late bool disableWallet;
  Currency currency = Currency();
  PaymentMethod choose = PaymentMethod(
      name: "Choose Payment Method",
      icon: const _PaymentMethodIcon(
          icon: Icon(
        Icons.trip_origin,
        color: Colors.white,
        size: 22,
      )));
  PaymentMethod wallet = PaymentMethod(
      name: "Wallet",
      icon: const _PaymentMethodIcon(
          icon: Icon(
        Icons.wallet,
        color: Colors.white,
        size: 22,
      )));
  PaymentMethod bca = PaymentMethod(
    name: "Bca",
    icon: Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black, width: 0.2)),
      child: Image(
        image: Image.asset(
          'assets/bankbca.png',
        ).image,
      ),
    ),
    fee: 15000,
  );

  @override
  void initState() {
    context.read<WalletBloc>().add(const WalletEvent.getBalance());
    paymentMethod = choose;
    disableWallet = true;

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
                                    child:
                                        movie.moviePosterUrl(movie.posterUrl)),
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
                                                ? "${order.quantity} Ticket X "
                                                : "${order.quantity} Tickets X ",
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                          TextSpan(
                                              text: studio
                                                  .toCurrencyID(studio.price),
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
                                  Text(order.toCurrencyID(order.subTotal),
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
                                  Text(order.toCurrencyID(order.platformFee),
                                      style: const TextStyle(fontSize: 16))
                                ],
                              ),
                            ),
                            if (paymentMethod.fee != 0) ...{
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, bottom: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Admin fee",
                                        style: TextStyle(fontSize: 16)),
                                    Text(
                                        order.toCurrencyID(
                                            paymentMethod.fee.toString()),
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
                            },
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
                                  Text(
                                      order.toCurrencyID(
                                          (double.parse(order.total!) +
                                                  paymentMethod.fee)
                                              .toString()),
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
                                success: (balance) {
                                  setState(() {
                                    wallet.balance = balance.value;
                                    if (double.parse(balance.value) >
                                        double.parse(order.total.toString())) {
                                      paymentMethod = wallet;
                                      disableWallet = false;
                                    }
                                  });
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
                                            selectPaymentMethod());
                                  },
                                  child: _SelectedPaymentMethodCard(
                                    paymentMethod: paymentMethod,
                                  )),
                            );
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: paymentMethod != choose
                                    ? () {
                                        context.read<OrderBloc>().add(
                                            OrderEvent.makeOrder(
                                                orderId: order.id,
                                                context: context,
                                                paymentMethod: paymentMethod));
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

  DraggableScrollableSheet selectPaymentMethod() {
    return DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.9,
        maxChildSize: 0.9,
        minChildSize: 0.6,
        builder: (BuildContext context, ScrollController scrollController) =>
            Column(
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Positioned(
                      top: 5,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
                      child: SizedBox(
                        height: 75,
                        child: Row(children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              "Payment Method",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
                StatefulBuilder(builder: (context, localSetState) {
                  return Column(children: [
                    RadioListTile(
                      value: wallet,
                      groupValue: paymentMethod,
                      autofocus: !disableWallet,
                      selected: paymentMethod == wallet,
                      onChanged: !disableWallet
                          ? (value) => localSetState(() {
                                setState(() {
                                  paymentMethod = wallet;
                                });
                              })
                          : null,
                      title: !disableWallet
                          ? _PaymentMethodCard(
                              paymentMethod: wallet,
                              description:
                                  "Balance: ${currency.toCurrencyID(wallet.balance)}",
                            )
                          : _DisabledPaymentMethodCard(
                              ctx: context,
                              paymentMethod: wallet,
                              notes: "Low balance: ${wallet.balance}",
                            ),
                    ),
                    RadioListTile(
                      value: bca,
                      groupValue: paymentMethod,
                      selected: paymentMethod == bca,
                      onChanged: (value) => localSetState(() {
                        setState(() {
                          paymentMethod = bca;
                        });
                      }),
                      title: _PaymentMethodCard(
                        paymentMethod: bca,
                        description:
                            "Admin fee: ${currency.toCurrencyID(bca.fee.toString())}",
                      ),
                    )
                  ]);
                }),
              ],
            ));
  }
}

class _PaymentMethodCard extends StatelessWidget {
  final String? description;

  const _PaymentMethodCard({required this.paymentMethod, this.description});
  final PaymentMethod paymentMethod;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        paymentMethod.icon,
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                paymentMethod.name,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
              Text(description ?? ""),
            ],
          ),
        ),
      ],
    );
  }
}

class _DisabledPaymentMethodCard extends StatelessWidget {
  final String notes;

  final BuildContext ctx;

  const _DisabledPaymentMethodCard(
      {required this.paymentMethod, required this.notes, required this.ctx});
  final PaymentMethod paymentMethod;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        paymentMethod.icon,
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  paymentMethod.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 16),
                ),
                Text(
                  notes,
                  maxLines: 1,
                  style: const TextStyle(color: Colors.red, fontSize: 14),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(ctx, rootNavigator: true)
                .pushReplacement(MaterialPageRoute(
              builder: (_) => (const TopUpPage()),
            ));
          },
          child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: const Center(
                  child:
                      Text("Top Up", style: TextStyle(color: Colors.white)))),
        )
      ],
    );
  }
}

class _SelectedPaymentMethodCard extends StatelessWidget {
  const _SelectedPaymentMethodCard({required this.paymentMethod});
  final PaymentMethod paymentMethod;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        paymentMethod.icon,
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            paymentMethod.name,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          ),
        ),
        const Icon(Icons.expand_more)
      ],
    );
  }
}

class _PaymentMethodIcon extends StatelessWidget {
  final Widget icon;

  const _PaymentMethodIcon({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(20)),
        child: icon);
  }
}
