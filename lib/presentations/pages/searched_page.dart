import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/movie_detail_bloc.dart';
import 'package:movie_app/bloc/order_bloc.dart';
import 'package:movie_app/bloc/search_bloc.dart';
import 'package:movie_app/entities/movie.dart';
import 'package:movie_app/presentations/helper/text_style.dart';
import 'package:movie_app/presentations/pages/in_theater_detail_page.dart';
import 'package:movie_app/presentations/pages/movie_detail_page.dart';
import 'package:movie_app/presentations/widgets/image_loading_effect.dart';

import 'tv_detail_page.dart';

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
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 16),
                                  child: _PosterHeader(content: content),
                                )
                              } else ...{
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 16),
                                  child: _CenteredTextHeader(
                                    genre: content,
                                  ),
                                )
                              },
                              if (value.results.inTheaterList.isNotEmpty) ...{
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 0, 16, 16),
                                  child: Text(
                                    "In Theater Now",
                                    style: mediumTitle,
                                  ),
                                ),
                                Container(
                                  height: 300,
                                  margin: const EdgeInsets.only(bottom: 16),
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children:
                                        value.results.inTheaterList.map((e) {
                                      return GestureDetector(
                                        onTap: () {
                                          context.read<MovieDetailBloc>().add(
                                              MovieDetailEvent.getDetail(
                                                  int.parse(e.tmdbId)));
                                          context.read<OrderBloc>().add(
                                              OrderEvent.selectMovie(movie: e));
                                          Navigator.of(context,
                                                  rootNavigator: true)
                                              .push(
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
                                          width: 200,
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
                              },
                              if (value.results.movieList.isNotEmpty) ...{
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Text(
                                    "${content.name} Movies",
                                    style: mediumTitle,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: _PosterGridView(
                                    children: value.results.movieList
                                        .map((e) => _GridPosterCard(
                                              e: e,
                                              genre: content.name,
                                            ))
                                        .toList(),
                                  ),
                                )
                              },
                              if (value.results.tvList.isNotEmpty) ...{
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Text(
                                    "${content.name} TV Shows",
                                    style: mediumTitle,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: _PosterGridView(
                                    children: value.results.tvList
                                        .map((e) => _GridPosterCard(
                                              e: e,
                                              genre: content.name,
                                            ))
                                        .toList(),
                                  ),
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

class _GridPosterCard extends StatelessWidget {
  final dynamic e;
  final String genre;

  const _GridPosterCard({required this.e, required this.genre});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (e is TMDBMovie) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => MovieDetailPage(
              e: e,
              genre: genre,
            ),
          ));
        } else if (e is TMDBTv) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => TvDetailPage(
              e: e,
              genre: genre,
            ),
          ));
        }
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image(
            image: e.moviePosterUrl(e.backdropPath).image,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              return loadingProgress == null
                  ? child
                  : const ImageLoadingEffect();
            }),
      ),
    );
  }
}

class _PosterGridView extends StatelessWidget {
  final List<Widget> children;

  const _PosterGridView({required this.children});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        childAspectRatio: 1.8,
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 16,
        children: children);
  }
}

class _PosterHeader extends StatelessWidget {
  const _PosterHeader({
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
