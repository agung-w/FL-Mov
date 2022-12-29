import 'package:flutter/material.dart';
import 'package:movie_app/entities/movie.dart';
import 'package:movie_app/presentations/pages/movie_detail_page.dart';
import 'package:movie_app/presentations/pages/tv_detail_page.dart';

class ClickablePosterCard extends StatelessWidget {
  final dynamic item;
  final String? genre;

  final bool? isLast;

  final bool? isFirst;

  final bool? shadow;

  const ClickablePosterCard(
      {super.key,
      required this.item,
      this.genre,
      this.isLast,
      this.isFirst,
      this.shadow});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (item is TMDBMovie) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => MovieDetailPage(
              e: item,
              genre: genre,
            ),
          ));
        } else if (item is TMDBTv) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => TvDetailPage(
              e: item,
              genre: genre,
            ),
          ));
        }
      },
      child: Container(
        margin: EdgeInsets.only(
            left: isFirst == true ? 16 : 8, right: isLast == true ? 16 : 0),
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: shadow == true
                ? const [
                    BoxShadow(
                        color: Colors.black45,
                        blurRadius: 5,
                        spreadRadius: 0.1,
                        offset: Offset(0, 3)),
                  ]
                : null,
            image: DecorationImage(
                image: item.moviePosterUrl(item.backdropPath).image,
                fit: BoxFit.cover)),
      ),
    );
  }
}
