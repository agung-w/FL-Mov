import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/presentations/widgets/in_theater_poster.dart';
import 'package:movie_app/services/movie_services.dart';

import '../../bloc/movie_bloc.dart';

class InTheaterPage extends StatefulWidget {
  final onPush;

  const InTheaterPage({super.key, this.onPush});

  @override
  State<InTheaterPage> createState() => _InTheaterPageState();
}

class _InTheaterPageState extends State<InTheaterPage> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        BlocBuilder<MovieBloc, MovieState>(
          builder: (context, state) => state.when(
              loaded: (movies) {
                // return Text(movies.toString());
                if (movies != null) {
                  return Container(
                    // margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    // color: Colors.black,
                    child: CarouselSlider.builder(
                        itemCount: movies.length,
                        itemBuilder: (context, int index, idx) {
                          return Transform.scale(
                            scale: index == _current ? 1 : 0.9,
                            child: InTheaterPoster(
                              movie: movies.elementAt(index),
                              isActive: index == _current ? true : false,
                            ),
                          );
                        },
                        options: CarouselOptions(
                            height: MediaQuery.of(context).size.height * 0.75,
                            enlargeCenterPage: true,
                            enableInfiniteScroll: false,
                            // autoPlay: true,
                            // viewportFraction: 0.9,
                            aspectRatio: 5.0,
                            padEnds: false,
                            initialPage: _current,
                            onPageChanged: ((index, reason) {
                              setState(() {
                                _current = index;
                              });
                            }))),
                  );
                } else {
                  return const Text("no data");
                }
              },
              loading: () => const Text("loading")),
        ),
      ]),
    );
  }
}
