import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/movie_detail_bloc.dart';
import 'package:movie_app/bloc/order_bloc.dart';
import 'package:movie_app/entities/movie.dart';
import 'package:movie_app/presentations/pages/in_theater_detail_page.dart';
import 'package:shimmer/shimmer.dart';

class InTheaterPoster extends StatelessWidget {
  final Movie movie;
  final bool? isActive;
  const InTheaterPoster({super.key, required this.movie, this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:
          isActive == true ? MainAxisAlignment.center : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            context
                .read<MovieDetailBloc>()
                .add(MovieDetailEvent.getDetail(int.parse(movie.tmdbId)));
            context.read<OrderBloc>().add(OrderEvent.selectMovie(movie: movie));
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => InTheaterDetailPage(
                        movie: movie,
                      )),
            );
          },
          child: Column(
            children: [
              ClipRRect(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 0, 30),
                  child: Stack(children: [
                    Transform.translate(
                      offset: const Offset(10, 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Opacity(
                            opacity: 1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image(
                                  fit: BoxFit.fill,
                                  image: movie
                                      .moviePosterUrl(movie.posterUrl)
                                      .image,
                                  height:
                                      MediaQuery.of(context).size.height * 0.75,
                                  width:
                                      MediaQuery.of(context).size.width * 0.81,
                                  loadingBuilder:
                                      (context, child, loadingProgress) {
                                    return loadingProgress == null
                                        ? child
                                        : Shimmer.fromColors(
                                            baseColor: Colors.grey.shade400,
                                            highlightColor: Colors.white,
                                            child: Container(
                                                color: Colors.grey,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.75));
                                  }),
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
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                          fit: BoxFit.fill,
                          image: movie.moviePosterUrl(movie.posterUrl).image,
                          height: MediaQuery.of(context).size.height * 0.75,
                          loadingBuilder: (context, child, loadingProgress) {
                            return loadingProgress == null
                                ? child
                                : Shimmer.fromColors(
                                    baseColor: Colors.grey.shade400,
                                    highlightColor: Colors.white,
                                    child: Container(
                                        color: Colors.grey,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.75));
                          }),
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
        if (isActive == true) ...[
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: Text(movie.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: Row(
              children: [
                Image.asset(
                  'assets/tmdb.png',
                  width: 65,
                  height: 35,
                ),
                Text(movie.rating.toString())
              ],
            ),
          )
        ]
      ],
    );
  }
}

// Route _createRoute() {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) =>
//         InTheaterDetailPage(
//       movie:movie,
//     ),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       const begin = Offset(0.0, 1.0);
//       const end = Offset.zero;
//       const curve = Curves.ease;

//       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

//       return SlideTransition(
//         position: animation.drive(tween),
//         child: child,
//       );
//     },
//   );
// }
