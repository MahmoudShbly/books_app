import 'package:books_app/features/home/presentation/views/widget/book_details_section.dart';
import 'package:books_app/features/home/presentation/views/widget/custom_book_details_app_bar.dart';
import 'package:books_app/features/home/presentation/views/widget/similar_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CustomBookDetailsAppBar(),
                BookDetailsSection(),

                Expanded(child: const SizedBox(height: 20)),
                SimilarBookSection(),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
