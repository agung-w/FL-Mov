import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/wallet_bloc.dart';

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
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text("Amount"),
              TextFormField(
                textAlignVertical: TextAlignVertical.bottom,
                style: const TextStyle(fontSize: 18),
                autocorrect: false,
                controller: amount,
                onChanged: (value) => setState(() {}),
                decoration: const InputDecoration(
                  hintText: "Top up amount",
                  prefixIcon: Text(
                    "Rp ",
                    style: TextStyle(color: Colors.black54, fontSize: 18),
                  ),
                  prefixIconConstraints: BoxConstraints(maxWidth: 45),
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
              Expanded(
                  child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: ElevatedButton(
                    onPressed: () {
                      if (amount.text.length > 4) {
                        context.read<WalletBloc>().add(WalletEvent.topUp(
                            amount.text, "Tes Method", context));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Min. amount Rp 10000")));
                      }
                    },
                    child: const Text("Confirm")),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
