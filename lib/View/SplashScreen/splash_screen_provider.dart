import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:petapp/View/OnBoardingScreen/on_bording_screen.dart';

class SplashScreenProvider extends ChangeNotifier {
  void goTo() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(OnBordingScreen());
    });
    notifyListeners();
  }
}
