import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: <Widget>[
          IconButton(onPressed: () {GoRouter.of(context).pop();}, icon: Icon(Icons.close)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
    );
  }
}