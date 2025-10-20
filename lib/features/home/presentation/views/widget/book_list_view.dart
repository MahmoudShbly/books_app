import 'package:books_app/core/widget/custom_circular_indicator.dart';
import 'package:books_app/core/widget/custom_error_massage.dart';
import 'package:books_app/features/home/presentation/manager/newest%20books%20cubit/cubit/newest_books_cubit.dart';
import 'package:books_app/features/home/presentation/views/widget/book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookListView extends StatelessWidget {
  const BookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true, // list view take height of his children
            itemBuilder: (context, index) => BookListViewItem(book: state.data[index],),
            itemCount: state.data.length,
          );
        } else if (state is NewestBooksFailure) {
          return  CustomErrorMassage(errorMassage: state.errorMassage);
        }else{return const CustomCircularIndicator();}
      },
    );
  }
}
