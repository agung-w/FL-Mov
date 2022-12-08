import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/bloc/user_bloc.dart';
import 'package:movie_app/presentations/pages/register_page.dart';
import 'package:movie_app/presentations/widgets/large_input_with_icon.dart';
import 'package:movie_app/presentations/widgets/phone_input_form.dart';
import 'package:movie_app/presentations/widgets/secret_input_form.dart';
import 'package:movie_app/presentations/widgets/text_input_form.dart';
import 'package:movie_app/services/auth_services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Login",
          style: GoogleFonts.roboto(fontWeight: FontWeight.w400),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(children: [
            PhoneInputForm(
              controller: phone,
            ),
            SecretInputForm(
              hint: "Password",
              controller: password,
            ),
            SizedBox(
              height: 40,
              child: Row(children: [
                const Text("Forgot password?"),
                GestureDetector(
                    onTap: () {},
                    child: const Text(
                      " reset",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              ]),
            ),
            ElevatedButton(
                onPressed: () async {
                  if (phone.text.length > 1) {
                    context.read<UserBloc>().add(UserEvent.signIn(
                        phone: int.parse(phone.text).toString(),
                        password: password.text,
                        context: context));
                  }
                },
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.black, width: 0.5),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    textStyle: const TextStyle(fontWeight: FontWeight.normal)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Login"),
                  ],
                )),
            // LargeButton(function: () {}, title: "Login"),
            SizedBox(
              height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Don't have an account yet ?",
                    style: TextStyle(color: Colors.black54),
                  )
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const RegisterPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.black, width: 0.5),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    textStyle: const TextStyle(fontWeight: FontWeight.normal)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Register"),
                  ],
                )),
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
