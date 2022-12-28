import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/entities/movie.dart';
import 'package:movie_app/presentations/helper/text_style.dart';
import 'package:movie_app/presentations/widgets/youtube_video_card.dart';
import 'package:movie_app/services/movie_services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MovieDetailPage extends StatelessWidget {
  final TMDBMovie e;

  const MovieDetailPage({super.key, required this.e});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: MovieServices().getMovieDetail(e.id),
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            return snapshot.data!.map(
                success: (value) => Scaffold(
                      appBar: AppBar(),
                      body: SingleChildScrollView(
                        child: Column(children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: value.value
                                        .moviePosterUrl(
                                            value.value.backDropPath)
                                        .image)),
                            height: 215,
                            width: double.infinity,
                            margin: const EdgeInsets.fromLTRB(16, 16, 16, 10),
                          ),
                          Text(value.value.title, style: mediumTitle),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: value.value.genres
                                      .map((e) => Text("${e.name} · ",
                                          style: shadeSmallText))
                                      .toList(),
                                ),
                                if (value.value.releaseDate != null) ...{
                                  Text(
                                    DateFormat("yyyy").format(DateTime.parse(
                                        value.value.releaseDate!)),
                                    style: shadeSmallText,
                                  ),
                                  const Text(" · ")
                                },
                                Text(
                                  "${value.value.runtime} minutes",
                                  style: shadeSmallText,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                            child: Text(
                              value.value.overview,
                              style: overviewText,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          if (value.value.videos.trailers.isNotEmpty) ...{
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Text("Trailers", style: mediumTitle),
                              ),
                            ),
                            SizedBox(
                              height: 90,
                              child: ListView(
                                physics: const ScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: value.value.videos.trailers
                                    .map((e) => YoutubeVideoCard(
                                          videoKey: e.key,
                                        ))
                                    .toList(),
                              ),
                            )
                          },
                          Text(value.value.similar.toString())
                        ]),
                      ),
                    ),
                failed: (value) => Scaffold(
                      appBar: AppBar(
                        title: Text(
                          e.toString(),
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        centerTitle: true,
                      ),
                      body: Center(child: Text(value.message)),
                    ));
          } else {
            return Scaffold(
              appBar: AppBar(),
              body: const Center(child: Text("Loading")),
            );
          }
        });
  }
}
