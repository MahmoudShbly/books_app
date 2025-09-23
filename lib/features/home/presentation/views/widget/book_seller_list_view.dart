import 'package:books_app/features/home/presentation/views/widget/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BookListView extends StatelessWidget {
  const BookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true, // list view take height of his children
      padding: EdgeInsets.all(0),
      itemBuilder: (context, index) => BestSellerListViewItem(),
      itemCount: 10,
    );
  }
}