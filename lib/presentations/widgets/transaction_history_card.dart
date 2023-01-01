import 'package:flutter/material.dart';
import 'package:movie_app/entities/transaction.dart';
import 'package:movie_app/presentations/helper/text_style.dart';

class TransactionHistoryCard extends StatelessWidget {
  final Transaction transaction;
  const TransactionHistoryCard({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    icon() {
      if (transaction.transactionType == "TOP UP") {
        return const Icon(Icons.add);
      } else if (transaction.transactionType == "BUY TICKET") {
        return const Icon(Icons.theaters);
      } else {
        return const Icon(Icons.question_mark);
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

    return Container(
      margin: const EdgeInsets.fromLTRB(0, 4, 0, 0),
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      width: double.infinity,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icon(),
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
                  if (transaction.transactionType == "BUY TICKET" &&
                      transaction.transactionMethod != "Wallet") ...{
                    Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Text("${transaction.transactionMethod}")),
                  } else ...{
                    Row(
                      children: const [Icon(Icons.wallet), Text("Wallet")],
                    )
                  }
                ],
              )),
        ],
      ),
    );
  }
}
