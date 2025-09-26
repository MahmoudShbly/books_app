
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key,required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Padding(
        padding: const EdgeInsets.only(left: 5.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(image: NetworkImage(imageUrl),fit: BoxFit.cover,),
          ),
        ),
      ),
    );
  }
}
