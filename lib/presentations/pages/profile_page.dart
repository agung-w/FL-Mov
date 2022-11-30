import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/bloc/user_bloc.dart';
import 'package:movie_app/entities/user.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.blueGrey.shade100, shape: BoxShape.circle),
                child: const Icon(Icons.person_sharp),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(state.when(
                  signedOut: () => '-', signedIn: ((user) => user.name))),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                    context.goNamed('edit_profile');
                  },
                  child: const Text('Edit Profile'),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read<UserBloc>().add(const UserEvent.signOut());
                  },
                  child: const Text("Logout"))
            ],
          );
        },
      ),
    );
  }
}
