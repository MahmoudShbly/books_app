import 'package:books_app/core/utils/app_router.dart';
import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/data/models/book_model/book_model.dart';
import 'package:books_app/features/home/presentation/views/widget/book_rating.dart';
import 'package:books_app/features/home/presentation/views/widget/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class BookListViewItem extends StatelessWidget {
   BookListViewItem({super.key,required this.book});
  BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: () => GoRouter.of(context).push(AppRouter.kBookDetalisView),
        child: SizedBox(
          height: 125,
          child: Row(
            children: <Widget>[
              CustomBookImage(imageUrl: book.volumeInfo.imageLinks.thumbnail),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        book.volumeInfo.title!,
                        style: Styles.textStyle20.copyWith(
                          fontFamily: 'GT Secrta Fine',
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 3),

                    Text(
                      book.volumeInfo.authors!.isEmpty?
                      'Unknown Author': book.volumeInfo.authors!.first
                      ,
                      style: Styles.textStyle14.copyWith(color: Colors.grey),
                    ),
                    const SizedBox(height: 3),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: <Widget>[
                        Text(
                          book.saleInfo?.listPrice!=null?
                          '\$${book.saleInfo?.listPrice!.amount}':'free',
                          style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        BookRating( 
                          count: book.volumeInfo.ratingsCount ?? 0,
                          rate: book.volumeInfo.averageRating?.toDouble() ?? 0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
