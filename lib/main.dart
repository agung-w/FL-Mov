import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_app/bloc/movie_bloc.dart';
import 'package:movie_app/bloc/movie_detail_bloc.dart';
import 'package:movie_app/bloc/order_bloc.dart';
import 'package:movie_app/bloc/search_bloc.dart';
import 'package:movie_app/bloc/ticket_bloc.dart';
import 'package:movie_app/bloc/transaction_bloc.dart';
import 'package:movie_app/bloc/user_bloc.dart';
import 'package:movie_app/bloc/wallet_bloc.dart';
import 'package:movie_app/presentations/helper/text_style.dart';
import 'package:movie_app/presentations/pages/main_page.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
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
                UserBloc()..add(const UserEvent.checkSignInStatus())),
        BlocProvider(
            create: (context) =>
                WalletBloc()..add(const WalletEvent.getBalance())),
        BlocProvider(create: (context) => MovieDetailBloc()),
        BlocProvider(create: (context) => TransactionBloc()),
        BlocProvider(create: (context) => OrderBloc()),
        BlocProvider(create: (context) => TicketBloc()),
        BlocProvider(create: (context) => SearchBloc()),
      ],
      child: MaterialApp(
        theme: ThemeData(
            dividerColor: Colors.transparent,
            fontFamily: 'OpenSans',
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              elevation: 0,
              titleSpacing: 0,
              titleTextStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.fromLTRB(8, 12, 8, 12),
                  textStyle: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87)),
            ),
            snackBarTheme: const SnackBarThemeData(
              backgroundColor: Colors.red,
            )),
        home: const MainPage(),
      ),
    );
  }
}
