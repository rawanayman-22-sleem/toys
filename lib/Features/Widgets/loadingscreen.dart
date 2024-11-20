import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:toy_shop/Features/pages/BottomNav.dart';
import 'package:toy_shop/Features/pages/Home.dart';


class Loadingscreen extends StatelessWidget {
  const Loadingscreen({super.key});
  //get loading => null;
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash:
      LottieBuilder.asset("assets/Lottie/Animation - 1727347840329.json"),

      nextScreen:  BottomNav(),
      splashIconSize: 400,
      splashTransition: SplashTransition.sizeTransition,
      animationDuration: const Duration(seconds:7),
      backgroundColor: Colors.white,
    );
  }
}
