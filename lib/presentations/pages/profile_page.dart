import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/user_bloc.dart';
import 'package:movie_app/bloc/wallet_bloc.dart';
import 'package:movie_app/presentations/helper/text_style.dart';
import 'package:movie_app/presentations/pages/login_page.dart';
import 'package:movie_app/presentations/pages/register_page.dart';
import 'package:movie_app/presentations/widgets/wallet.dart';

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
            signedOut: (message) =>
                context.read<WalletBloc>().add(const WalletEvent.getBalance()),
          );
        },
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return state.when(
                signedIn: (value) => Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                                color: Colors.blue,
                                width: MediaQuery.of(context).size.width,
                                height: 180,
                                padding: const EdgeInsets.all(16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 65,
                                      height: 65,
                                      decoration: BoxDecoration(
                                          color: Colors.blueGrey.shade100,
                                          shape: BoxShape.circle),
                                      child: const Icon(
                                        Icons.person_sharp,
                                        size: 54,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    SizedBox(
                                      height: 65,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(value.name,
                                              style: smallTitle.merge(
                                                  const TextStyle(
                                                      color: Colors.white))),
                                          Text(
                                            value.phoneCC(),
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                            Positioned(
                                top: 130,
                                left: 16,
                                right: 16,
                                child: Container(
                                    height: 100,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 0.1),
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    child: const Wallet()))
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
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    foregroundColor: Colors.white),
                                child: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    child: const Text(
                                      "Log out",
                                      textAlign: TextAlign.center,
                                    ))),
                          ),
                        )
                      ],
                    ),
                signedOut: (value) => Column(
                      children: [
                        Container(
                            color: Colors.blue,
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            padding: const EdgeInsets.all(16),
                            child: Row(
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
                                  child: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    child: const Text(
                                      'Login or Create Account',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                loading: () => Column(
                      children: [
                        Container(
                            color: Colors.blue,
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            padding: const EdgeInsets.all(16),
                            child: Row(
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
                                  child: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    child: const Text(
                                      'Login or Create Account',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ));
          },
        ),
      ),
    );
  }
}
