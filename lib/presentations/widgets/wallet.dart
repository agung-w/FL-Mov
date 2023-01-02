import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/transaction_bloc.dart';
import 'package:movie_app/bloc/wallet_bloc.dart';
import 'package:movie_app/entities/currency.dart';
import 'package:movie_app/presentations/pages/top_up_page.dart';
import 'package:movie_app/presentations/pages/wallet_history_page.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WalletBloc, WalletState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Align(
              alignment: FractionalOffset.center,
              child:
                  Text("Login to use wallet", style: TextStyle(fontSize: 20))),
          loaded: (balance) => balance.map(
              success: (result) => Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _WalletBalanceBox(
                          balance: Currency().toCurrencyID(result.value),
                          hint: const Text(
                            "Tap to refresh",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        const _HistoryButton(),
                        const _TopUpButton()
                      ],
                    ),
                  ),
              failed: (result) => Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const _WalletBalanceBox(balance: 'Activate Now'),
                        ElevatedButton(
                            onPressed: () {
                              context
                                  .read<WalletBloc>()
                                  .add(const WalletEvent.activate());
                            },
                            child: const Text("Activate"))
                      ],
                    ),
                  )),
          loading: () => Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                _WalletBalanceBox(
                  balance: 'Loading',
                ),
                _HistoryButton(),
                _TopUpButton()
              ],
            ),
          ),
        );
      },
    );
  }
}

class _TopUpButton extends StatelessWidget {
  const _TopUpButton();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context, rootNavigator: true).push(
              MaterialPageRoute(
                builder: (_) => const TopUpPage(),
              ),
            );
          },
          style: const ButtonStyle(),
          child: const Icon(Icons.add),
        ),
        const Text("Top-up")
      ],
    );
  }
}

class _HistoryButton extends StatelessWidget {
  const _HistoryButton();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            context.read<TransactionBloc>().add(const TransactionEvent.get());

            Navigator.of(context, rootNavigator: true).push(
              MaterialPageRoute(
                builder: (_) => const WalletHistoryPage(),
              ),
            );
          },
          child: const Icon(Icons.receipt_long),
        ),
        const Text("History")
      ],
    );
  }
}

class _WalletBalanceBox extends StatelessWidget {
  final String balance;

  final Widget? hint;

  const _WalletBalanceBox({required this.balance, this.hint});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (hint != null) {
          context.read<WalletBloc>().add(const WalletEvent.getBalance());
        }
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(8, 6, 8, 6),
        width: 150,
        height: 80,
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Wallet",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Text(
              balance,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            hint ?? const Text("")
          ],
        ),
      ),
    );
  }
}
