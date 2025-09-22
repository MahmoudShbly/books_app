import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/core/widget/cutom_button.dart';
import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: CutomButton(
            backgroundColor: Colors.white,
            border: BorderRadiusGeometry.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            buttonChild: Text(r'20$',style: Styles.textStyle18.copyWith(color: Colors.black),),
          ),
        ),
        Expanded(
          child: CutomButton(
            backgroundColor: Colors.orange,
            border: BorderRadiusGeometry.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            buttonChild: Text('Preview',style: Styles.textStyle16.copyWith(color: Colors.white),),
          ),
        ),
      ],
    );
  }
}
