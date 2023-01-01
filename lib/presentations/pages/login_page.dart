import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/user_bloc.dart';
import 'package:movie_app/presentations/pages/register_page.dart';
import 'package:movie_app/presentations/widgets/phone_input_form.dart';
import 'package:movie_app/presentations/widgets/secret_input_form.dart';

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
        title: const Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: PhoneInputForm(
                controller: phone,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: SecretInputForm(
                hint: "Password",
                controller: password,
              ),
            ),
            SizedBox(
              height: 50,
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
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () async {
                    if (phone.text.isNotEmpty || password.text.isNotEmpty) {
                      context.read<UserBloc>().add(UserEvent.signIn(
                          phone: int.parse(phone.text).toString(),
                          password: password.text,
                          context: context));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Please fill in the blanks")));
                    }
                  },
                  child: const Text("Login")),
            ),
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
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const RegisterPage(),
                      ),
                    );
                  },
                  child: const Text("Register")),
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
