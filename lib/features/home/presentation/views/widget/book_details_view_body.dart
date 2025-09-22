import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/presentation/views/widget/action_button.dart';
import 'package:books_app/features/home/presentation/views/widget/book_rating.dart';
import 'package:books_app/features/home/presentation/views/widget/custom_book_details_app_bar.dart';
import 'package:books_app/features/home/presentation/views/widget/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: CustomBookImage(),
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
          SizedBox(
            height: 15,
          ),
          ActionButtons(),
        ],
      ),
    );
  }
}

