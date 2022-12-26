import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/search_bloc.dart';
import 'package:movie_app/entities/movie.dart';
import 'package:movie_app/presentations/pages/search_view.dart';
import 'package:movie_app/presentations/pages/searched_page.dart';
import 'package:movie_app/presentations/widgets/search_box.dart';
import 'package:movie_app/services/movie_services.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    var top = 0.0;
    List<DiscoverCategory> genres = MovieServices().getDiscoverItems();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.grey.withOpacity(0.3),
            pinned: true,
            expandedHeight: 145.0,
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(45),
                child: InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (builder) => const SearchView());
                  },
                  child: const IgnorePointer(child: SearchBox(readOnly: true)),
                )),
            flexibleSpace: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              top = constraints.biggest.height;
              return AppBar(
                  flexibleSpace: Stack(
                children: [
                  Align(
                    alignment: FractionalOffset.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 50),
                      child: Text(
                        top > 132 ? "Discover" : "",
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  if (top < 160)
                    Container(
                      color: Colors.white,
                      width: double.infinity,
                      height: top / 2 + 10,
                      padding: const EdgeInsets.only(top: 30),
                      child: Center(
                          child: Text(
                        top < 132 ? "Discover" : "",
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      )),
                    )
                ],
              ));
            }),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 22, 16, 80),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return GestureDetector(
                      onTap: () {
                        context.read<SearchBloc>().add(
                            SearchEvent.findByGenre(genres.elementAt(index)));
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) =>
                              SearchedPage(content: genres.elementAt(index)),
                        ));
                      },
                      child: genres.elementAt(index).poster != null
                          ? _DiscoverCard(genre: genres.elementAt(index))
                          : _CenteredTextDiscoverCard(
                              genre: genres.elementAt(index)));
                },
                childCount: 12,
              ),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: MediaQuery.of(context).size.width / 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 12.0,
                childAspectRatio: 1.75,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _DiscoverCard extends StatelessWidget {
  const _DiscoverCard({
    required this.genre,
  });

  final DiscoverCategory genre;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(genre.poster!),
              fit: BoxFit.fill,
              alignment: Alignment.topCenter),
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            genre.name,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ));
  }
}

class _CenteredTextDiscoverCard extends StatelessWidget {
  const _CenteredTextDiscoverCard({
    required this.genre,
  });

  final DiscoverCategory genre;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: genre.gradient1 != null
              ? LinearGradient(colors: [genre.gradient1!, genre.gradient2!])
              : null,
          borderRadius: BorderRadius.circular(8),
          color: const Color.fromARGB(226, 0, 0, 0)),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          genre.name,
          style: const TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
