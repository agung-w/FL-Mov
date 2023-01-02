import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/transaction_bloc.dart';
import 'package:movie_app/bloc/user_bloc.dart';
import 'package:movie_app/presentations/helper/text_style.dart';
import 'package:movie_app/presentations/pages/account_setting_page.dart';
import 'package:movie_app/presentations/pages/all_transaction_history_page.dart';
import 'package:movie_app/presentations/pages/login_page.dart';
import 'package:movie_app/presentations/pages/wallet_history_page.dart';
import 'package:movie_app/presentations/widgets/wallet.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    const divider = Divider(
      height: 0.1,
      thickness: 0.1,
      color: Colors.black87,
    );
    return Scaffold(
      backgroundColor: const Color(0xFFf2f1f6),
      body: BlocBuilder<UserBloc, UserState>(
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
                                      borderRadius: BorderRadius.circular(16)),
                                  child: const Wallet()))
                        ],
                      ),
                      const SizedBox(
                        height: 55,
                      ),
                      _ListTileColumn(
                        childern: [
                          ListTile(
                            leading: _ListTileLeadingIcon(
                                color: Colors.transparent,
                                icon: Icon(
                                  Icons.receipt_long,
                                  color: Colors.amber.withOpacity(0.9),
                                )),
                            title: Text(
                              'All Transactions',
                              style: normalText
                                  .merge(const TextStyle(fontSize: 16)),
                            ),
                            minLeadingWidth: 0,
                            contentPadding:
                                const EdgeInsets.only(left: 16, right: 8),
                            trailing: const Icon(
                              Icons.navigate_next_outlined,
                              size: 32,
                            ),
                            onTap: () {
                              context
                                  .read<TransactionBloc>()
                                  .add(const TransactionEvent.get());

                              Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(
                                  builder: (_) =>
                                      const AllTransactionHistoryPage(),
                                ),
                              );
                            },
                          ),
                          divider,
                          ListTile(
                            leading: _ListTileLeadingIcon(
                                color: Colors.blue,
                                icon: Icon(
                                  Icons.wallet,
                                  color: Colors.white.withOpacity(0.9),
                                )),
                            title: Text(
                              'Wallet History',
                              style: normalText
                                  .merge(const TextStyle(fontSize: 16)),
                            ),
                            minLeadingWidth: 0,
                            contentPadding:
                                const EdgeInsets.only(left: 16, right: 8),
                            trailing: const Icon(
                              Icons.navigate_next_outlined,
                              size: 32,
                            ),
                            onTap: () {
                              context
                                  .read<TransactionBloc>()
                                  .add(const TransactionEvent.get());

                              Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(
                                  builder: (_) => const WalletHistoryPage(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      _ListTileColumn(
                        childern: [
                          ListTile(
                              leading: _ListTileLeadingIcon(
                                  color: Colors.orange.shade200,
                                  icon: const Icon(
                                    Icons.local_activity,
                                    color: Colors.white,
                                    size: 20,
                                  )),
                              title: Text(
                                'Vouchers',
                                style: shadeNormalText
                                    .merge(const TextStyle(fontSize: 16)),
                              ),
                              minLeadingWidth: 0,
                              contentPadding:
                                  const EdgeInsets.only(left: 16, right: 8),
                              trailing: const Icon(
                                Icons.navigate_next_outlined,
                                size: 32,
                                color: Colors.black26,
                              ),
                              onTap: null),
                        ],
                      ),
                      _ListTileColumn(
                        childern: [
                          ListTile(
                            leading: _ListTileLeadingIcon(
                                color: Colors.blueGrey.shade100,
                                icon: Icon(
                                  Icons.person_sharp,
                                  color: Colors.black.withOpacity(0.9),
                                )),
                            title: Text(
                              'Account Settings',
                              style: normalText
                                  .merge(const TextStyle(fontSize: 16)),
                            ),
                            minLeadingWidth: 0,
                            contentPadding:
                                const EdgeInsets.only(left: 16, right: 8),
                            trailing: const Icon(
                              Icons.navigate_next_outlined,
                              size: 32,
                            ),
                            onTap: () {
                              Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(
                                  builder: (_) => const AccountSettingPage(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(16),
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
                                        MediaQuery.of(context).size.width * 0.6,
                                    child: const Text(
                                      "Log out",
                                      textAlign: TextAlign.center,
                                    ))),
                          ),
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
    );
  }
}

class _ListTileColumn extends StatelessWidget {
  final List<Widget> childern;

  const _ListTileColumn({
    required this.childern,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Material(
          child: Column(children: childern),
        ),
      ),
    );
  }
}

class _ListTileLeadingIcon extends StatelessWidget {
  final Color color;

  final Widget icon;

  const _ListTileLeadingIcon({required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      padding: const EdgeInsets.all(3),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: icon,
    );
  }
}
