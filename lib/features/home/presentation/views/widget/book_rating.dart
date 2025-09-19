import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(FontAwesomeIcons.solidStar, color: Colors.amber, size: 16),
        SizedBox(
          width: 6.3,
        ),
        Text('0.0',style: Styles.textStyle16,),
        SizedBox(
          width: 5,
        ),
        Text('(Reviews) ',style: Styles.textStyle14,),
      ],
    );
  }
}
