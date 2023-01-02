import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/entities/transaction.dart';
import 'package:movie_app/presentations/helper/text_style.dart';
import 'package:movie_app/presentations/widgets/draggable_sheet.dart';

class TransactionHistoryCard extends StatelessWidget {
  final Transaction transaction;
  const TransactionHistoryCard({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    icon(double size) {
      if (transaction.transactionType == "TOP UP") {
        return _IconBackground(
          size: size,
          color: Colors.blue,
          icon: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        );
      } else if (transaction.transactionType == "BUY TICKET") {
        return _IconBackground(
          size: size,
          color: Colors.red,
          icon: const Icon(
            Icons.theaters,
            color: Colors.white,
          ),
        );
      } else {
        return _IconBackground(
          size: size,
          color: Colors.white,
          icon: const Icon(
            Icons.question_mark,
            color: Colors.black,
          ),
        );
      }
    }

    detail() {
      if (transaction.detail != null) {
        TransactionDetail detail = transaction.detail!;
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Text(
                    transaction.detail!.movie.title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                detail.quantity == 1
                    ? Text("${transaction.detail!.quantity} Ticket")
                    : Text("${transaction.detail!.quantity} Tickets")
              ],
            ),
          ),
        );
      } else {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Text(
                    "${transaction.transactionType}",
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
                Text("${transaction.transactionMethod}")
              ],
            ),
          ),
        );
      }
    }

    method({double? size}) {
      if (transaction.transactionType == "BUY TICKET" &&
          transaction.transactionMethod != "Wallet") {
        return Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Text(
              "${transaction.transactionMethod}",
              style: normalText
                  .merge(const TextStyle(fontWeight: FontWeight.w700)),
            ));
      } else {
        return Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _IconBackground(
                  icon: Icon(
                    Icons.wallet,
                    color: Colors.white,
                    size: size == null ? 14 : size - 6,
                  ),
                  color: Colors.blue,
                  size: size ?? 20),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  "Wallet",
                  style: normalText
                      .merge(const TextStyle(fontWeight: FontWeight.w700)),
                ),
              )
            ],
          ),
        );
      }
    }

    return InkWell(
      onTap: () {
        showModalBottomSheet(
            isScrollControlled: true,
            useRootNavigator: true,
            elevation: 2,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            context: context,
            builder: (builder) => DraggableSheet(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 16),
                        child: Center(child: icon(45)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Center(
                          child: Text(
                            transaction.toCurrencyID(transaction.total),
                            style: mediumTitle,
                          ),
                        ),
                      ),
                      if (transaction.detail != null) ...{
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 3),
                                child: Text(
                                  transaction.detail!.movie.title,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              transaction.detail!.quantity == 1
                                  ? Text(
                                      "${transaction.detail!.quantity} Ticket")
                                  : Text(
                                      "${transaction.detail!.quantity} Tickets")
                            ],
                          ),
                        )
                      } else ...{
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                            bottom: 16,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 3),
                                child: Text(
                                  "${transaction.transactionType}",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        )
                      },
                      const Divider(
                        color: Colors.black,
                        thickness: 0.5,
                        height: 0.2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 16),
                        child: Text(
                          "Transaction detail",
                          style: normalText.merge(
                              const TextStyle(fontWeight: FontWeight.w700)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Transaction method", style: normalText),
                            method(size: 18)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Status", style: normalText),
                            Text(
                                transaction.status[0] +
                                    transaction.status
                                        .substring(1)
                                        .toLowerCase(),
                                style: normalText.merge(const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.green))),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Time", style: normalText),
                            Text(
                                DateFormat("h:mm a")
                                    .format(DateTime.parse(transaction.date)),
                                style: normalText.merge(const TextStyle(
                                  fontWeight: FontWeight.w700,
                                ))),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Date", style: normalText),
                            Text(
                                DateFormat("dd MMM yyyy")
                                    .format(DateTime.parse(transaction.date)),
                                style: normalText.merge(const TextStyle(
                                  fontWeight: FontWeight.w700,
                                ))),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Transaction ID", style: normalText),
                            Row(
                              children: [
                                Text("TR-00000${transaction.id}",
                                    style: normalText.merge(const TextStyle(
                                      fontWeight: FontWeight.w700,
                                    ))),
                                IconButton(
                                  iconSize: 14,
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                  icon: const Icon(
                                    Icons.copy,
                                    size: 14,
                                  ),
                                  onPressed: () async {
                                    await Clipboard.setData(ClipboardData(
                                        text: "TR-00000${transaction.id}"));
                                  },
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                        thickness: 0.1,
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total", style: normalText),
                            Text(transaction.toCurrencyID(transaction.total),
                                style: normalText.merge(const TextStyle(
                                  fontWeight: FontWeight.w700,
                                ))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ));
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 4, 0, 0),
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        width: double.infinity,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            icon(30),
            detail(),
            Align(
                alignment: FractionalOffset.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (transaction.transactionType == "BUY TICKET" &&
                        transaction.transactionMethod == "Wallet") ...{
                      Text(transaction.toCurrencyID(transaction.total),
                          style: normalText
                              .merge(const TextStyle(color: Colors.red))),
                    } else if (transaction.transactionType == "TOP UP") ...{
                      Text(transaction.toCurrencyID(transaction.total),
                          style: normalText
                              .merge(const TextStyle(color: Colors.green))),
                    } else ...{
                      Text(
                        transaction.toCurrencyID(transaction.total),
                        style: normalText,
                      )
                    },
                    method()
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class _IconBackground extends StatelessWidget {
  final Color color;

  final Widget icon;

  final double size;

  const _IconBackground(
      {required this.icon, required this.color, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      padding: const EdgeInsets.all(3),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(100)),
      child: icon,
    );
  }
}
