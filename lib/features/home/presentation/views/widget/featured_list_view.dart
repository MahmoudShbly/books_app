import 'package:books_app/core/widget/custom_circular_indicator.dart';
import 'package:books_app/core/widget/cutom_error_massage.dart';
import 'package:books_app/features/home/presentation/manager/feature%20books%20cubit/cubit/featrue_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:books_app/features/home/presentation/views/widget/custom_book_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatrueBooksCubit, FeatrueBooksState>(
      builder: (context, state) {
        if (state is FeatrueBooksSuccess) {
          print(state.data);
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: ListView.builder(
              itemCount: state.data.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomBookImage(imageUrl: state.data[index].volumeInfo.imageLinks.thumbnail,),
            ),
          );
        } else if (state is FeatrueBooksFailure) {
          return CutomErrorMassage(errorMassage: state.errorMassage);
        } else {
          return CustomCircularIndicator();
        }
      },
    );
  }
}
