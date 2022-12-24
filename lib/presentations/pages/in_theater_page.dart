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
  late Timer _timer;
  final PageController _pageController = PageController(
    viewportFraction: 0.9,
    initialPage: 0,
  );
  // @override
  // void initState() {
  //   super.initState();

  //   _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
  //     _current++;

  //     _pageController.animateToPage(
  //       _current,
  //       duration: const Duration(milliseconds: 350),
  //       curve: Curves.easeIn,
  //     );
  //   });
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _timer.cancel();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: const Text(
              "Now In Theater",
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
            ),
          ),
          BlocBuilder<MovieBloc, MovieState>(
            builder: (context, state) =>
                state.whenOrNull(
                    loaded: (movies) {
                      return movies.map(
                          success: (result) => Expanded(
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
                          failed: (result) => Text(result.message));
                      // return Text(movies.toString());
                    },
                    loading: () => const Text("loading"),
                    initial: () => const Text("init")) ??
                const Text("Cant Fetch Movies Right Now"),
          ),
        ]);
  }
}
