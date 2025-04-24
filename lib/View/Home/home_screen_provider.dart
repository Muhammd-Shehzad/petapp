import 'package:flutter/material.dart';

class HomeScreenProvider extends ChangeNotifier {
  List animal = ['assets/dog.png', 'assets/cat2.png', 'assets/loop.png'];
  List name = ['Dog', 'Cat', 'Rabbit'];
  List price = ['\$20', '\$30', '\$40'];

  List<Color> color = [Color(0xFFF3C266), Colors.brown];

  List slider = ['assets/all.png', 'assets/dog.png', 'assets/cat.png'];
}
