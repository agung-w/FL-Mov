import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/user_bloc.dart';
import 'package:movie_app/presentations/widgets/phone_input_form.dart';
import 'package:movie_app/presentations/widgets/text_input_form.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TextEditingController password = TextEditingController();
    // TextEditingController passwordConfirmation = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Register",
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: TextInputForm(
                hint: "Name",
                controller: name,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 32),
              child: PhoneInputForm(
                controller: phone,
              ),
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    if (phone.text.isNotEmpty || name.text.isNotEmpty) {
                      context.read<UserBloc>().add(UserEvent.registerInit(
                          int.parse(phone.text).toString(),
                          name.text,
                          context));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Please fill in the blanks")));
                    }
                  },
                  child: const Text("Register")),
            )
            // LargeButton(function: () {}, title: "Login"),
          ]),
        ),
      ),
    );
  }
}
