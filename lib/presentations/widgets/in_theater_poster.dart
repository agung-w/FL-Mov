import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/presentations/pages/in_theater_detail_page.dart';
import 'package:shimmer/shimmer.dart';

import '../../entities/movie.dart';

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
              DropShadow(
                blurRadius: 8,
                offset: const Offset(0, 15),
                borderRadius: 10,
                child: Image(
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height * 0.67,
                  image: NetworkImage(
                      'https://image.tmdb.org/t/p/w500/${movie.posterUrl}'),
                  loadingBuilder: (context, child, loadingProgress) {
                    return loadingProgress == null
                        ? child
                        : Shimmer.fromColors(
                            baseColor: Colors.grey.shade400,
                            highlightColor: Colors.white,
                            child: Container(
                                color: Colors.grey,
                                height:
                                    MediaQuery.of(context).size.height * 0.67));
                  },
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
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 22)),
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
