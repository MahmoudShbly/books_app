import 'package:books_app/core/utils/my_assets.dart';
import 'package:books_app/features/home/presentation/views/home_view.dart';
import 'package:books_app/features/splash/presentation/views/widget/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';

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
    initSlidingAnimation(); 
    navigateToHome();
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
  void initSlidingAnimation() {
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
  void navigateToHome() {
    Future.delayed(Duration(seconds: 2),(){
      Get.to(()=>HomeView(),transition: Transition.fade,duration: kTabScrollDuration);
    });
  }
}
