import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/user_bloc.dart';
import 'package:movie_app/presentations/widgets/large_button.dart';
import 'package:movie_app/services/auth_services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        LargeButton(
            function: () {
              context.read<UserBloc>().add(const UserEvent.signIn(
                  email: "agung@gmail.com", password: "123"));
            },
            title: "Login"),
        LargeButton(
          function: AuthServices.instance.login(),
          title: "Sign in with google",
          icon: 'assets/google.png',
        ),
      ]),
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
