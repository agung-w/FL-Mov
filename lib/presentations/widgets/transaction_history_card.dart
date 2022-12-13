import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/bloc/transaction_bloc.dart';
import 'package:movie_app/entities/transaction.dart';

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
      if (transaction.transactionType == "BUY TICKET") {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 3),
                  child: Text(
                    "Judul Film",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Text("Jumlah ticket")
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
                        fontSize: 16, fontWeight: FontWeight.bold),
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
      margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
      padding: const EdgeInsets.all(10),
      color: Colors.green,
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
                  Text(transaction.getTotal()),
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
