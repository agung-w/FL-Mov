import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/movie_detail_bloc.dart';
import 'package:shimmer/shimmer.dart';

class InTheaterTab extends StatefulWidget {
  const InTheaterTab({super.key});

  @override
  State<InTheaterTab> createState() => _InTheaterTabState();
}

class _InTheaterTabState extends State<InTheaterTab>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
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
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: tabBar.preferredSize,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: tabBar,
          )),
      body: TabBarView(
        controller: _tabController,
        children: [
          BlocBuilder<MovieDetailBloc, MovieDetailState>(
            builder: (context, state) {
              return state.when(
                  initial: () => const Text(""),
                  loaded: (movie) => movie.map(
                      success: (result) => Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                                  child: Text(
                                    "Overview",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 16, 16, 0),
                                  child: Text(movie.map(
                                    success: (value) => value.value.overview,
                                    failed: (value) => value.message,
                                  )),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                                  child: Text(
                                    "Casts",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(16, 16, 0, 0),
                                  height: 75,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: (result.value.casts)!
                                        .map((e) => ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: Card(
                                                  child: SizedBox(
                                                width: 215,
                                                child: Row(
                                                  children: [
                                                    Image(
                                                      fit: BoxFit.fill,
                                                      image: Image.network(e
                                                              .getProfilePicture())
                                                          .image,
                                                      height: 75,
                                                      width: 60,
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                8.0, 0, 8.0, 0),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              e.name,
                                                              maxLines: 1,
                                                              overflow:
                                                                  TextOverflow
                                                                      .clip,
                                                              style: const TextStyle(
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            Text(
                                                              e.character ?? "",
                                                              overflow:
                                                                  TextOverflow
                                                                      .clip,
                                                              maxLines: 2,
                                                              style: const TextStyle(
                                                                  color: Colors
                                                                      .black45),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )),
                                            ))
                                        .toList(),
                                  ),
                                )
                              ],
                            ),
                          ),
                      failed: (result) => Text(result.message)),
                  loading: (() => const Text("Loading")));
            },
          ),
          Icon(Icons.directions_transit),
        ],
      ),
    );
  }
}
