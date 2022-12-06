import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/user_bloc.dart';
import 'package:movie_app/bloc/wallet_bloc.dart';
import 'package:movie_app/presentations/pages/login_page.dart';
import 'package:movie_app/presentations/pages/register_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocListener<UserBloc, UserState>(
        listener: (context, state) {
          state.whenOrNull(
            signedIn: (user) =>
                context.read<WalletBloc>().add(const WalletEvent.getBalance()),
            signedOut: () =>
                context.read<WalletBloc>().add(const WalletEvent.getBalance()),
          );
        },
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
                        child: state.when(
                            signedOut: () {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context, rootNavigator: true)
                                          .push(
                                        MaterialPageRoute(
                                          builder: (_) => const LoginPage(),
                                        ),
                                      );
                                    },
                                    child: const Text('Login'),
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .push(
                                          MaterialPageRoute(
                                            builder: (_) =>
                                                const RegisterPage(),
                                          ),
                                        );
                                      },
                                      child: const Text("Register"))
                                ],
                              );
                            },
                            signedIn: ((user) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        user.name,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        user.phoneCC(),
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  )
                                ],
                              );
                            }),
                            loading: () {})),
                    Positioned(
                        top: 130,
                        left: 16,
                        right: 16,
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 0.1),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          child: BlocBuilder<WalletBloc, WalletState>(
                            builder: (context, state) {
                              return Text(
                                state.when(
                                  initial: () => "Login to use wallet",
                                  loaded: (balance) => balance.map(
                                      success: (result) => result.value,
                                      failed: (result) => result.message),
                                  loading: () => "Loading",
                                ),
                              );
                            },
                          ),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 55,
                ),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: ElevatedButton(
                        onPressed: () {
                          context
                              .read<UserBloc>()
                              .add(const UserEvent.signOut());
                        },
                        child: const Text("Log out")),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
