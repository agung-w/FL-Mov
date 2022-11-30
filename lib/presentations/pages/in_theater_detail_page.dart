import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class InTheaterDetailPage extends StatelessWidget {
  final String image;
  const InTheaterDetailPage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image(
          fit: BoxFit.fitHeight,
          height: MediaQuery.of(context).size.height * 0.6,
          image: NetworkImage(image),
        ),
      ),
    );
  }
}
