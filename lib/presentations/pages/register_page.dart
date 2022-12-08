import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
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
        title: Text(
          "Register",
          style: GoogleFonts.roboto(fontWeight: FontWeight.w400),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(children: [
            TextInputForm(
              hint: "Name",
              controller: name,
            ),
            PhoneInputForm(
              controller: phone,
            ),

            SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.8,
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
                onPressed: () {
                  context.read<UserBloc>().add(UserEvent.registerInit(
                      int.parse(phone.text).toString(), name.text, context));
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
            // LargeButton(function: () {}, title: "Login"),
          ]),
        ),
      ),
    );
  }
}
