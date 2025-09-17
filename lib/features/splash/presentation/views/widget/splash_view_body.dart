import 'package:books_app/core/utils/assets.dart';
import 'package:books_app/features/splash/presentation/views/widget/sliding_text.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1), 
    );

    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 3),
      end: Offset.zero,
    ).animate(animationController);

    animationController.forward(); 
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset(MyAssets.logo, height: 250, width: double.infinity),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }
}
