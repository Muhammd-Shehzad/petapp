import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:petapp/Utils/Roures/routes_name.dart';

class SplashScreenProvider extends ChangeNotifier {
  void goTo() {
    Future.delayed(Duration(seconds: 3), () {
      Get.offAllNamed(RoutesName.OnBoarding);
      notifyListeners();
    });
    notifyListeners();
  }
}
