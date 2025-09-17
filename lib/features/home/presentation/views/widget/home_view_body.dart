import 'package:books_app/features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:books_app/features/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CustomAppBar(),

        CustomListViewItem(),
      ],
    );
  }
}
