import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/bloc/ticket_bloc.dart';
import 'package:movie_app/entities/order.dart';
import 'package:movie_app/presentations/helper/text_style.dart';
import 'package:movie_app/presentations/widgets/dashed_divider.dart';
import 'package:movie_app/presentations/widgets/vertical_dashed_divider.dart';
import 'package:qr_flutter/qr_flutter.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<TicketBloc>().add(const TicketEvent.getActiveTicket());
    TabBar tabBar = const TabBar(
      unselectedLabelColor: Colors.grey,
      labelColor: Colors.black,
      indicator: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.blue, width: 2))),
      tabs: [
        Tab(icon: Text("Active")),
        Tab(icon: Text("All")),
      ],
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
          Tab(
            child: RefreshIndicator(
              onRefresh: () async {
                return context
                    .read<TicketBloc>()
                    .add(const TicketEvent.getActiveTicket());
              },
              child: Builder(builder: (context) {
                context
                    .read<TicketBloc>()
                    .add(const TicketEvent.getActiveTicket());

                return const _TicketList(
                    onNullNotes:
                        "You currently don't have an active ticket yet");
              }),
            ),
          ),
          Tab(
            child: RefreshIndicator(
              onRefresh: () async {
                return context
                    .read<TicketBloc>()
                    .add(const TicketEvent.getAllTicket());
              },
              child: Builder(builder: (context) {
                context
                    .read<TicketBloc>()
                    .add(const TicketEvent.getAllTicket());

                return const _TicketList(
                    onNullNotes: "You've never bought a ticket");
              }),
            ),
          ),
        ]),
      ),
    );
  }
}

class _TicketList extends StatelessWidget {
  final String onNullNotes;

  const _TicketList({required this.onNullNotes});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        BlocBuilder<TicketBloc, TicketState>(
          builder: (context, state) {
            return state.mapOrNull(loaded: (value) {
                  return value.list.map(
                      success: (result) => result.value.isEmpty
                          ? SizedBox(
                              height: MediaQuery.of(context).size.height * 0.75,
                              child: Align(
                                  alignment: FractionalOffset.center,
                                  child: Text(onNullNotes)),
                            )
                          : Column(
                              children: result.value
                                  .map((e) => _TicketCard(
                                        ticket: e,
                                      ))
                                  .toList()),
                      failed: (value) {
                        return Center(child: Text(value.message));
                      });
                }) ??
                const Text("");
          },
        ),
      ],
    );
  }
}

// class _TicketCard extends StatelessWidget {
//   final Order ticket;

//   const _TicketCard({required this.ticket});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => showDialog(
//           context: context,
//           builder: (context) => _TicketDetail(ticket: ticket)),
//       child: Container(
//           margin: const EdgeInsets.all(8),
//           height: 150,
//           width: double.infinity,
//           child: Row(children: [
//             Expanded(
//               child: Container(
//                 padding: const EdgeInsets.all(8),
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: const Color(0xFF0080E9)),
//                 child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         ticket.movie.title,
//                         style: smallTitle
//                             .merge(const TextStyle(color: Colors.white)),
//                         maxLines: 1,
//                       ),
//                       Text(
//                         "${ticket.cinema.brand} ${ticket.cinema.name}"
//                             .toUpperCase(),
//                         style: normalText
//                             .merge(const TextStyle(color: Colors.white)),
//                         maxLines: 1,
//                       )
//                     ]),
//               ),
//             ),
//             Container(
//               width: 100,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   image: DecorationImage(
//                       image: ticket.movie
//                           .moviePosterUrl(ticket.movie.posterUrl)
//                           .image,
//                       fit: BoxFit.fill)),
//             )
//           ])),
//     );
//   }
// }

class _TicketCard extends StatelessWidget {
  final Order ticket;

  const _TicketCard({required this.ticket});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showDialog(
          context: context,
          builder: (context) => _TicketDetail(ticket: ticket)),
      child: Container(
          margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
          height: 120,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipPath(
                  clipper: TicketLeftClipper(),
                  child: Stack(
                    children: [
                      Container(
                        width: 160,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                            image: ticket.movie
                                .moviePosterUrl(ticket.movie.posterUrl)
                                .image,
                          ),
                        ),
                      ),
                      Container(
                        width: 160,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.white.withOpacity(0),
                              const Color(0xFF0080E9).withOpacity(0.5),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: VerticalDashedDivider(
                    width: 2,
                  ),
                ),
                Expanded(
                  child: ClipPath(
                    clipper: TicketRightClipper(),
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.amber),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket.movie.title,
                            // ignore: prefer_const_constructors
                            style: smallTitle.merge(TextStyle(
                                color: Colors.white.withOpacity(0.95))),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "${ticket.cinema.name} - ${ticket.studio.code}",
                                  style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16)
                                      .merge(const TextStyle(
                                          color: Color(0xFF0080E9))),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            DateFormat('EEEE, d MMM yyyy HH:mm')
                                .format(ticket.getDate()),
                            style: shadeNormalText
                                .merge(const TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class _TicketDetail extends StatelessWidget {
  final Order ticket;

  const _TicketDetail({required this.ticket});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ticket Detail"),
      ),
      backgroundColor: const Color(0xFF152067),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(32, 32, 32, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Column(children: [
                ClipPath(
                    clipper: TicketTopClipper(),
                    child: Container(
                      padding: const EdgeInsets.only(top: 16),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: ticket.cinema.brand == "cgv" ? 35 : 25,
                                child: Image.asset(
                                  'assets/${ticket.cinema.brand}.png',
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(ticket.cinema.name,
                                    style: largeTitle
                                        .merge(const TextStyle(height: 1.6))),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 2),
                            child: Text(
                              "Scan to print ticket",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 8, 0, 16),
                            child: ShaderMask(
                              blendMode: BlendMode.srcIn,
                              shaderCallback: (Rect bounds) =>
                                  const LinearGradient(colors: [
                                Color(0xFF0080E9),
                                Color(0xFFB100D4)
                              ]).createShader(
                                Rect.fromLTWH(
                                    0, 0, bounds.width, bounds.height),
                              ),
                              child: QrImage(
                                data:
                                    "CinematixTicketID: ${ticket.id}, Movie:${ticket.movie.title}",
                                gapless: true,
                                size: 150,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                ClipPath(
                  clipper: TicketBottomClipper(),
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        const DashedDivider(),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            ticket.movie.title,
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 22),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Date",
                                style: TextStyle(fontSize: 16),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    DateFormat('EEEE, d MMM yyyy')
                                        .format(ticket.getDate()),
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    DateFormat('HH:mm')
                                        .format(ticket.getDate()),
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Studio",
                                style: TextStyle(fontSize: 16),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "${ticket.studio.code} - ${ticket.studio.id} ",
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Seat",
                                style: TextStyle(fontSize: 16),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(children: [
                                    for (int i = 0;
                                        i < ticket.seats.length;
                                        i++)
                                      Text(
                                        i < ticket.seats.length - 1
                                            ? "${ticket.seats.elementAt(i).seat}, "
                                            : ticket.seats.elementAt(i).seat,
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      )
                                  ]),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class TicketTopClipper extends CustomClipper<Path> {
  double radius = 15;

  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height - radius);
    path.quadraticBezierTo(radius, size.height - radius, radius, size.height);
    path.lineTo(size.width - radius, size.height);
    path.quadraticBezierTo(size.width - radius, size.height - radius,
        size.width, size.height - radius);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class TicketBottomClipper extends CustomClipper<Path> {
  double radius = 15;

  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, radius);
    path.quadraticBezierTo(size.width - radius, radius, size.width - radius, 0);
    path.lineTo(radius, 0);
    path.quadraticBezierTo(radius, radius, 0, radius);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class TicketLeftClipper extends CustomClipper<Path> {
  double radius = 10;

  @override
  Path getClip(Size size) {
    Path path = Path();
    // path.moveTo(size.width - radius, 0);
    path.lineTo(size.width - radius, 0);
    path.quadraticBezierTo(size.width - radius, radius, size.width, radius);
    path.lineTo(size.width, size.height - radius);
    path.quadraticBezierTo(size.width - radius, size.height - radius,
        size.width - radius, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class TicketRightClipper extends CustomClipper<Path> {
  double radius = 10;

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(radius, 0);
    // path.lineTo(size.width, radius);
    path.quadraticBezierTo(radius, radius, 0, radius);
    path.lineTo(0, size.height - radius);
    path.quadraticBezierTo(radius, size.height - radius, radius, size.height);
    path.lineTo(size.width, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
