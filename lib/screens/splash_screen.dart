import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:wrkapp/route/route.dart' as route;
import 'package:wrkapp/screens/login_screen.dart';
import 'package:page_transition/page_transition.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Center(
          child: Container(
            child: Column(
              children: [
                Image.asset('assets/images/united_church_logo.png'),
              ],
            ),
          ),
        ),
          backgroundColor: Colors.red,
          duration: 3000,
        splashIconSize: 400,
        splashTransition: SplashTransition.decoratedBoxTransition,
        pageTransitionType: PageTransitionType.leftToRightWithFade,
        animationDuration: const Duration(seconds: 2),
        nextScreen: LoginScreen(),
    );
  }
}
