import 'package:books_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        
        SizedBox(height: 250,width: double.infinity,child: Image.asset(MyAssets.logo,fit: BoxFit.fitHeight,)),
        const Text('Read Books Free',style: TextStyle(color: Colors.white),)
      ],
    );
  }
}