import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:movie_app/presentations/widgets/in_theater_poster.dart';
import 'package:movie_app/services/movie_services.dart';

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
        // ElevatedButton(
        //     onPressed: () => MovieServices().getInTheater(), child: Text("t")),
        FutureBuilder(
            future: MovieServices().getInTheater(),
            builder: ((context, snapshot) {
              if (snapshot.hasData) {
                return CarouselSlider(
                    items: (snapshot.data ?? [])
                        // .map((e) => Transform.scale(
                        //     scale: 1 == _current ? 1 : 0.8,
                        //     child: InTheaterPoster(movie: e)))
                        // .toList(),
                        .map((e) => InTheaterPoster(movie: e))
                        .toList(),
                    options: CarouselOptions(
                        height: MediaQuery.of(context).size.height * 0.9,
                        enableInfiniteScroll: false,
                        initialPage: _current,
                        onPageChanged: ((index, reason) {
                          setState(() {
                            _current = index;
                          });
                        })));
              } else {
                return const SizedBox();
              }
            })),
      ]),
    );
  }
}
