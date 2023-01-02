import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/user_bloc.dart';
import 'package:movie_app/presentations/helper/text_style.dart';
import 'package:movie_app/presentations/pages/add_email_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountSettingPage extends StatelessWidget {
  const AccountSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    const divider = Divider(
      height: 0.1,
      thickness: 0.1,
      color: Colors.black87,
    );
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return state.mapOrNull(
                signedIn: (value) => Scaffold(
                      appBar: AppBar(title: const Text("Account Settings")),
                      backgroundColor: const Color(0xFFf2f1f6),
                      body: Column(
                        children: [
                          _ListTileColumn(
                            childern: [
                              ListTile(
                                title: Text(
                                  'Name',
                                  style: normalText
                                      .merge(const TextStyle(fontSize: 16)),
                                ),
                                minLeadingWidth: 0,
                                // contentPadding: const EdgeInsets.only(left: 16, right: 8),
                                trailing: Text(
                                  value.user.name,
                                  style: shadeNormalText
                                      .merge(const TextStyle(fontSize: 16)),
                                ),
                              ),
                              divider,
                              ListTile(
                                title: Text(
                                  'Phone Number',
                                  style: normalText
                                      .merge(const TextStyle(fontSize: 16)),
                                ),
                                minLeadingWidth: 0,
                                // contentPadding: const EdgeInsets.only(left: 16, right: 8),
                                trailing: Text(
                                  value.user.phone,
                                  style: shadeNormalText
                                      .merge(const TextStyle(fontSize: 16)),
                                ),
                              ),
                              divider,
                              ListTile(
                                title: Text(
                                  'Email',
                                  style: normalText
                                      .merge(const TextStyle(fontSize: 16)),
                                ),
                                minLeadingWidth: 0,
                                // contentPadding: const EdgeInsets.only(left: 16, right: 8),
                                trailing: value.user.email == null
                                    ? Text(
                                        "Add Email Now",
                                        style: normalText.merge(const TextStyle(
                                            fontSize: 16, color: Colors.blue)),
                                      )
                                    : Text(
                                        "${value.user.email}",
                                        style: shadeNormalText
                                            .merge(const TextStyle(
                                          fontSize: 16,
                                        )),
                                      ),
                                onTap: value.user.email == null
                                    ? () {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .push(
                                          MaterialPageRoute(
                                            builder: (_) =>
                                                const AddEmailPage(),
                                          ),
                                        );
                                      }
                                    : null,
                              ),
                              ListTile(
                                title: Text(
                                  'Change Password',
                                  style: normalText
                                      .merge(const TextStyle(fontSize: 16)),
                                ),
                                minLeadingWidth: 0,
                                // contentPadding: const EdgeInsets.only(left: 16, right: 8),
                                trailing: const Icon(
                                  Icons.navigate_next_outlined,
                                  size: 32,
                                ),
                                onTap: () {
                                  context.read<UserBloc>().add(
                                      UserEvent.getChangePasswordToken(
                                          phone: value.user.phone,
                                          context: context));
                                },
                              ),
                            ],
                          ),
                          const _ListTileColumn(
                            childern: [_ContentFilter()],
                          ),
                        ],
                      ),
                    )) ??
            const Text("");
      },
    );
  }
}

class _ContentFilter extends StatefulWidget {
  const _ContentFilter();
  @override
  State<_ContentFilter> createState() => __ContentFilterState();
}

class __ContentFilterState extends State<_ContentFilter> {
  late SharedPreferences pref;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: SharedPreferences.getInstance()
            .then((value) => value.getBool("adult")),
        builder: (context, snapshot) {
          return SwitchListTile(
            title: Text(
              "Allow Adult Content",
              style: normalText.merge(const TextStyle(
                fontSize: 16,
              )),
            ),
            onChanged: (bool value) async {
              setState(() {
                SharedPreferences.getInstance()
                    .then((result) => result.setBool("adult", value));
              });
            },
            value: snapshot.data ?? false,
          );
        });
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
