import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorMassage extends StatelessWidget {
  const CustomErrorMassage({super.key, required this.errorMassage});
  final String errorMassage;
  @override
  Widget build(BuildContext context) {
    return Center( child: Text(errorMassage,style: Styles.textStyle18,),);
  }
}