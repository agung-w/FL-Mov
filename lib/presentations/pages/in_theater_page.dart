import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/presentations/widgets/in_theater_poster.dart';

import '../../bloc/movie_bloc.dart';

class InTheaterPage extends StatefulWidget {
  const InTheaterPage({super.key});

  @override
  State<InTheaterPage> createState() => _InTheaterPageState();
}

class _InTheaterPageState extends State<InTheaterPage> {
  int _current = 0;

  final PageController _pageController =
      PageController(initialPage: 0, viewportFraction: 0.9);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<MovieBloc>().add(const MovieEvent.getInTheater());
          setState(() {
            _current = 0;
          });
        },
        child: BlocBuilder<MovieBloc, MovieState>(
          builder: (context, state) => state.when(
              loaded: (movies) {
                return movies.map(
                    success: (result) => ListView(
                          children: [
                            Container(
                                padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                                child: const Text(
                                  "Now In Theater",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 28),
                                )),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.84,
                              child: PageView.builder(
                                itemBuilder: (context, int index) {
                                  return Transform.scale(
                                    alignment: Alignment.centerLeft,
                                    scale: index == _current ? 1 : 0.9,
                                    child: InTheaterPoster(
                                      movie: result.value.elementAt(
                                          index % result.value.length),
                                      isActive:
                                          index == _current ? true : false,
                                    ),
                                  );
                                },
                                onPageChanged: (value) {
                                  setState(() {
                                    _current = value;
                                  });
                                },
                                padEnds: false,
                                controller: _pageController,
                              ),
                            ),
                          ],
                        ),
                    failed: (result) => ListView(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.9,
                              child: const Center(
                                child: Text(
                                    "Cant fetch data please check your internet connections"),
                              ),
                            ),
                          ],
                        ));
              },
              loading: () => const Center(child: Text("Loading")),
              initial: () => const Center(child: Text(""))),
        ),
      ),
    );
  }
}
