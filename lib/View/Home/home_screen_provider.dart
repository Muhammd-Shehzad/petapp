import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:petapp/Utils/Routes/routes_name.dart';

class HomeScreenProvider extends ChangeNotifier {
  List animal = [
    'assets/german_shepherd.png',
    'assets/cat2.png',
    'assets/loop.png',
  ];

  List<Color> color = [Color(0xFFF3C266), Colors.brown];

  List slider = [
    'assets/all.png',
    'assets/dog.png',
    'assets/fishs.png',
    'assets/pig.png',
  ];

  List<Map<String, dynamic>> data = [
    {
      'dogs': [
        {'title': 'German Shepherd', 'image': 'assets/german_shepherd.png'},
        {'title': 'Golden Puppy', 'image': 'assets\rabbit.png'},
      ],
    },
  ];

  List<Map<String, dynamic>> animalData = [
    {
      'name': 'Dog',
      'image': 'assets/german_shepherd.png',
      'index': 0,
      'title': 'Age|Y1',
      'des': 'The German Shepherd is a highly intelligent.',
      'price': '\$24',
    },
    {
      'name': 'Cat',
      'image': 'assets/cat2.png',
      'index': 1,
      'title': 'Y|1',
      'des': 'Cats are independent animals known for their playful behavior.',
      'price': '\$24',
    },
    {
      'name': 'Rabbit',
      'image': 'assets/loop.png',
      'index': 2,
      'title': 'Age|Y1.5',
      'des': 'Lop rabbits are easily recognized by their long, floppy ears.',
      'price': '\$24',
    },
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

    // // void OnTapScreen1(int index) {
    // //   switch (index) {
    // //     case 0:
    // //       Get.toNamed(RoutesName.Dog, arguments: 0);
    // //       break;
    // //     case 1:
    // //       Get.toNamed(RoutesName.Cat, arguments: 1);
    // //       break;
    // //     case 2:
    // //       Get.toNamed(RoutesName.Rabbit, arguments: 2);
    // //       break;
    // //     default:
    // //       Get.to(
    // //         () => Scaffold(
    // //           body: Center(child: Text('No route defined for ${index}')),
    // //         ),
    // //       );
    // //   }
    // }
  }
}
