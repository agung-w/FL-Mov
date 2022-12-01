import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/bloc/movie_bloc.dart';
import 'package:movie_app/bloc/user_bloc.dart';
import 'package:movie_app/presentations/pages/edit_profile_page.dart';
import 'package:movie_app/presentations/pages/login_page.dart';
import 'package:movie_app/presentations/pages/main_page.dart';
import 'package:movie_app/presentations/pages/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  // final GoRouter router = GoRouter(routes: [
  //   GoRoute(
  //       path: '/login',
  //       name: 'login',
  //       builder: ((context, state) {
  //         return const LoginPage();
  //       })),
  //   GoRoute(
  //       path: '/',
  //       name: 'main page',
  //       builder: (context, state) {
  //         return const MainPage();
  //       },
  //       routes: [
  //         GoRoute(
  //             path: 'profile',
  //             name: 'profile',
  //             builder: (context, state) {
  //               return const ProfilePage();
  //             },
  //             routes: [
  //               GoRoute(
  //                 path: 'edit_profile',
  //                 name: 'edit_profile',
  //                 builder: (context, state) {
  //                   return const EditProfilePage();
  //                 },
  //               )
  //             ])
  //       ])
  // ], initialLocation: '/login', debugLogDiagnostics: true, routerNeglect: true);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      // child: BlocListener<UserBloc, UserState>(
      //   listener: (context, state) {
      //     state.when(
      //         signedOut: () => router.goNamed('login'),
      //         signedIn: (user) => router.goNamed('main page'));
      //   },
      // child: MaterialApp.router(
      //   routeInformationParser: router.routeInformationParser,
      //   routerDelegate: router.routerDelegate,
      //   routeInformationProvider: router.routeInformationProvider,
      //   debugShowCheckedModeBanner: false,
      // ),
      providers: [
        BlocProvider(
            create: (context) =>
                MovieBloc()..add(const MovieEvent.getInTheater())),
        BlocProvider(create: (context) => UserBloc())
      ],
      child: const MaterialApp(
        home: MainPage(),
      ),
      // ),
    );
  }
}
