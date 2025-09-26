import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/presentation/views/widget/book_action.dart';
import 'package:books_app/features/home/presentation/views/widget/book_rating.dart';
import 'package:books_app/features/home/presentation/views/widget/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(imageUrl: '',),
        ),
        SizedBox(height: 30),
        Text('Hary Potter And The Goblet Of Fire', style: Styles.textStyle30),
        SizedBox(height: 6),
        Text(
          'GT Secrta Fine',
          style: Styles.textStyle14.copyWith(
            color: Colors.white.withValues(alpha: .7),
          ),
        ),
        SizedBox(height: 18),
        BookRating(),
        SizedBox(height: 15),
        BookAction(),
      ],
    );
  }
}
