import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../entities/movie.dart';

class InTheaterPoster extends StatelessWidget {
  final Movie movie;
  const InTheaterPoster({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 10.0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: NetworkImage(
                  'https://image.tmdb.org/t/p/w500/${movie.posterUrl}'),
            ),
          ),
          Text(
            movie.title,
          )
        ],
      ),
    );
  }
}
