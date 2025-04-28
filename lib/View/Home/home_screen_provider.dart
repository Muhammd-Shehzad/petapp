import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:petapp/Utils/Roures/routes.dart';
import 'package:petapp/Utils/Roures/routes_name.dart';
import 'package:petapp/View/AllAnimals/all_animal.dart';
import 'package:petapp/View/AnimalScreen/Dog/dog_screen.dart';

class HomeScreenProvider extends ChangeNotifier {
  List animal = ['assets/dog.png', 'assets/cat2.png', 'assets/loop.png'];
  List name = ['Dog', 'Cat', 'Rabbit'];
  List price = ['\$20', '\$30', '\$40'];

  List<Color> color = [Color(0xFFF3C266), Colors.brown];

  List slider = [
    'assets/all.png',
    'assets/dog.png',
    'assets/fishs.png',
    'assets/pig.png',
  ];

  void OnTapScreen(int index) {
    switch (index) {
      case 0:
        Get.toNamed(RoutesName.AllAnimal, arguments: 0);
        break;
      case 1:
        Get.toNamed(RoutesName.DogScreen, arguments: 1);
        break;
      case 2:
        Get.toNamed(RoutesName.FishScreen, arguments: 2);
        break;
      case 3:
        Get.toNamed(RoutesName.PigeonScreen, arguments: 3);
        break;

      default:
        Get.to(
          () => Scaffold(
            body: Center(child: Text('No route defined for ${index}')),
          ),
        );
    }
  }
}
