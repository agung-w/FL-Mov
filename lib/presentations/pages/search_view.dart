import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/search_bloc.dart';
import 'package:movie_app/entities/movie.dart';
import 'package:movie_app/presentations/pages/in_theater_detail_page.dart';
import 'package:movie_app/presentations/pages/movie_detail_page.dart';
import 'package:movie_app/presentations/pages/person_detail_page.dart';
import 'package:movie_app/presentations/pages/tv_detail_page.dart';

import 'package:movie_app/presentations/widgets/search_box.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController query = TextEditingController();
    TabBar tabBar = TabBar(
      isScrollable: true,
      padding: const EdgeInsets.only(left: 10),
      unselectedLabelColor: Colors.black,
      // labelColor: Colors.black,
      indicatorPadding: const EdgeInsets.fromLTRB(6, 8, 6, 8),
      indicator: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      tabs: const [
        Tab(icon: Text("Top Result")),
        Tab(icon: Text("Movies / Films")),
        Tab(icon: Text("Tv Shows")),
        Tab(icon: Text("Casts and Crews")),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            context.read<SearchBloc>().add(SearchEvent.topSearch(query.text));
            break;
          case 1:
            context.read<SearchBloc>().add(SearchEvent.movieSearch(query.text));
            break;
          case 2:
            context.read<SearchBloc>().add(SearchEvent.tvSearch(query.text));
            break;
          case 3:
            context
                .read<SearchBloc>()
                .add(SearchEvent.personSearch(query.text));
            break;
        }
      },
    );
    return WillPopScope(
      onWillPop: () async {
        context.read<SearchBloc>().add(SearchEvent.clear(context));
        return false;
      },
      child: DefaultTabController(
        length: 4,
        child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  bottom: (state.mapOrNull(
                    loaded: (value) => PreferredSize(
                        preferredSize: tabBar.preferredSize, child: tabBar),
                  )),
                  actions: [
                    GestureDetector(
                      onTap: () => context
                          .read<SearchBloc>()
                          .add(SearchEvent.clear(context)),
                      child: const Align(
                        alignment: FractionalOffset.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 16, 10),
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                  title: Container(
                    margin: EdgeInsets.only(
                        top: tabBar.preferredSize.height.toDouble() - 20),
                    child: SearchBox(
                      readOnly: false,
                      autoFocus: state.mapOrNull(
                            loaded: (value) => false,
                          ) ??
                          true,
                      controller: query,
                    ),
                  ),
                ),
                body: (state.map(
                    initial: (value) => null,
                    loadFailed: (value) => Center(child: Text(value.message)),
                    loaded: (result) {
                      if (result.movieList.isEmpty &&
                          result.personList.isEmpty &&
                          result.tvShowList.isEmpty) {
                        return Center(
                            child: Text("No result found for ${result.query}"));
                      } else {
                        return ListView(
                          children: [
                            if (result.inTheaterList.isNotEmpty) ...{
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(16, 5, 16, 5),
                                    child: Text(
                                      "In Theater Now",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 145,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: result.inTheaterList.map((e) {
                                        return InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      InTheaterDetailPage(
                                                        movie: e,
                                                      )),
                                            );
                                          },
                                          child: Container(
                                            margin:
                                                const EdgeInsets.only(left: 16),
                                            width: 100,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                    image: e
                                                        .moviePosterUrl(
                                                            e.posterUrl)
                                                        .image,
                                                    fit: BoxFit.fill)),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(16, 10, 16, 0),
                                    child: Text(
                                      "Other Result",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            },
                            if (result.movieList.isNotEmpty) ...{
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  children: result.movieList.map((e) {
                                    return _MovieCard(
                                      e: e,
                                    );
                                  }).toList(),
                                ),
                              ),
                            },
                            if (result.tvShowList.isNotEmpty) ...{
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  children: result.tvShowList.map((e) {
                                    return _TvShowCard(
                                      e: e,
                                    );
                                  }).toList(),
                                ),
                              ),
                            },
                            if (result.personList.isNotEmpty) ...{
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  children: result.personList.map((e) {
                                    return _PersonCard(
                                      e: e,
                                    );
                                  }).toList(),
                                ),
                              ),
                            }
                          ],
                        );
                      }
                    })));
          },
        ),
      ),
    );
  }
}

class _MovieCard extends StatelessWidget {
  final TMDBMovie e;

  const _MovieCard({required this.e});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MovieDetailPage(
                    e: e,
                  )),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            Container(
              width: 110,
              height: 65,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: e
                          .moviePosterUrl(e.backdropPath ?? e.posterPath)
                          .image)),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      e.title,
                      maxLines: 2,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                    if (e.mediaType != null) ...{
                      Text(
                        "${e.mediaType}",
                        maxLines: 1,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    },
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TvShowCard extends StatelessWidget {
  final TMDBTv e;

  const _TvShowCard({required this.e});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => TvDetailPage(
                    e: e,
                  )),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            Container(
              width: 110,
              height: 65,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: e
                          .moviePosterUrl(e.backdropPath ?? e.posterPath)
                          .image)),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      e.name,
                      maxLines: 2,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                    if (e.mediaType != null) ...{
                      Text(
                        "${e.mediaType}",
                        maxLines: 1,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    },
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PersonCard extends StatelessWidget {
  final TMDBPerson e;

  const _PersonCard({required this.e});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PersonDetailPage(
                    person: e,
                  )),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(1000),
                  image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: e.castPictureUrl(e.profilePath).image)),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      e.name,
                      maxLines: 2,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                    Text(
                      "${e.knownForDepartment}",
                      maxLines: 1,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
