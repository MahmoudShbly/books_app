import 'package:books_app/features/home/presentation/views/widget/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilareBooksListView extends StatelessWidget {
  const SimilareBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)=>CustomBookImage(),
        ),
    );
  }
}