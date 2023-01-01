import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/bloc/order_bloc.dart';
import 'package:movie_app/entities/cinema.dart';
import 'package:movie_app/presentations/helper/text_style.dart';
import 'package:movie_app/services/cinema_services.dart';

class SelectTicketSchedulePage extends StatefulWidget {
  const SelectTicketSchedulePage({super.key});

  @override
  State<SelectTicketSchedulePage> createState() =>
      _SelectTicketSchedulePageState();
}

class _SelectTicketSchedulePageState extends State<SelectTicketSchedulePage> {
  late List<DateTime> dates;

  int selected = 0;
  double dateCardWidth = 50;
  @override
  void initState() {
    dates =
        List.generate(7, (index) => DateTime.now().add(Duration(days: index)));
    super.initState();
    context.read<OrderBloc>().add(OrderEvent.selectDate(
        date: DateFormat("yyyy-MM-dd").format(dates[selected])));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 0, 16),
              child: Text(
                "Select Date",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
              ),
            ),
            Center(
              child: Card(
                child: SizedBox(
                  height: 60,
                  width: dateCardWidth * dates.length,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: dates.length,
                    itemBuilder: (_, index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = index;
                          context.read<OrderBloc>().add(OrderEvent.selectDate(
                              date: DateFormat("yyyy-MM-dd")
                                  .format(dates[selected])));
                        });
                      },
                      child: Container(
                          width: dateCardWidth,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: selected == index
                                ? Colors.blue
                                : Colors.transparent,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                DateFormat('EEE').format(dates[index]),
                                style: TextStyle(
                                    color: selected == index
                                        ? Colors.white
                                        : Colors.black45,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text("${dates[index].day}",
                                  style: TextStyle(
                                      color: selected == index
                                          ? Colors.white
                                          : Colors.black45,
                                      fontSize: 16))
                            ],
                          )),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
              child: Text(
                "Cinema",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 22),
              child: _CinemaSchedule(date: dates[selected]),
            ),
          ],
        ),
      ),
    );
  }
}

class _CinemaSchedule extends StatelessWidget {
  final DateTime date;

  const _CinemaSchedule({required this.date});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: CinemaServices().getCinemaList(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return (snapshot.data!.map(
                success: (result) => Column(
                      children: result.value
                          .map((e) => _CinemaCard(
                                cinema: e,
                                date: date,
                              ))
                          .toList(),
                    ),
                failed: (result) => Text(result.message)));
          } else {
            return const SizedBox();
          }
        });
  }
}

class _CinemaCard extends StatelessWidget {
  final Cinema cinema;

  final DateTime date;

  const _CinemaCard({required this.cinema, required this.date});

  @override
  Widget build(BuildContext context) {
    List<String> schedule = [
      "10:00",
      "12:00",
      "14:00",
      "16:00",
      "18:00",
      "20:00",
      "22:00"
    ];
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.all(0),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Image.asset(
                    'assets/${cinema.brand}.png',
                    width: 35,
                    height: 35,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Text(
                cinema.name,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black12,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                    children: cinema.studios
                        .map(
                          (e) => Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      e.code,
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(e.toCurrencyID(e.price),
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500))
                                  ],
                                ),
                              ),
                              GridView.count(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                crossAxisCount: 3,
                                childAspectRatio: 3.5,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                                padding:
                                    const EdgeInsets.only(left: 16, right: 10),
                                children: schedule
                                    .map((time) => GestureDetector(
                                          onTap: !_isTimePassed(date, time)
                                              ? () {
                                                  context.read<OrderBloc>().add(
                                                      OrderEvent.selectTime(
                                                          time: time,
                                                          cinema: cinema,
                                                          studio: e,
                                                          context: context));
                                                }
                                              : null,
                                          child: Container(
                                              decoration: BoxDecoration(
                                                  color:
                                                      _isTimePassed(date, time)
                                                          ? Colors.grey
                                                          : Colors.blue,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Center(
                                                  child: Text(
                                                time,
                                                style: overviewText.merge(
                                                    const TextStyle(
                                                        color: Colors.white70)),
                                              ))),
                                        ))
                                    .toList(),
                              )
                            ],
                          ),
                        )
                        .toList()),
              ),
            ),
          )
        ],
      ),
    );
  }

  bool _isTimePassed(DateTime date, String time) {
    String schedule = "${DateFormat("yyyy-MM-dd").format(date)} $time";
    return schedule.compareTo(
                DateFormat("yyyy-MM-dd HH:00").format(DateTime.now())) >
            0
        ? false
        : true;
  }
}
