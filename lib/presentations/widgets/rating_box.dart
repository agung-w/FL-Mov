import 'package:flutter/material.dart';
import 'package:movie_app/presentations/helper/text_style.dart';

class RatingBox extends StatelessWidget {
  const RatingBox({super.key, required this.rating, required this.size});

  final String rating;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
            child: Image.asset(
              'assets/tmdb.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            width: size * 3 - 10,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Color(0xFF01D5E4), Color(0XFF01b4e4)]),
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Text(rating,
                  style: smallTitle.merge(TextStyle(
                      color: Colors.white, height: 1.2, fontSize: size - 3))),
            ),
          )
        ],
      ),
    );
  }
}
