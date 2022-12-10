import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/presentations/widgets/in_theater_poster.dart';
import 'package:movie_app/services/movie_services.dart';

import '../../bloc/movie_bloc.dart';

class InTheaterPage extends StatefulWidget {
  const InTheaterPage({super.key});

  @override
  State<InTheaterPage> createState() => _InTheaterPageState();
}

class _InTheaterPageState extends State<InTheaterPage> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: Text(
              "Now In Theater",
              textAlign: TextAlign.start,
              style:
                  GoogleFonts.roboto(fontWeight: FontWeight.w800, fontSize: 30),
            ),
          ),
          BlocBuilder<MovieBloc, MovieState>(
            builder: (context, state) =>
                state.whenOrNull(
                    loaded: (movies) {
                      return movies.map(
                          success: (result) => Expanded(
                                child: PageView.builder(
                                  itemCount: result.value.length,
                                  itemBuilder: (context, int index) {
                                    return Transform.scale(
                                      alignment: Alignment.centerLeft,
                                      scale: index == _current ? 1 : 0.9,
                                      child: InTheaterPoster(
                                        movie: result.value.elementAt(index),
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
                                  controller:
                                      PageController(viewportFraction: 0.9),
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
