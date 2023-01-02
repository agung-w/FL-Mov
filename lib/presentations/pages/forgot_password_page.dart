import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/user_bloc.dart';
import 'package:movie_app/presentations/pages/register_page.dart';
import 'package:movie_app/presentations/widgets/phone_input_form.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          "Forgot Password",
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 24),
              child: PhoneInputForm(
                controller: phone,
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () async {
                    if (phone.text.isNotEmpty) {
                      context.read<UserBloc>().add(
                          UserEvent.getChangePasswordToken(
                              phone: int.parse(phone.text).toString(),
                              context: context));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Please fill in the blanks")));
                    }
                  },
                  child: const Text("Confirm")),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const RegisterPage(),
                              ),
                            );
                          },
                          child: const Text(
                            " Register",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
