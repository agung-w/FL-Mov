import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/entities/movie.dart';
import 'package:movie_app/services/movie_services.dart';

class InTheaterDetailPage extends StatelessWidget {
  final Movie movie;
  const InTheaterDetailPage({super.key, required this.movie});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(clipBehavior: Clip.hardEdge, children: [
              Image(
                image: Image.network(
                        'https://image.tmdb.org/t/p/w500/${movie.posterUrl}')
                    .image,
                height: MediaQuery.of(context).size.height * 0.71,
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0, sigmaY: 15.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  child: Image(
                    image: Image.network(
                            'https://image.tmdb.org/t/p/w500/${movie.posterUrl}')
                        .image,
                  ),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
              child: Text(movie.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 22)),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/tmdb.png',
                  width: 65,
                  height: 35,
                ),
                Text(movie.rating)
              ],
            ),
            FutureBuilder(
                future: MovieServices().getMovieDetail(int.parse(movie.tmdbId)),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      children: [
                        Row(
                          children: (snapshot.data?.genres ?? [])
                              .map((e) => Text(
                                    "${e.name} ",
                                    style: const TextStyle(fontSize: 15),
                                  ))
                              .toList(),
                        ),
                        Text(snapshot.data!.overview)
                      ],
                    );
                  } else {
                    return const SizedBox();
                  }
                }),
          ]),
    );
  }
}
