import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/search_bloc.dart';
import 'package:movie_app/entities/movie.dart';

class SearchedPage extends StatelessWidget {
  final DiscoverCategory content;

  const SearchedPage({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return WillPopScope(
            onWillPop: () async {
              context.read<SearchBloc>().add(SearchEvent.clear(context));
              return true;
            },
            child: Scaffold(
              appBar: AppBar(
                title: Text(
                  content.name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
                centerTitle: true,
              ),
              body: state.map(
                  initial: (value) => null,
                  loaded: (value) => SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (content.bgColor == null) ...{
                                _PosterHeader(content: content)
                              } else ...{
                                _CenteredTextHeader(
                                  genre: content,
                                )
                              },
                              if (value.results.inTheaterList.isNotEmpty) ...{
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(16, 5, 16, 5),
                                  child: Text(
                                    "In Theater Now",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  height: 110,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children:
                                        value.results.inTheaterList.map((e) {
                                      return Container(
                                        margin: const EdgeInsets.only(left: 16),
                                        width: 80,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: e
                                                    .moviePosterUrl(e.posterUrl)
                                                    .image,
                                                fit: BoxFit.fill)),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              },
                              if (value.results.movieList.isNotEmpty) ...{
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Text(
                                    "${content.name} Movies",
                                    style: const TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: GridView.count(
                                      childAspectRatio: 1.8,
                                      physics: const ScrollPhysics(),
                                      shrinkWrap: true,
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 8,
                                      mainAxisSpacing: 16,
                                      children: value.results.movieList
                                          .map((e) => Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    image: DecorationImage(
                                                        image: e
                                                            .moviePosterUrl(
                                                                e.backdropPath ??
                                                                    e.posterPath)
                                                            .image,
                                                        fit: BoxFit.cover)),
                                              ))
                                          .toList()),
                                )
                              },
                              if (value.results.tvList.isNotEmpty) ...{
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Text(
                                    "${content.name} TV Shows",
                                    style: const TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: GridView.count(
                                      childAspectRatio: 1.8,
                                      physics: const ScrollPhysics(),
                                      shrinkWrap: true,
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 8,
                                      mainAxisSpacing: 16,
                                      children: value.results.tvList
                                          .map((e) => Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    image: DecorationImage(
                                                        image: e
                                                            .moviePosterUrl(
                                                                e.backdropPath ??
                                                                    e.posterPath)
                                                            .image,
                                                        fit: BoxFit.cover)),
                                              ))
                                          .toList()),
                                )
                              }
                            ]),
                      ),
                  loadFailed: (value) => const Center(
                        child: Text("Erorr"),
                      )),
            ));
      },
    );
  }
}

class _PosterHeader extends StatelessWidget {
  const _PosterHeader({
    super.key,
    required this.content,
  });

  final DiscoverCategory content;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
            blendMode: BlendMode.darken,
            shaderCallback: (Rect bounds) => LinearGradient(colors: [
                  content.gradient1 ?? Colors.white.withOpacity(0),
                  content.gradient1 ?? Colors.white.withOpacity(0)
                ], begin: Alignment.topLeft, end: Alignment.bottomRight)
                    .createShader(
                  Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                ),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: content.poster != null
                      ? DecorationImage(
                          image: AssetImage(content.poster!),
                          fit: BoxFit.fill,
                          alignment: Alignment.bottomRight)
                      : null,
                  color: content.bgColor),
              alignment: Alignment.bottomLeft,
            )),
        SizedBox(
          height: 200,
          child: Center(
            child: Text(
              content.name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w600),
            ),
          ),
        )
      ],
    );
  }
}

class _CenteredTextHeader extends StatelessWidget {
  const _CenteredTextHeader({
    required this.genre,
  });

  final DiscoverCategory genre;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
          gradient: genre.gradient1 != null
              ? LinearGradient(colors: [genre.gradient1!, genre.gradient2!])
              : null,
          color: const Color.fromARGB(226, 0, 0, 0)),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          genre.name,
          style: const TextStyle(
              color: Colors.white, fontSize: 36, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
