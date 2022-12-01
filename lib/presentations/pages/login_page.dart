import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/bloc/user_bloc.dart';
import 'package:movie_app/presentations/widgets/large_button.dart';
import 'package:movie_app/presentations/widgets/large_input_with_icon.dart';
import 'package:movie_app/services/auth_services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          const LargeInputWithIcon(
            icon: Icons.person_2_outlined,
            hint: "Email",
            isSecret: false,
          ),
          const SizedBox(
            height: 10,
          ),
          const LargeInputWithIcon(
            icon: Icons.lock_outline,
            hint: "Password",
            isSecret: true,
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
          LargeButton(
              function: () {
                context.read<UserBloc>().add(const UserEvent.signIn(
                    email: "agung@gmail.com", password: "123"));
              },
              title: "Login"),
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
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: ElevatedButton(
                onPressed: () async {
                  AuthServices.instance.login();
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
                        onTap: () {},
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
    );
  }
}

// class MainPage extends StatelessWidget {
//   const MainPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: [
//           ElevatedButton(
//               onPressed: () {
//                 context.goNamed('profile');
//               },
//               child: const Text("Profile")),
//           ElevatedButton(
//               onPressed: () {
//                 context.read<UserBloc>().add(const UserEvent.signOut());
//               },
//               child: const Text("Logout"))
//         ],
//       ),
//     );
//   }
// }
