import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/bloc/wallet_bloc.dart';
import 'package:movie_app/presentations/pages/top_up_page.dart';

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
                        GestureDetector(
                          onTap: () {
                            context
                                .read<WalletBloc>()
                                .add(const WalletEvent.getBalance());
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            width: 150,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Wallet",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Rp ${result.value}",
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "Tap to refresh",
                                  style: TextStyle(),
                                )
                              ],
                            ),
                          ),
                        ),
                        Column(
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
                        )
                      ],
                    ),
                  ),
              failed: (result) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        result.message,
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            context
                                .read<WalletBloc>()
                                .add(const WalletEvent.activate());
                          },
                          child: const Text("Activate"))
                    ],
                  )),
          loading: () => Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    context
                        .read<WalletBloc>()
                        .add(const WalletEvent.activate());
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: 150,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Wallet",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "loading",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Tap to refresh",
                          style: TextStyle(),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
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
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
