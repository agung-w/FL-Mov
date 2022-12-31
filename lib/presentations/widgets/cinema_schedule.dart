import 'package:flutter/material.dart';
import 'package:movie_app/presentations/widgets/cinema_card.dart';
import 'package:movie_app/services/cinema_services.dart';

class CinemaSchedule extends StatelessWidget {
  const CinemaSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: CinemaServices().getCinemaList(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return (snapshot.data!.map(
                success: (result) => ListView(
                      physics: const ScrollPhysics(),
                      children: result.value
                          .map((e) => CinemaCard(cinema: e))
                          .toList(),
                    ),
                failed: (result) => Text(result.message)));
          } else {
            return const SizedBox();
          }
        });
  }
}
