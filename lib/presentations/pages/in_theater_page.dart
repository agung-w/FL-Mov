import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return Center(
      child: Column(children: [
        ElevatedButton(
            onPressed: () => MovieServices().getInTheater(), child: Text("t")),
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
                  return Text("no data");
                }
              },
              loading: () => Text("loading")),
        ),
        ElevatedButton(
            onPressed: () {
              context.read<MovieBloc>().add(const MovieEvent.getInTheater());
            },
            child: Text("tes"))
        // FutureBuilder(
        //     future: MovieServices().getInTheater(),
        //     builder: ((context, snapshot) {
        //       if (snapshot.hasData) {
        //         return CarouselSlider(
        //             items: (snapshot.data ?? [])
        //                 // .map((e) => Transform.scale(
        //                 //     scale: 1 == _current ? 1 : 0.8,
        //                 //     child: InTheaterPoster(movie: e)))
        //                 // .toList(),
        //                 .map((e) => Builder(builder: (BuildContext context) {
        //                       return Transform.scale(
        //                           scale: 1 == _current ? 1 : 0.8,
        //                           child: InTheaterPoster(movie: e));
        //                     }))
        //                 .toList(),
        //             options: );
        //       } else {
        //         return const SizedBox();
        //       }
        //     })),
      ]),
    );
  }
}
