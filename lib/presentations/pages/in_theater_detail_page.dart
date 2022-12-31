import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/bloc/movie_detail_bloc.dart';
import 'package:movie_app/bloc/order_bloc.dart';
import 'package:movie_app/entities/movie.dart';
import 'package:movie_app/presentations/helper/text_style.dart';
import 'package:movie_app/presentations/widgets/cinema_card.dart';
import 'package:movie_app/presentations/widgets/clickable_poster_card.dart';
import 'package:movie_app/presentations/widgets/draggable_sheet.dart';
import 'package:movie_app/presentations/widgets/in_theater_tab.dart';
import 'package:movie_app/presentations/widgets/rating_box.dart';
import 'package:movie_app/presentations/widgets/review_card.dart';
import 'package:movie_app/presentations/widgets/vertical_person_card.dart';
import 'package:movie_app/presentations/widgets/youtube_video_card.dart';
import 'package:movie_app/services/cinema_services.dart';

class InTheaterDetailPage extends StatefulWidget {
  final Movie movie;
  const InTheaterDetailPage({super.key, required this.movie});

  @override
  State<InTheaterDetailPage> createState() => _InTheaterDetailPageState();
}

class _InTheaterDetailPageState extends State<InTheaterDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  late List<DateTime> dates;

  int selected = 0;

  @override
  void initState() {
    dates =
        List.generate(7, (index) => DateTime.now().add(Duration(days: index)));
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    TabBar tabBar = TabBar(
      controller: _tabController,
      unselectedLabelColor: Colors.black,
      indicator: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      tabs: const [
        Tab(icon: Text("Details")),
        Tab(icon: Text("Showtimes")),
      ],
    );
    context.read<OrderBloc>().add(OrderEvent.selectDate(
        date: DateFormat("yyyy-MM-dd").format(dates[selected])));

    double imageHeight = MediaQuery.of(context).size.height * 0.8;
    double imageWidth = MediaQuery.of(context).size.width;
    return BlocBuilder<MovieDetailBloc, MovieDetailState>(
      builder: (context, state) {
        return Scaffold(
            body: state.map(
                initial: (value) => const Text("error"),
                loading: (value) => const Center(
                      child: Text("Loading"),
                    ),
                loaded: (value) => value.movie.map(
                    failed: (value) =>
                        const Center(child: Text("Failed to fetch movie data")),
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
                                  // print('constraints=' + constraints.toString());
                                  double top = constraints.biggest.height;
                                  return AppBar(
                                    title: top ==
                                            MediaQuery.of(context).padding.top +
                                                kToolbarHeight
                                        ? Text(widget.movie.title)
                                        : null,
                                    foregroundColor: top ==
                                            MediaQuery.of(context).padding.top +
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
                                                      filter: ImageFilter.blur(
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
                                              padding: const EdgeInsets.all(16),
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
                                                        widget.movie.title,
                                                        style: largeTitle,
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                      Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            (value.value.genres
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
                                                            Text(
                                                                "${value.value.genres.elementAt(0).name} · ",
                                                                style: shadeSmallText
                                                                    .merge(
                                                                        const TextStyle(
                                                                  color: Colors
                                                                      .white60,
                                                                ))),
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
                                                        width: double.infinity,
                                                        child: ElevatedButton(
                                                            onPressed: () {},
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
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              20),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              20))),
                                                              context: context,
                                                              builder: (builder) =>
                                                                  DraggableSheet(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsets.only(
                                                                              top: 10,
                                                                              bottom: 16),
                                                                          child:
                                                                              Center(
                                                                            child:
                                                                                Text(
                                                                              value.value.title,
                                                                              style: smallTitle,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsets.only(
                                                                              top: 10,
                                                                              bottom: 16),
                                                                          child:
                                                                              Text(
                                                                            value.value.overview,
                                                                            style:
                                                                                overviewText,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ));
                                                        },
                                                        child: Text(
                                                          value.value.overview,
                                                          maxLines: 3,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: shadeNormalText
                                                              .merge(const TextStyle(
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
                                                  rating: widget.movie.rating,
                                                  size: 16),
                                            )
                                          ],
                                        ),
                                      ),
                                      background: Stack(
                                        children: [
                                          Positioned.fill(
                                              child: Image(
                                            image: widget.movie
                                                .moviePosterUrl(
                                                    widget.movie.posterUrl)
                                                .image,
                                            fit: BoxFit.fill,
                                          )),
                                          Positioned.fill(
                                            child: Opacity(
                                              opacity: 0.15,
                                              child: Container(
                                                color: const Color(0xFF000000),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }))

                            // SliverToBoxAdapter(
                            //   child: PreferredSize(
                            //       preferredSize: tabBar.preferredSize,
                            //       child: Padding(
                            //         padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                            //         child: tabBar,
                            //       )),
                            // ),
                            // SliverFillRemaining(
                            //   child: TabBarView(
                            //     controller: _tabController,
                            //     children: [
                            //       const TabDetail(),
                            //       Column(
                            //         crossAxisAlignment: CrossAxisAlignment.start,
                            //         children: [
                            //           const Padding(
                            //             padding: EdgeInsets.fromLTRB(16, 0, 0, 16),
                            //             child: Text(
                            //               "Select Date",
                            //               style: TextStyle(
                            //                   fontSize: 24, fontWeight: FontWeight.w800),
                            //             ),
                            //           ),
                            //           Center(
                            //             child: Card(
                            //               child: SizedBox(
                            //                 height: 60,
                            //                 width: dateCardWidth * dates.length,
                            //                 child: ListView.builder(
                            //                   scrollDirection: Axis.horizontal,
                            //                   itemCount: dates.length,
                            //                   itemBuilder: (_, index) => GestureDetector(
                            //                     onTap: () {
                            //                       context.read<OrderBloc>().add(
                            //                           OrderEvent.selectDate(
                            //                               date: DateFormat("yyyy-mm-dd")
                            //                                   .format(dates[selected])));
                            //                       setState(() {
                            //                         selected = index;
                            //                       });
                            //                     },
                            //                     child: Container(
                            //                         width: dateCardWidth,
                            //                         decoration: BoxDecoration(
                            //                           borderRadius: BorderRadius.circular(6),
                            //                           color: selected == index
                            //                               ? Colors.blue
                            //                               : Colors.transparent,
                            //                         ),
                            //                         child: Column(
                            //                           mainAxisAlignment:
                            //                               MainAxisAlignment.spaceAround,
                            //                           children: [
                            //                             Text(
                            //                               DateFormat('EEE')
                            //                                   .format(dates[index]),
                            //                               style: TextStyle(
                            //                                   color: selected == index
                            //                                       ? Colors.white
                            //                                       : Colors.black45,
                            //                                   fontWeight: FontWeight.w700),
                            //                             ),
                            //                             Text("${dates[index].day}",
                            //                                 style: TextStyle(
                            //                                     color: selected == index
                            //                                         ? Colors.white
                            //                                         : Colors.black45,
                            //                                     fontSize: 16))
                            //                           ],
                            //                         )),
                            //                   ),
                            //                 ),
                            //               ),
                            //             ),
                            //           ),
                            //           const Padding(
                            //             padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
                            //             child: Text(
                            //               "Cinema",
                            //               style: TextStyle(
                            //                   fontSize: 24, fontWeight: FontWeight.w800),
                            //             ),
                            //           ),
                            //           const Expanded(child: CinemaSchedule()),
                            //         ],
                            //       )
                            //     ],
                            //   ),
                            // )
                          ];
                        },
                        body: ListView(
                          children: [
                            if (value.value.credits.cast.isNotEmpty) ...{
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child:
                                      Text("Casts & Crews", style: mediumTitle),
                                ),
                              ),
                              SizedBox(
                                height: 145,
                                child: _PersonList(e: value.value.credits.cast),
                              ),
                            },
                            if (value.value.videos.trailers.isNotEmpty) ...{
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 0, 16, 16),
                                  child: value.value.videos.trailers.length == 1
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
                            if (value.value.similar.movieList.isNotEmpty) ...{
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 0, 16, 16),
                                  child: Text("Another Movies Like This",
                                      style: mediumTitle),
                                ),
                              ),
                              Container(
                                height: 100,
                                margin: const EdgeInsets.only(bottom: 24),
                                child: _SimilarList(
                                  e: value.value.similar.movieList,
                                ),
                              ),
                            },
                          ],
                        )))));
      },
    );
  }
}

class CinemaSchedule extends StatelessWidget {
  const CinemaSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: CinemaServices().getCinemaList(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return (snapshot.data!.map(
                success: (result) => ListView(
                      physics: const ScrollPhysics(),
                      children: result.value
                          .map((e) => CinemaCard(cinema: e))
                          .toList(),
                    ),
                failed: (result) => Text(result.message)));
          } else {
            return const SizedBox();
          }
        });
  }
}

class TabDetail extends StatelessWidget {
  const TabDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailBloc, MovieDetailState>(
      builder: (context, state) {
        return state.when(
            initial: () => const Text(""),
            loaded: (movie) => movie.map(
                success: (result) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                          child: Text(
                            "Overview",
                            style: mediumTitle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                          child: Text(movie.map(
                            success: (value) => value.value.overview,
                            failed: (value) => value.message,
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                          child: Text(
                            "Casts",
                            style: mediumTitle,
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 16),
                            height: 140,
                            child: _PersonList(
                                e: result.value.credits.cast +
                                    result.value.credits.crew))
                      ],
                    ),
                failed: (result) => Text(result.message)),
            loading: (() => const Text("Loading")));
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
