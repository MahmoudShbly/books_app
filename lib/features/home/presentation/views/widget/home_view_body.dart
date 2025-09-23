import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/presentation/views/widget/book_seller_list_view.dart';
import 'package:books_app/features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:books_app/features/home/presentation/views/widget/featured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CustomAppBar(),
              ),
              FeaturedListView(),
              const SizedBox(height: 50.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Best Seller',
                  style: GoogleFonts.montserrat(textStyle: Styles.textStyle18),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),

        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: BookListView(),
          ),
        ),
      ],
    );
  }
}
