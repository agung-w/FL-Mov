import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/ticket_bloc.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    TabBar tabBar = TabBar(
      unselectedLabelColor: Colors.grey,
      indicator: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.blue, width: 2))),
      tabs: const [
        Tab(
          child: Text(
            "Active",
          ),
        ),
        Tab(icon: Text("All")),
      ],
      onTap: (index) {
        if (index == 1) {
          context.read<TicketBloc>().add(const TicketEvent.getAllTicket());
        } else {
          // context.read<TicketBloc>().add(const TicketEvent.getActiveTicket());
        }
      },
    );
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.black, width: 0.5))),
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Text("Tickets"),
            ),
          ),
          bottom: PreferredSize(
              preferredSize: tabBar.preferredSize,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(width: 200, child: tabBar),
                ),
              )),
        ),
        body: TabBarView(children: [
          // Tab(child: BlocBuilder<TicketBloc, TicketState>(
          //   builder: (context, state) {
          //     return state.mapOrNull(
          //           loaded: (value) {
          //             return value.list.mapOrNull(
          //               success: (value) => Column(
          //                   children: value.value
          //                       .map((e) => Text(e.movie.toString()))
          //                       .toList()),
          //             );
          //           },
          //         ) ??
          //         const Text("data");
          //   },
          // )),
          Tab(
            child: Text("TODO: fix endpoint active ticket"),
          ),
          Tab(
            child: RefreshIndicator(
              onRefresh: () async {
                return context
                    .read<TicketBloc>()
                    .add(const TicketEvent.getAllTicket());
              },
              child: ListView(
                children: [
                  BlocBuilder<TicketBloc, TicketState>(
                    builder: (context, state) {
                      return state.mapOrNull(
                            loaded: (value) {
                              return value.list.mapOrNull(
                                  success: (result) => Column(
                                      children: result.value
                                          .map((e) => Container(
                                              padding: EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black12,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      child: SizedBox(
                                                          width: 80,
                                                          height: 110,
                                                          child: Image.network(e
                                                              .movie
                                                              .getPosterUrl()))),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(e.movie.title),
                                                        Row(
                                                          children: [
                                                            SizedBox(
                                                              width: 50,
                                                              height: 35,
                                                              child: Image.asset(
                                                                  'assets/${e.cinema.brand}.png'),
                                                            ),
                                                            Text(e.cinema.name),
                                                            Text(e.studio.code)
                                                          ],
                                                        ),
                                                        Text(e.schedule)
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              )))
                                          .toList()));
                            },
                          ) ??
                          const Text("data");
                    },
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
