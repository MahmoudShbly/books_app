import 'package:flutter/material.dart';

class CutomButton extends StatelessWidget {
  const CutomButton({
    super.key,
    required this.border,
    required this.backgroundColor,
    required this.buttonChild,
  });

  final BorderRadiusGeometry border;
  final Widget buttonChild;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: border),
          backgroundColor: backgroundColor,
        ),
        child: buttonChild,
      ),
    );
  }
}
