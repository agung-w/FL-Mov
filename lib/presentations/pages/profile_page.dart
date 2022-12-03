import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/bloc/user_bloc.dart';
import 'package:movie_app/entities/user.dart';
import 'package:movie_app/presentations/pages/login_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                      color: Colors.lightBlue,
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      padding: const EdgeInsets.all(16),
                      child: state.when(signedOut: () {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context, rootNavigator: true).push(
                                  MaterialPageRoute(
                                    builder: (_) => const LoginPage(),
                                  ),
                                );
                              },
                              child: const Text('Login'),
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  context
                                      .read<UserBloc>()
                                      .add(const UserEvent.signOut());
                                },
                                child: const Text("Register"))
                          ],
                        );
                      }, signedIn: ((user) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  context
                                      .read<UserBloc>()
                                      .add(const UserEvent.signOut());
                                },
                                child: const Text("Register")),
                            Container(
                              width: 60 * 1.2,
                              height: 60 * 1.2,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey.shade100,
                                  shape: BoxShape.circle),
                              child: const Icon(
                                Icons.person_sharp,
                                size: 60,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Agung Wijaya Al Halim",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Agung Wijaya Al Halim",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            )
                          ],
                        );
                      }))),
                  Positioned(
                      top: 130,
                      left: 16,
                      right: 16,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 0.1),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                      ))
                ],
              ),
              const SizedBox(
                height: 55,
              ),
            ],
          );
        },
      ),
    );
  }
}
