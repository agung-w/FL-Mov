import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_app/bloc/movie_bloc.dart';
import 'package:movie_app/bloc/user_bloc.dart';
import 'package:movie_app/presentations/pages/edit_profile_page.dart';
import 'package:movie_app/presentations/pages/login_page.dart';
import 'package:movie_app/presentations/pages/main_page.dart';
import 'package:movie_app/presentations/pages/profile_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  SharedPreferences pref = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                MovieBloc()..add(const MovieEvent.getInTheater())),
        BlocProvider(
            create: (context) =>
                UserBloc()..add(const UserEvent.checkSignInStatus()))
      ],
      child: const MaterialApp(
        home: MainPage(),
      ),
      // ),
    );
  }
}
