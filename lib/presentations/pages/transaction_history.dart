import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/transaction_bloc.dart';
import 'package:movie_app/presentations/widgets/transaction_history_card.dart';
import 'package:movie_app/services/transaction_services.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Transaction History"),
        ),
        body: BlocBuilder<TransactionBloc, TransactionState>(
          builder: (context, state) {
            return state.when(
                loaded: (result) => SingleChildScrollView(
                      child: Column(
                          children: (result.mapOrNull(
                                      success: (value) => value.value) ??
                                  [])
                              .map(
                                  (e) => TransactionHistoryCard(transaction: e))
                              .toList()),
                    ),
                initial: () {
                  return const Text("No transactions");
                },
                loading: () {
                  return const Align(
                      alignment: FractionalOffset.center,
                      child: SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator()));
                });
          },
        ));
  }
}
