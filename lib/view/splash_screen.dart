import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import '../module/colors.dart';
import 'search_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SplashScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      color: background1,
      child: Container(
          child: AnimatedSplashScreen(
            backgroundColor: background1,
            splash: 'assets/splash.png', duration: 1000,
            nextScreen: SearchPage(),
            splashTransition: SplashTransition.fadeTransition,
            // pageTransitionType: PageTransitionType.fade,
            splashIconSize: 896.h,
          ),
        ),
    );
  }
}

