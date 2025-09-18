import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.lightGreenAccent,
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    'Hary Potter And The Goblet Of Fire ',
                    style: Styles.textStyle20.copyWith(
                      fontFamily: 'GT Secrta Fine',
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 3),
            
                Text(
                  'poster ',
                  style: Styles.textStyle14.copyWith(color: Colors.grey),
                ),
                const SizedBox(height: 3),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
                  children: <Widget>[
                    Text(
                      r'price $',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
            
                    ),
            
                    BookRating()
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(FontAwesomeIcons.solidStar, color: Colors.amber, size: 16),
        SizedBox(
          width: 6.3,
        ),
        Text('0.0',style: Styles.textStyle16,),
        SizedBox(
          width: 5,
        ),
        Text('(Reviews) ',style: Styles.textStyle14,),
      ],
    );
  }
}
