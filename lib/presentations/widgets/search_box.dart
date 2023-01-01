import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/search_bloc.dart';

class SearchBox extends StatelessWidget {
  final bool readOnly;

  final bool? autoFocus;

  final TextEditingController? controller;

  final int? index;

  const SearchBox(
      {super.key,
      required this.readOnly,
      this.autoFocus,
      this.controller,
      this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.withOpacity(0.6)),
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
      child: TextField(
          controller: controller,
          autofocus: autoFocus ?? false,
          readOnly: readOnly,
          decoration: const InputDecoration(
              border: InputBorder.none,
              isDense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              prefixIcon: Icon(Icons.search),
              prefixIconConstraints: BoxConstraints(
                minWidth: 25,
                minHeight: 25,
              ),
              prefixIconColor: Colors.black38,
              hintStyle: TextStyle(color: Colors.black38),
              hintText: "Show, Movie, etc."),
          onSubmitted: (!readOnly)
              ? (value) async {
                  if (value.isNotEmpty) {
                    switch (index) {
                      case 0:
                        context
                            .read<SearchBloc>()
                            .add(SearchEvent.topSearch(value));
                        break;
                      case 1:
                        context
                            .read<SearchBloc>()
                            .add(SearchEvent.movieSearch(value));
                        break;
                      case 2:
                        context
                            .read<SearchBloc>()
                            .add(SearchEvent.tvSearch(value));
                        break;
                      case 3:
                        context
                            .read<SearchBloc>()
                            .add(SearchEvent.personSearch(value));
                        break;
                      default:
                        context
                            .read<SearchBloc>()
                            .add(SearchEvent.topSearch(value));
                        break;
                    }
                  } else {
                    null;
                  }
                }
              : null),
    );
  }
}
