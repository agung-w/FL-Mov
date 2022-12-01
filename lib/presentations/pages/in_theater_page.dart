import 'package:carousel_slider/carousel_slider.dart';
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
            padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: Text(
              "Now In Theater",
              textAlign: TextAlign.start,
              style:
                  GoogleFonts.roboto(fontWeight: FontWeight.w800, fontSize: 30),
            ),
          ),
          BlocBuilder<MovieBloc, MovieState>(
            builder: (context, state) => state.when(
                loaded: (movies) {
                  // return Text(movies.toString());
                  if (movies != null) {
                    return CarouselSlider.builder(
                        itemCount: movies.length,
                        itemBuilder: (context, int index, idx) {
                          return Transform.scale(
                            alignment: Alignment.centerLeft,
                            scale: index == _current ? 1 : 0.85,
                            child: InTheaterPoster(
                              movie: movies.elementAt(index),
                              isActive: index == _current ? true : false,
                            ),
                          );
                        },
                        options: CarouselOptions(
                            height: MediaQuery.of(context).size.height * 0.76,
                            // enlargeCenterPage: true,
                            enableInfiniteScroll: false,
                            // autoPlay: true,
                            disableCenter: true,
                            viewportFraction: 0.85,
                            aspectRatio: 2.0,
                            padEnds: false,
                            initialPage: _current,
                            // clipBehavior: Clip.none,
                            onPageChanged: ((index, reason) {
                              setState(() {
                                _current = index;
                              });
                            })));
                  } else {
                    return const Text("no data");
                  }
                },
                loading: () => const Text("loading")),
          ),
        ]);
  }
}
