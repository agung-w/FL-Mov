import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/bloc/order_bloc.dart';
import 'package:movie_app/presentations/widgets/cinema_schedule.dart';

class BuyTicketPage extends StatefulWidget {
  const BuyTicketPage({super.key});

  @override
  State<BuyTicketPage> createState() => _BuyTicketPageState();
}

class _BuyTicketPageState extends State<BuyTicketPage> {
  late List<DateTime> dates;

  int selected = 0;
  double dateCardWidth = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
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
                      context.read<OrderBloc>().add(OrderEvent.selectDate(
                          date: DateFormat("yyyy-mm-dd")
                              .format(dates[selected])));
                      setState(() {
                        selected = index;
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
          const Expanded(child: CinemaSchedule()),
        ],
      ),
    );
  }
}
