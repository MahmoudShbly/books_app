import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,  this.count=0,  this.rate=0});
  final int count;
  final double rate;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(FontAwesomeIcons.solidStar, color: Colors.amber, size: 16),
        SizedBox(width: 6.3),
        Text(rate.toString(), style: Styles.textStyle16),
        SizedBox(width: 5),
        Text(
          '($count) ',
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
