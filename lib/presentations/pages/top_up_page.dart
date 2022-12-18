import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/wallet_bloc.dart';
import 'package:movie_app/presentations/widgets/dashed_divider.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TopUpPage extends StatefulWidget {
  const TopUpPage({super.key});

  @override
  State<TopUpPage> createState() => _TopUpPageState();
}

class _TopUpPageState extends State<TopUpPage> {
  TextEditingController amount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Top up")),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Bank Transfer"),
            _MethodCard(
                method: "Bank BCA",
                extra: "Transfer Admin fee Rp 1000",
                infoOnly: true),
            Text("Other Payment Services"),
            _MethodCard(
              method: "QRIS",
              extra: "Service fee 0.7% transaction",
            ),
          ],
        ),
      ),
    );
  }
}

class _MethodCard extends StatelessWidget {
  final String method;
  final String extra;
  final bool? infoOnly;

  const _MethodCard({required this.method, required this.extra, this.infoOnly});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: GestureDetector(
        onTap: () {
          if (infoOnly == true) {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              context: context,
              builder: (context) => _TopUpInfoModal(method: method),
            );
          } else {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => (_TopUpWithPaymentService(
                extra: extra,
                method: method,
              )),
            ));
          }
        },
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey, width: 0.5)),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset(
              'assets/${method.replaceAll(' ', '').toLowerCase()}.png',
              width: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    method,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    extra,
                    style: const TextStyle(fontSize: 12),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class _TopUpInfoModal extends StatelessWidget {
  final String method;

  const _TopUpInfoModal({required this.method});

  @override
  Widget build(BuildContext context) {
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
                  child: Row(children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: Colors.black45,
                          )),
                      child: Image.asset(
                        'assets/${method.replaceAll(' ', '').toLowerCase()}.png',
                        width: 35,
                        height: 35,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        method,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
                ),
              ),
            ],
          ),
          Container(
            height: 6,
            color: Colors.black12,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "How to top up your Wallet:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 8),
                  child: RichText(
                    text: const TextSpan(
                        text: 'ADMIN FEE',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                        children: [
                          TextSpan(
                            text: ' Rp 1.000',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          TextSpan(
                              text: '  · ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          TextSpan(text: ' MIN. TOP UP'),
                          TextSpan(
                            text: ' Rp 10.000',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ]),
                  ),
                ),
                const DashedDivider(),
                SizedBox(
                  height: 65,
                  width: double.infinity,
                  child: TimelineTile(
                    beforeLineStyle: const LineStyle(color: Colors.blue),
                    indicatorStyle: indicatorStyle(step: 1),
                    alignment: TimelineAlign.start,
                    endChild: Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: RichText(
                        text: const TextSpan(
                            text: 'Login to',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w300),
                            children: [
                              TextSpan(
                                text: ' KLIK BCA.',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ]),
                      ),
                    ),
                    isFirst: true,
                  ),
                ),
                SizedBox(
                  height: 65,
                  width: double.infinity,
                  child: TimelineTile(
                    beforeLineStyle: const LineStyle(color: Colors.blue),
                    indicatorStyle: indicatorStyle(step: 2),
                    alignment: TimelineAlign.start,
                    endChild: Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: RichText(
                        text: const TextSpan(
                            text: 'Select',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w300),
                            children: [
                              TextSpan(
                                text:
                                    ' FUND TRANSFER > TRANSFER TO BCA FITRUAL ACCOUNT.',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ]),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: TimelineTile(
                    beforeLineStyle: const LineStyle(color: Colors.blue),
                    indicatorStyle: indicatorStyle(step: 3),
                    alignment: TimelineAlign.start,
                    endChild: Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: RichText(
                        text: const TextSpan(
                            text: 'Enter',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w300),
                            children: [
                              TextSpan(
                                text: ' Cinematix Company code:70001',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    ' and your Cinematix app registered phone number',
                              ),
                              TextSpan(
                                text: ' (example: 700010812XXXXXX).',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ]),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 65,
                  width: double.infinity,
                  child: TimelineTile(
                    beforeLineStyle: const LineStyle(color: Colors.blue),
                    indicatorStyle: indicatorStyle(step: 4),
                    alignment: TimelineAlign.start,
                    endChild: Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: RichText(
                        text: const TextSpan(
                          text: 'Enter top up amount.',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 65,
                  width: double.infinity,
                  child: TimelineTile(
                    beforeLineStyle: const LineStyle(color: Colors.blue),
                    indicatorStyle: indicatorStyle(step: 5),
                    alignment: TimelineAlign.start,
                    endChild: Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: RichText(
                        text: const TextSpan(
                          text:
                              'Follow the next instructions to complete top up.',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                    isLast: true,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  IndicatorStyle indicatorStyle({required int step}) {
    return IndicatorStyle(
        color: Colors.blue,
        height: 25,
        width: 25,
        indicator: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.blue),
          child: Center(
              child: Text(
            '$step',
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          )),
        ));
  }
}

class _TopUpWithPaymentService extends StatefulWidget {
  const _TopUpWithPaymentService({
    required this.method,
    required this.extra,
  });

  final String method;
  final String extra;

  @override
  State<_TopUpWithPaymentService> createState() =>
      _TopUpWithPaymentServiceState();
}

class _TopUpWithPaymentServiceState extends State<_TopUpWithPaymentService> {
  TextEditingController amount = TextEditingController(text: "10000");
  String? error;
  @override
  Widget build(BuildContext context) {
    int recievedBalance =
        int.parse(amount.text) - (int.parse(amount.text) * 0.007).toInt();

    return Scaffold(
      appBar: AppBar(title: Text("Top Up ${widget.method}")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(widget.extra),
          const Divider(
            color: Colors.black12,
            thickness: 1,
          ),
          const Text(
            "Enter Top Up Amount",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          TextFormField(
            autofocus: true,
            textAlignVertical: TextAlignVertical.bottom,
            style: const TextStyle(fontSize: 18),
            autocorrect: false,
            controller: amount,
            onChanged: (value) => setState(() {
              int val = int.parse(value);
              if (val < 10000) {
                error = "Minimum top up amount Rp 10.000";
              } else if (val > 2000000) {
                error = "Maximum top up amount Rp 2.000.000";
              } else {
                error = null;
                recievedBalance = val - (val * 0.007).toInt();
              }
            }),
            maxLines: 1,
            decoration: InputDecoration(
              helperText: "Wallet balance received Rp $recievedBalance",
              labelText: "Amount",
              prefixIconConstraints: const BoxConstraints(maxWidth: 45),
              errorText: error,
            ),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
          Expanded(
              child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    if (error == null) {
                      context.read<WalletBloc>().add(WalletEvent.topUp(
                          recievedBalance.toString(), widget.method, context));
                    }
                  },
                  child: const Text("Top Up Now")),
            ),
          ))
        ]),
      ),
    );
  }
}
