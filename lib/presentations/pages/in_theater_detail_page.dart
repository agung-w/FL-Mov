import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/bloc/movie_detail_bloc.dart';
import 'package:movie_app/entities/movie.dart';

class InTheaterDetailPage extends StatelessWidget {
  final Movie movie;
  const InTheaterDetailPage({super.key, required this.movie});
  @override
  Widget build(BuildContext context) {
    return PageView(padEnds: false, scrollDirection: Axis.vertical, children: [
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(clipBehavior: Clip.hardEdge, children: [
              Positioned(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  child: Image(
                    fit: BoxFit.fitHeight,
                    image: Image.network(
                            'https://image.tmdb.org/t/p/w500/${movie.posterUrl}')
                        .image,
                    height: MediaQuery.of(context).size.height * 0.8,
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0, sigmaY: 20.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  child: Image(
                    height: MediaQuery.of(context).size.height * 0.8,
                    fit: BoxFit.fill,
                    image: Image.network(
                            'https://image.tmdb.org/t/p/w500/${movie.posterUrl}')
                        .image,
                  ),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(movie.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 22)),
                  Row(
                    children: [
                      Image.asset(
                        'assets/tmdb.png',
                        width: 65,
                      ),
                      Text(movie.rating)
                    ],
                  ),
                ],
              ),
            ),
          ]),
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(clipBehavior: Clip.hardEdge, children: [
              Positioned(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  child: Image(
                    fit: BoxFit.fitHeight,
                    image: Image.network(
                            'https://image.tmdb.org/t/p/w500/${movie.posterUrl}')
                        .image,
                    height: MediaQuery.of(context).size.height * 0.8,
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0, sigmaY: 20.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  child: Image(
                    height: MediaQuery.of(context).size.height * 0.8,
                    fit: BoxFit.fill,
                    image: Image.network(
                            'https://image.tmdb.org/t/p/w500/${movie.posterUrl}')
                        .image,
                  ),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(movie.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 22)),
                  Row(
                    children: [
                      Image.asset(
                        'assets/tmdb.png',
                        width: 65,
                      ),
                      Text(movie.rating)
                    ],
                  ),
                ],
              ),
            ),
          ]),
    ]);
  }
}
