import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/user_bloc.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                  width: 300,
                  child: TextField(
                    controller: TextEditingController(
                        text: state.when(
                            signedOut: () => '',
                            signedIn: ((user) => user.name),
                            loading: () {})),
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Name'),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
