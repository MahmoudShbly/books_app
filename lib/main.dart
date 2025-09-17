import 'package:books_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const BooksApp());
}
class BooksApp extends StatelessWidget {
  const BooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xff100B20),
      ),
      home:const SplashView() ,
    );
  }
}

