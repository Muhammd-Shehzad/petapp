import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:petapp/View/AllAnimals/all_animal.dart';

class HomeScreenProvider extends ChangeNotifier {
  List animal = ['assets/dog.png', 'assets/cat2.png', 'assets/loop.png'];
  List name = ['Dog', 'Cat', 'Rabbit'];
  List price = ['\$20', '\$30', '\$40'];

  List<Color> color = [Color(0xFFF3C266), Colors.brown];

  List slider = ['assets/all.png', 'assets/dog.png', 'assets/cat.png'];

  List<Map<dynamic, dynamic>> data = [];

  void OnTapScreen(index) {
    if (index == 0) {
      Get.to(AllAnimal(index: index));
    } else if (index == 1) {
      Get.to(AllAnimal(index: index));
    } else if (index == 2) {
      Get.to(AllAnimal(index: index));
    }
  }
}
