import 'package:flutter/material.dart';
import 'package:movie_app/entities/movie.dart';
import 'package:movie_app/presentations/helper/text_style.dart';
import 'package:movie_app/presentations/pages/person_detail_page.dart';
import 'package:movie_app/presentations/widgets/image_loading_effect.dart';

class VerticalPersonCard extends StatelessWidget {
  final TMDBPerson person;
  final bool? isFirst;
  final bool? isLast;

  const VerticalPersonCard(
      {super.key, required this.person, this.isFirst, this.isLast});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => PersonDetailPage(
            person: person,
          ),
        ));
      },
      child: Container(
        margin: EdgeInsets.only(
            left: isFirst == true ? 16 : 10, right: isLast == true ? 16 : 0),
        width: 75,
        child: Column(
          children: [
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.black26, width: 1),
                  image: DecorationImage(
                      image: person.castPictureUrl(person.profilePath).image,
                      fit: BoxFit.fitWidth)),
            ),
            Text(
              person.name,
              style: overviewText,
              softWrap: false,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            if (person.character != null) ...{
              Text(
                "${person.character}",
                softWrap: false,
                style: shadeSmallText,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            }
          ],
        ),
      ),
    );
  }
}
