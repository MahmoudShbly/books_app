import 'package:flutter/material.dart';
import 'package:books_app/features/home/presentation/views/widget/custom_list_view_item.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)=>CustomListViewItem(),
        ),
    );
  }
}
