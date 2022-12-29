import 'package:flutter/material.dart';
import 'package:movie_app/entities/movie.dart';
import 'package:movie_app/presentations/helper/text_style.dart';

class ReviewCard extends StatelessWidget {
  final Review review;
  final bool? isFirst;
  final bool? isLast;

  const ReviewCard(
      {super.key, required this.review, this.isFirst, this.isLast});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: isFirst == true ? 16 : 8, right: isLast == true ? 16 : 0),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.7,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                review.author,
                style: smallTitle,
              ),
              Text("@${review.author.trim()}")
            ],
          ),
          Text(
            review.content,
            maxLines: 4,
            style: shadeSmallText,
          )
        ],
      ),
    );
  }
}
