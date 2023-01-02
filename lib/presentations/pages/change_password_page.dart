import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/user_bloc.dart';
import 'package:movie_app/presentations/widgets/secret_input_form.dart';

class ChangePasswordPage extends StatefulWidget {
  final String phoneNumber;

  const ChangePasswordPage({super.key, required this.phoneNumber});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  TextEditingController password = TextEditingController();

  TextEditingController passwordConfirmation = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Change Password",
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: SecretInputForm(
                hint: "Password",
                controller: password,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 32),
              child: SecretInputForm(
                hint: "Re-type Password",
                controller: passwordConfirmation,
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    context.read<UserBloc>().add(UserEvent.changePassword(
                        phone: widget.phoneNumber,
                        password: password.text,
                        passwordConfirmation: passwordConfirmation.text,
                        context: context));
                  },
                  child: const Text("Change Password")),
            ),
          ]),
        ),
      ),
    );
  }
}
