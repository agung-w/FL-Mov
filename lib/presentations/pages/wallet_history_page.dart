import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/bloc/transaction_bloc.dart';
import 'package:movie_app/entities/transaction.dart';
import 'package:movie_app/presentations/helper/text_style.dart';
import 'package:movie_app/presentations/widgets/transaction_history_card.dart';

class WalletHistoryPage extends StatelessWidget {
  const WalletHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Wallet History"),
        ),
        body: BlocBuilder<TransactionBloc, TransactionState>(
          builder: (context, state) {
            return state.when(loaded: (result) {
              return result.map(
                  success: (result) => RefreshIndicator(
                        onRefresh: () async {
                          return context
                              .read<TransactionBloc>()
                              .add(const TransactionEvent.get());
                        },
                        child: GroupedListView<Transaction, String>(
                          elements: result.value
                              .where((element) =>
                                  element.transactionMethod == "Wallet" ||
                                  element.transactionType == "TOP UP")
                              .toList(),
                          groupBy: (element) {
                            String day =
                                element.getDate().day.toString().length == 1
                                    ? "0${element.getDate().day}"
                                    : element.getDate().day.toString();
                            String month =
                                element.getDate().month.toString().length == 1
                                    ? "0${element.getDate().month}"
                                    : element.getDate().month.toString();
                            return '${element.getDate().year}$month$day';
                          },
                          order: GroupedListOrder.DESC,
                          sort: false,
                          groupSeparatorBuilder: (String value) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                DateFormat.yMMMEd()
                                    .format(DateTime.parse(value)),
                                style: mediumTitle,
                              ),
                            );
                          },
                          itemBuilder: (context, element) {
                            return TransactionHistoryCard(transaction: element);
                          },
                        ),
                      ),
                  failed: (result) => Text(result.message));
            }, initial: () {
              return const Text("No transactions");
            }, loading: () {
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
