import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tradingapp/controllers/auth.dart';
import 'package:tradingapp/views/home.dart';
import 'package:tradingapp/views/onboading.dart';
import 'package:page_transition/page_transition.dart';

class SpashScreen extends StatelessWidget {
  const SpashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 3000,
        splash: Image(image: AssetImage('assets/logo.png')),
        nextScreen: Root(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.black);
  }
}

class Root extends StatelessWidget {
  Root({super.key});
  AuthController _authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      print("${_authController.user.value}");
      return _authController.user.value == null ? OnBoarding() : Home();
    });
  }
}
