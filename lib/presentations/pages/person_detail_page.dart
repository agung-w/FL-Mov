import 'package:flutter/material.dart';
import 'package:movie_app/entities/movie.dart';
import 'package:movie_app/presentations/helper/text_style.dart';
import 'package:movie_app/presentations/widgets/clickable_poster_card.dart';
import 'package:movie_app/services/movie_services.dart';

class PersonDetailPage extends StatelessWidget {
  final TMDBPerson person;

  const PersonDetailPage({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: MovieServices().getPersonCredits(person.id),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return snapshot.data!.map(
              success: (value) => Scaffold(
                appBar: AppBar(),
                backgroundColor: Colors.white,
                body: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                          child: Text(
                            person.name,
                            style: largeTitle,
                          ),
                        ),
                        if (value.value.movieCredits.isNotEmpty) ...{
                          Container(
                            constraints:
                                const BoxConstraints(minWidth: double.infinity),
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.white, Color(0xFFf1f0f5)])),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Text(
                                    "Movie",
                                    style: mediumTitle,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 20),
                                  child: SizedBox(
                                    height: 100,
                                    child: _PosterList(
                                      e: value.value.movieCredits,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        },
                        if (value.value.tvCredits.isNotEmpty) ...{
                          Container(
                            constraints:
                                const BoxConstraints(minWidth: double.infinity),
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.white, Color(0xFFf1f0f5)])),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Text(
                                    "TV Show",
                                    style: mediumTitle,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 24),
                                  child: SizedBox(
                                    height: 100,
                                    child: _PosterList(
                                      e: value.value.tvCredits,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        },
                      ]),
                ),
              ),
              failed: (value) => Scaffold(
                appBar: AppBar(),
                body: const SingleChildScrollView(
                    child: Center(
                  child: Text("Loading"),
                )),
              ),
            );
          } else {
            return Scaffold(
              appBar: AppBar(),
              body: const SingleChildScrollView(
                  child: Center(
                child: Text("Loading"),
              )),
            );
          }
        });
  }
}

class _PosterList extends StatelessWidget {
  final List<dynamic> e;

  const _PosterList({
    required this.e,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
        clipBehavior: Clip.none,
        physics: const ScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          for (int i = 0; i < e.length; i++) ...{
            if (i == 0) ...{
              ClickablePosterCard(
                item: e.elementAt(i),
                isFirst: true,
                shadow: true,
              )
            } else if (i == e.length - 1) ...{
              ClickablePosterCard(
                item: e.elementAt(i),
                isLast: true,
                shadow: true,
              )
            } else ...{
              ClickablePosterCard(
                item: e.elementAt(i),
                shadow: true,
              )
            }
          }
        ]);
  }
}
