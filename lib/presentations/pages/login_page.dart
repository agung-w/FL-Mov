import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/bloc/user_bloc.dart';
import 'package:movie_app/presentations/pages/register_page.dart';
import 'package:movie_app/presentations/widgets/large_input_with_icon.dart';
import 'package:movie_app/presentations/widgets/secret_input_form.dart';
import 'package:movie_app/presentations/widgets/text_input_form.dart';
import 'package:movie_app/services/auth_services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

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
            TextInputForm(
              hint: "Email",
              controller: email,
              prefix: const Text("data"),
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
                  context.read<UserBloc>().add(const UserEvent.signIn(
                      email: "agung@gmail.com", password: "123"));
                },
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.black, width: 0.5),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    textStyle: const TextStyle(fontWeight: FontWeight.normal)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("login"),
                  ],
                )),
            // LargeButton(function: () {}, title: "Login"),
            SizedBox(
              height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "OR",
                    style: TextStyle(color: Colors.black54),
                  )
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  AuthServices().login("8122018185", "agungwijaya");
                },
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.black, width: 0.5),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    textStyle: const TextStyle(fontWeight: FontWeight.normal)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(
                        width: 30,
                        height: 30,
                        image: AssetImage('assets/google.png')),
                    Text("Google Sign In"),
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
                            Navigator.of(context, rootNavigator: true).push(
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
