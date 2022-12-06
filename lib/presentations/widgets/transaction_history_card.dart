import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/transaction_bloc.dart';
import 'package:movie_app/entities/transaction.dart';

class TransactionHistoryCard extends StatelessWidget {
  final Transaction transaction;
  const TransactionHistoryCard({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
      padding: const EdgeInsets.all(10),
      color: Colors.green,
      width: double.infinity,
      height: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${transaction.transactionType} via ${transaction.transactionMethod}",
              ),
              Text(transaction.date)
            ],
          ),
          Text("Rp ${transaction.total}"),
        ],
      ),
    );
  }
}
