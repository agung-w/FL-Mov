import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/entities/movie.dart';
import 'package:movie_app/presentations/helper/text_style.dart';
import 'package:movie_app/presentations/widgets/clickable_poster_card.dart';
import 'package:movie_app/presentations/widgets/draggable_sheet.dart';
import 'package:movie_app/presentations/widgets/rating_box.dart';
import 'package:movie_app/presentations/widgets/review_card.dart';
import 'package:movie_app/presentations/widgets/vertical_person_card.dart';
import 'package:movie_app/presentations/widgets/youtube_video_card.dart';
import 'package:movie_app/services/movie_services.dart';

class MovieDetailPage extends StatelessWidget {
  final TMDBMovie e;

  final String? genre;

  const MovieDetailPage({super.key, required this.e, this.genre});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: MovieServices().getMovieDetail(e.id),
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            return snapshot.data!.map(
                success: (value) => Scaffold(
                      appBar: AppBar(),
                      backgroundColor: const Color(0xFFf2f1f6),
                      body: SingleChildScrollView(
                        child: Column(children: [
                          ColoredBox(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: value.value
                                              .moviePosterUrl(
                                                  value.value.backdropPath)
                                              .image)),
                                  height: 215,
                                  width: double.infinity,
                                  margin:
                                      const EdgeInsets.fromLTRB(16, 16, 16, 10),
                                ),
                                Text(
                                  value.value.title,
                                  style: mediumTitle,
                                  textAlign: TextAlign.center,
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 8, 16, 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      if (genre != null) ...{
                                        Text("$genre · ",
                                            style: shadeSmallText),
                                      } else ...{
                                        (value.value.genres.isNotEmpty)
                                            ? Text(
                                                "${genre ?? value.value.genres.elementAt(0).name} · ",
                                                style: shadeSmallText)
                                            : const Text("")
                                      },
                                      if (value.value.releaseDate != null) ...{
                                        Text(
                                          DateFormat("yyyy").format(
                                              DateTime.parse(
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
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 8, 16, 8),
                                  child: GestureDetector(
                                    onTap: () {
                                      showModalBottomSheet(
                                          isScrollControlled: true,
                                          useRootNavigator: true,
                                          elevation: 2,
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  topRight:
                                                      Radius.circular(20))),
                                          context: context,
                                          builder: (builder) => DraggableSheet(
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 10,
                                                              bottom: 16),
                                                      child: Center(
                                                        child: Text(
                                                          value.value.title,
                                                          style: smallTitle,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 10,
                                                              bottom: 16),
                                                      child: Text(
                                                        value.value.overview,
                                                        style: overviewText,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ));
                                    },
                                    child: Text(
                                      value.value.overview,
                                      style: overviewText,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                                if (value.value.credits.cast.isNotEmpty) ...{
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: Text("Casts & Crews",
                                          style: mediumTitle),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 145,
                                    child: _PersonList(
                                        e: value.value.credits.cast),
                                  ),
                                },
                                if (value.value.videos.trailers.isNotEmpty) ...{
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          16, 0, 16, 16),
                                      child: value.value.videos.trailers
                                                  .length ==
                                              1
                                          ? Text("Video", style: mediumTitle)
                                          : Text("Videos", style: mediumTitle),
                                    ),
                                  ),
                                  Container(
                                    height: 100,
                                    margin: const EdgeInsets.only(bottom: 16),
                                    child: _TrailerList(
                                        e: value.value.videos.trailers),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Divider(
                                      color: Colors.black26,
                                      height: 1,
                                      thickness: 1,
                                    ),
                                  )
                                },
                                if (value
                                    .value.similar.movieList.isNotEmpty) ...{
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          16, 0, 16, 16),
                                      child: Text("Another Movies Like This",
                                          style: mediumTitle),
                                    ),
                                  ),
                                  Container(
                                    height: 100,
                                    margin: const EdgeInsets.only(bottom: 24),
                                    child: _SimilarList(
                                        e: value.value.similar.movieList,
                                        genre: genre),
                                  ),
                                },
                              ],
                            ),
                          ),
                          if (value.value.reviews.reviewList.isNotEmpty) ...{
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Text("Reviews", style: mediumTitle),
                              ),
                            ),
                            SizedBox(
                              height: 145,
                              child: _ReviewList(
                                  e: value.value.reviews.reviewList),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(16, 32, 16, 0),
                              child: Divider(
                                color: Colors.black26,
                                height: 1,
                                thickness: 1,
                              ),
                            )
                          },
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text("Informations", style: mediumTitle),
                            ),
                          ),
                          if (value.value.releaseDate != null) ...{
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, right: 16),
                                child:
                                    Text("Release Date", style: extraSmallText),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 16, bottom: 16),
                                child: Text(
                                    DateFormat("dd MMMM yyyy").format(
                                        DateTime.parse(
                                            value.value.releaseDate!)),
                                    style: shadeExtraSmallText),
                              ),
                            ),
                          },
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 16, right: 16),
                              child: Text("Rating", style: extraSmallText),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16, bottom: 16),
                              child: Text(value.value.getRating(),
                                  style: shadeExtraSmallText),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 16, right: 16),
                              child: Text("Genre", style: extraSmallText),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16, bottom: 16),
                              child: Row(
                                children: value.value.genres
                                    .map((e) => Text("${e.name} ",
                                        style: shadeExtraSmallText))
                                    .toList(),
                              ),
                            ),
                          ),
                          if (value.value.voteAverage != null) ...{
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                              child: RatingBox(
                                  rating: value.value.voteAverage!
                                      .roundToDouble()
                                      .toString(),
                                  size: 14),
                            ),
                          }
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

class _PersonList extends StatelessWidget {
  final List<TMDBPerson> e;
  const _PersonList({required this.e});

  @override
  Widget build(BuildContext context) {
    return ListView(
        physics: const ScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          for (int i = 0; i < e.length; i++) ...{
            if (i == 0) ...{
              VerticalPersonCard(
                person: e.elementAt(i),
                isFirst: true,
              )
            } else if (i == e.length - 1) ...{
              VerticalPersonCard(
                person: e.elementAt(i),
                isLast: true,
              )
            } else ...{
              VerticalPersonCard(person: e.elementAt(i))
            }
          }
        ]);
  }
}

class _TrailerList extends StatelessWidget {
  final List<Trailer> e;
  const _TrailerList({required this.e});

  @override
  Widget build(BuildContext context) {
    return ListView(
        physics: const ScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          for (int i = 0; i < e.length; i++) ...{
            if (i == 0) ...{
              YoutubeVideoCard(
                videoKey: e.elementAt(i).key,
                isFirst: true,
              )
            } else if (i == e.length - 1) ...{
              YoutubeVideoCard(
                videoKey: e.elementAt(i).key,
                isLast: true,
              )
            } else ...{
              YoutubeVideoCard(
                videoKey: e.elementAt(i).key,
              )
            }
          }
        ]);
  }
}

class _ReviewList extends StatelessWidget {
  final List<Review> e;

  const _ReviewList({required this.e});

  @override
  Widget build(BuildContext context) {
    return ListView(
        physics: const ScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          for (int i = 0; i < e.length; i++) ...{
            if (i == 0) ...{
              ReviewCard(
                review: e.elementAt(i),
                isFirst: true,
              )
            } else if (i == e.length - 1) ...{
              ReviewCard(
                review: e.elementAt(i),
                isLast: true,
              )
            } else ...{
              ReviewCard(review: e.elementAt(i))
            }
          }
        ]);
  }
}

class _SimilarList extends StatelessWidget {
  final List<TMDBMovie> e;
  final String? genre;

  const _SimilarList({
    required this.e,
    this.genre,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
        physics: const ScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          for (int i = 0; i < e.length; i++) ...{
            if (i == 0) ...{
              ClickablePosterCard(
                item: e.elementAt(i),
                genre: genre,
                isFirst: true,
              )
            } else if (i == e.length - 1) ...{
              ClickablePosterCard(
                item: e.elementAt(i),
                genre: genre,
                isLast: true,
              )
            } else ...{
              ClickablePosterCard(
                item: e.elementAt(i),
                genre: genre,
              )
            }
          }
        ]);
  }
}
