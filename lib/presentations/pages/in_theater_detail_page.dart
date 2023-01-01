import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/bloc/movie_detail_bloc.dart';
import 'package:movie_app/bloc/order_bloc.dart';
import 'package:movie_app/entities/movie.dart';
import 'package:movie_app/presentations/helper/text_style.dart';
import 'package:movie_app/presentations/pages/select_ticket_schedule_page.dart';
import 'package:movie_app/presentations/widgets/clickable_poster_card.dart';
import 'package:movie_app/presentations/widgets/draggable_sheet.dart';
import 'package:movie_app/presentations/widgets/rating_box.dart';
import 'package:movie_app/presentations/widgets/review_card.dart';
import 'package:movie_app/presentations/widgets/vertical_person_card.dart';
import 'package:movie_app/presentations/widgets/youtube_video_card.dart';
import 'package:movie_app/services/cinema_services.dart';

class InTheaterDetailPage extends StatelessWidget {
  final Movie movie;
  const InTheaterDetailPage({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    double imageHeight = MediaQuery.of(context).size.height * 0.8;
    double imageWidth = MediaQuery.of(context).size.width;
    return BlocBuilder<MovieDetailBloc, MovieDetailState>(
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async {
            context.read<OrderBloc>().add(const OrderEvent.cancel());
            return true;
          },
          child: Scaffold(
              backgroundColor: const Color(0xFFf2f1f6),
              body: state.map(
                  initial: (value) => const Text("error"),
                  loading: (value) => const Center(
                        child: Text("Loading"),
                      ),
                  loaded: (value) => value.movie.map(
                      failed: (value) => const Center(
                          child: Text("Failed to fetch movie data")),
                      success: (value) => NestedScrollView(
                          headerSliverBuilder: (builder, d) {
                            return [
                              SliverAppBar(
                                  automaticallyImplyLeading: false,
                                  pinned: true,
                                  expandedHeight: imageHeight,
                                  flexibleSpace: LayoutBuilder(builder:
                                      (BuildContext context,
                                          BoxConstraints constraints) {
                                    double top = constraints.biggest.height;
                                    return AppBar(
                                      title: top ==
                                              MediaQuery.of(context)
                                                      .padding
                                                      .top +
                                                  kToolbarHeight
                                          ? Text(movie.title)
                                          : null,
                                      foregroundColor: top ==
                                              MediaQuery.of(context)
                                                      .padding
                                                      .top +
                                                  kToolbarHeight
                                          ? Colors.black87
                                          : Colors.white,
                                      flexibleSpace: FlexibleSpaceBar(
                                        titlePadding: EdgeInsets.zero,
                                        collapseMode: CollapseMode.parallax,
                                        expandedTitleScale: 1,
                                        centerTitle: true,
                                        title: Opacity(
                                          opacity: top <
                                                  MediaQuery.of(context)
                                                              .padding
                                                              .top *
                                                          2 +
                                                      kToolbarHeight
                                              ? 0.0
                                              : 1.0,
                                          // opacity: 1.0,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            children: [
                                              Positioned(
                                                bottom: 0,
                                                child: ClipRRect(
                                                    child: BackdropFilter(
                                                        filter:
                                                            ImageFilter.blur(
                                                                sigmaX: 10,
                                                                sigmaY: 15),
                                                        child: ClipRRect(
                                                          child: Container(
                                                            width: imageWidth,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.2,
                                                            decoration:
                                                                BoxDecoration(
                                                                    gradient: LinearGradient(
                                                                        begin: Alignment
                                                                            .topCenter,
                                                                        end: Alignment
                                                                            .bottomCenter,
                                                                        colors: [
                                                                  Colors.white
                                                                      .withOpacity(
                                                                          0),
                                                                  const Color(
                                                                          0xFF2E2C2C)
                                                                      .withOpacity(
                                                                          0.3),
                                                                  Colors.black
                                                                      .withOpacity(
                                                                          0.7)
                                                                ])),
                                                          ),
                                                        ))),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(16),
                                                child: Transform.translate(
                                                  offset: Offset(
                                                      0,
                                                      -MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                          0.05),
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          movie.title,
                                                          style: largeTitle,
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              (value
                                                                      .value
                                                                      .genres
                                                                      .isNotEmpty)
                                                                  ? Text(
                                                                      "${value.value.genres.elementAt(0).name} · ",
                                                                      style: shadeSmallText
                                                                          .merge(
                                                                              const TextStyle(
                                                                        color: Colors
                                                                            .white60,
                                                                      )))
                                                                  : const Text(
                                                                      ""),
                                                              if (value.value
                                                                      .releaseDate !=
                                                                  null) ...{
                                                                if (value.value
                                                                        .releaseDate !=
                                                                    null) ...{
                                                                  Text(
                                                                    DateFormat(
                                                                            "dd MMM yyyy")
                                                                        .format(DateTime.parse(value
                                                                            .value
                                                                            .releaseDate!)),
                                                                    style: shadeSmallText
                                                                        .merge(
                                                                            const TextStyle(
                                                                      color: Colors
                                                                          .white60,
                                                                    )),
                                                                  ),
                                                                  const Text(
                                                                      " · ")
                                                                },
                                                                Text(
                                                                  "${value.value.runtime} minutes",
                                                                  style: shadeSmallText
                                                                      .merge(
                                                                          const TextStyle(
                                                                    color: Colors
                                                                        .white60,
                                                                  )),
                                                                ),
                                                              },
                                                            ]),
                                                        Container(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 5,
                                                                  bottom: 16),
                                                          width:
                                                              double.infinity,
                                                          child: ElevatedButton(
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .push(
                                                                  MaterialPageRoute(
                                                                    builder: (_) =>
                                                                        const SelectTicketSchedulePage(),
                                                                  ),
                                                                );
                                                              },
                                                              child: const Text(
                                                                  "Buy Ticket Now")),
                                                        ),
                                                        GestureDetector(
                                                          onTap: () {
                                                            showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                useRootNavigator:
                                                                    true,
                                                                elevation: 2,
                                                                shape: const RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.only(
                                                                        topLeft:
                                                                            Radius.circular(
                                                                                20),
                                                                        topRight:
                                                                            Radius.circular(
                                                                                20))),
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (builder) =>
                                                                        DraggableSheet(
                                                                          child:
                                                                              Column(
                                                                            children: [
                                                                              Padding(
                                                                                padding: const EdgeInsets.only(top: 10, bottom: 16),
                                                                                child: Center(
                                                                                  child: Text(
                                                                                    movie.title,
                                                                                    style: smallTitle,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsets.only(top: 10, bottom: 16),
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
                                                            value
                                                                .value.overview,
                                                            maxLines: 3,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: shadeNormalText.merge(
                                                                const TextStyle(
                                                                    color: Colors
                                                                        .white)),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                bottom: 22,
                                                left: 16,
                                                child: RatingBox(
                                                    rating: movie.rating,
                                                    size: 16),
                                              )
                                            ],
                                          ),
                                        ),
                                        background: Stack(
                                          children: [
                                            Positioned.fill(
                                                child: Image(
                                              image: movie
                                                  .moviePosterUrl(
                                                      movie.posterUrl)
                                                  .image,
                                              fit: BoxFit.fill,
                                            )),
                                            Positioned.fill(
                                              child: Opacity(
                                                opacity: 0.15,
                                                child: Container(
                                                  color:
                                                      const Color(0xFF000000),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }))
                            ];
                          },
                          body: ListView(
                            padding: EdgeInsets.zero,
                            children: [
                              ColoredBox(
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    if (value
                                        .value.videos.trailers.isNotEmpty) ...{
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              16, 16, 16, 16),
                                          child: value.value.videos.trailers
                                                      .length ==
                                                  1
                                              ? Text("Video",
                                                  style: mediumTitle)
                                              : Text("Videos",
                                                  style: mediumTitle),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100,
                                        child: _TrailerList(
                                            e: value.value.videos.trailers),
                                      ),
                                    },
                                    if (value
                                        .value.credits.cast.isNotEmpty) ...{
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
                                      const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(16, 10, 16, 16),
                                        child: Divider(
                                          color: Colors.black26,
                                          height: 1,
                                          thickness: 1,
                                        ),
                                      )
                                    },
                                    if (value.value.similar.movieList
                                        .isNotEmpty) ...{
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              16, 0, 16, 16),
                                          child: Text(
                                              "Another Movies Like This",
                                              style: mediumTitle),
                                        ),
                                      ),
                                      Container(
                                        height: 100,
                                        margin:
                                            const EdgeInsets.only(bottom: 28),
                                        child: _SimilarList(
                                          e: value.value.similar.movieList,
                                        ),
                                      ),
                                    },
                                  ],
                                ),
                              ),
                              if (value
                                  .value.reviews.reviewList.isNotEmpty) ...{
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
                                  child:
                                      Text("Informations", style: mediumTitle),
                                ),
                              ),
                              if (value.value.releaseDate != null) ...{
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16),
                                    child: Text("Release Date",
                                        style: extraSmallText),
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
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 16),
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
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 16),
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
                            ],
                          ))))),
        );
      },
    );
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
