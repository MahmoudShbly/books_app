import 'package:books_app/features/home/presentation/views/widget/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0,),
      child: Column(
        children: <Widget>[
          CustomBookDetailsAppBar(),
        ],
      ),
    );
  }
}


