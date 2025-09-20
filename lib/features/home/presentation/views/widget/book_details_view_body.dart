import 'package:books_app/features/home/presentation/views/widget/custom_book_details_app_bar.dart';
import 'package:books_app/features/home/presentation/views/widget/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(16.0,),
      child: Column(
        children: <Widget>[
          CustomBookDetailsAppBar(),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:width*.2),
            child: CustomBookImage(),
          )
        ],
      ),
    );
  }
}


