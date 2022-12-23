import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/bloc/ticket_bloc.dart';
import 'package:movie_app/entities/order.dart';
import 'package:movie_app/presentations/widgets/dashed_divider.dart';
import 'package:qr_flutter/qr_flutter.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<TicketBloc>().add(const TicketEvent.getActiveTicket());
    TabBar tabBar = TabBar(
      unselectedLabelColor: Colors.grey,
      indicator: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.blue, width: 2))),
      tabs: const [
        Tab(
          icon: Text(
            "Active",
          ),
        ),
        Tab(icon: Text("All")),
      ],
      onTap: (index) {
        if (index == 0) {
          context.read<TicketBloc>().add(const TicketEvent.getActiveTicket());
        } else {
          context.read<TicketBloc>().add(const TicketEvent.getAllTicket());
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
          Tab(
            child: RefreshIndicator(
              onRefresh: () async {
                return context
                    .read<TicketBloc>()
                    .add(const TicketEvent.getActiveTicket());
              },
              child: const _TicketList(
                  onNullNotes: "You currently don't have an active ticket yet"),
            ),
          ),
          Tab(
            child: RefreshIndicator(
              onRefresh: () async {
                return context
                    .read<TicketBloc>()
                    .add(const TicketEvent.getAllTicket());
              },
              child: const _TicketList(
                  onNullNotes: "You've never bought a ticket"),
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
                const Text("data");
          },
        ),
      ],
    );
  }
}

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
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black12, width: 1),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: SizedBox(
                      width: 80,
                      height: 110,
                      child:
                          ticket.movie.moviePosterUrl(ticket.movie.posterUrl))),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(ticket.movie.title),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 40,
                          height: 35,
                          child:
                              Image.asset('assets/${ticket.cinema.brand}.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5.0),
                          child: Text(
                            "${ticket.cinema.name} ${ticket.studio.code}",
                            style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                    Text(DateFormat('EEEE, d MMM yyyy HH:mm')
                        .format(ticket.getDate()))
                  ],
                ),
              )
            ],
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
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 65,
                                height: 40,
                                child: Image.asset(
                                    'assets/${ticket.cinema.brand}.png'),
                              ),
                              Text(
                                ticket.cinema.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            "Scan to print ticket",
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 8, 0, 16),
                            child: ShaderMask(
                              blendMode: BlendMode.srcIn,
                              shaderCallback: (Rect bounds) =>
                                  const LinearGradient(colors: [
                                Colors.blue,
                                Color(0XFFd43ff3)
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
