import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/entities/movie.dart';
import 'package:movie_app/presentations/helper/text_style.dart';
import 'package:movie_app/presentations/widgets/clickable_poster_card.dart';
import 'package:movie_app/presentations/widgets/draggable_sheet.dart';
import 'package:movie_app/presentations/widgets/review_card.dart';
import 'package:movie_app/presentations/widgets/vertical_person_card.dart';
import 'package:movie_app/presentations/widgets/youtube_video_card.dart';
import 'package:movie_app/services/movie_services.dart';

class TvDetailPage extends StatelessWidget {
  final dynamic e;

  final String? genre;

  const TvDetailPage({super.key, required this.e, this.genre});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: MovieServices().getTvDetail(e.id),
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
                                  value.value.name,
                                  style: mediumTitle,
                                  textAlign: TextAlign.center,
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 8, 16, 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                          "${genre ?? value.value.genres.elementAt(0).name} · ",
                                          style: shadeSmallText),
                                      if (value.value.releaseDate != null) ...{
                                        Text(
                                          DateFormat("dd MMM yyyy").format(
                                              DateTime.parse(
                                                  value.value.releaseDate!)),
                                          style: shadeSmallText,
                                        ),
                                        const Text(" · ")
                                      },
                                      Text(
                                        value.value.seasons.length > 1
                                            ? "${value.value.numberOfSeasons} Seasons"
                                            : "1 Season",
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
                                                          value.value.name,
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
                                if (value.value.seasons.isNotEmpty) ...{
                                  _TvSeasonEpisodeList(
                                    seasons: value.value.seasons,
                                    seriesId: value.value.id,
                                  )
                                },
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
                                if (value.value.similar.tvList.isNotEmpty) ...{
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          16, 0, 16, 16),
                                      child: Text("Another TV Shows Like This",
                                          style: mediumTitle),
                                    ),
                                  ),
                                  Container(
                                    height: 100,
                                    margin: const EdgeInsets.only(bottom: 24),
                                    child: _SimilarList(
                                        e: value.value.similar.tvList),
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
                      body:
                          const Center(child: Text("No content detail found")),
                    ));
          } else if (snapshot.hasError) {
            return Scaffold(
              appBar: AppBar(),
              body: const Center(child: Text("No content detail found")),
            );
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
  final List<TMDBTv> e;
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

class _EpisodeList extends StatelessWidget {
  final List<TvEpisode> e;

  const _EpisodeList({
    required this.e,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
        physics: const ScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          for (int i = 0; i < e.length; i++) ...{
            if (i == 0) ...{
              _EpisodeCard(
                episode: e.elementAt(i),
                isFirst: true,
              )
            } else if (i == e.length - 1) ...{
              _EpisodeCard(
                episode: e.elementAt(i),
                isLast: true,
              )
            } else ...{
              _EpisodeCard(
                episode: e.elementAt(i),
              )
            }
          }
        ]);
  }
}

class _EpisodeCard extends StatelessWidget {
  final TvEpisode episode;

  final bool? isFirst;
  final bool? isLast;

  const _EpisodeCard({required this.episode, this.isFirst, this.isLast});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showModalBottomSheet(
          isScrollControlled: true,
          useRootNavigator: true,
          elevation: 2,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          context: context,
          builder: (builder) => DraggableSheet(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: episode
                                  .moviePosterUrl(episode.stillPath)
                                  .image)),
                      height: 215,
                      width: double.infinity,
                      margin: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                    ),
                    RichText(
                        text: TextSpan(
                            text:
                                'S${episode.seasonNumber}:E${episode.episodeNumber} ',
                            style: smallTitle.merge(const TextStyle(color: Colors.black87)),
                            children: [
                          TextSpan(text: '"${episode.name}"', style: smallTitle)
                        ])),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 16),
                      child: Text(
                        episode.overview,
                        style: overviewText,
                      ),
                    ),
                  ],
                ),
              )),
      child: Container(
        margin: EdgeInsets.only(
            left: isFirst == true ? 16 : 8,
            right: isLast == true ? 16 : 0,
            bottom: 22),
        width: MediaQuery.of(context).size.width * 0.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: episode.moviePosterUrl(episode.stillPath).image,
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Text(
                "EPISODE ${episode.episodeNumber}",
                style: shadeExtraSmallText
                    .merge(const TextStyle(fontWeight: FontWeight.w700)),
              ),
            ),
            Text(
              episode.name,
              style: extraSmallTitle,
              maxLines: 1,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Text(
                episode.overview,
                style: shadeExtraSmallText,
                maxLines: 3,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _TvSeasonEpisodeList extends StatefulWidget {
  final List<TvSeason> seasons;
  final int seriesId;

  const _TvSeasonEpisodeList({required this.seasons, required this.seriesId});

  @override
  State<_TvSeasonEpisodeList> createState() => __TvSeasonEpisodeListState();
}

class __TvSeasonEpisodeListState extends State<_TvSeasonEpisodeList> {
  late String dropdownValue = widget.seasons.first.seasonNumber.toString();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 6),
              child: DropdownButton<String>(
                style: const TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w700,
                    fontSize: 22),
                value: dropdownValue,
                icon: const Icon(
                  Icons.expand_more_sharp,
                  color: Colors.black87,
                  size: 30,
                ),
                elevation: 2,
                underline: Container(
                  height: 2,
                ),
                onChanged: (value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items: widget.seasons
                    .map<DropdownMenuItem<String>>((TvSeason value) {
                  return DropdownMenuItem<String>(
                    value: value.seasonNumber.toString(),
                    child: Text(value.name),
                  );
                }).toList(),
              )),
        ),
        FutureBuilder(
            future: MovieServices().getSeasonEpisode(
                seriesId: widget.seriesId, seasonId: dropdownValue),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return snapshot.data!.map(
                    success: (value) => Container(
                          height: 235,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [Colors.white, Color(0xFFf1f0f5)])),
                          child: _EpisodeList(e: value.value),
                        ),
                    failed: (value) => const Center(
                          child: Text("Failed to load data"),
                        ));
              } else if (snapshot.hasError) {
                return const Center(
                  child: Text("Failed to load data"),
                );
              } else {
                return const Center(
                  child: Text("Loading"),
                );
              }
            }),
      ],
    );
  }
}
