import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/presentation/views/widget/book_seller_list_view.dart';
import 'package:books_app/features/search/presentation/views/widget/search_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SearchSection(),
                SizedBox(height: 16),

                Text(
                  'Search Resault',
                  style: GoogleFonts.montserrat(textStyle: Styles.textStyle16),
                ),
                BookListView(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
