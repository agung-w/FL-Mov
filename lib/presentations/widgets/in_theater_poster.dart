import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../entities/movie.dart';

class InTheaterPoster extends StatelessWidget {
  final Movie movie;
  final bool? isActive;
  const InTheaterPoster({super.key, required this.movie, this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              fit: BoxFit.fitHeight,
              height: MediaQuery.of(context).size.height * 0.6,
              image: NetworkImage(
                  'https://image.tmdb.org/t/p/w500/${movie.posterUrl}'),
            ),
          ),
          if (isActive == true) ...[
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
                  height: 35,
                ),
                Text(movie.rating.toString())
              ],
            )
          ]
        ],
      ),
    );
  }
}
