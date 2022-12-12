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
    return Stack(
      children: [
        PageView(padEnds: false, scrollDirection: Axis.vertical, children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Stack(children: [
                      Transform.translate(
                        offset: const Offset(10, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Opacity(
                              opacity: 0.7,
                              child: Image(
                                fit: BoxFit.fill,
                                image: Image.network(
                                        'https://image.tmdb.org/t/p/w500/${movie.posterUrl}')
                                    .image,
                                height:
                                    MediaQuery.of(context).size.height * 0.79,
                                width: MediaQuery.of(context).size.width * 0.95,
                              )),
                        ),
                      ),
                      Positioned.fill(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 0, sigmaY: 12),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(color: Colors.transparent)),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        child: Image(
                          fit: BoxFit.fill,
                          image: Image.network(
                                  'https://image.tmdb.org/t/p/w500/${movie.posterUrl}')
                              .image,
                          height: MediaQuery.of(context).size.height * 0.78,
                        ),
                      )
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
        ]),
        Positioned(
          top: 30,
          right: 30,
          child: Container(
            color: Colors.green,
            width: 10,
            height: 10,
          ),
        ),
      ],
    );
  }
}
