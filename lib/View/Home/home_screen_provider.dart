import 'package:flutter/material.dart';

class HomeScreenProvider extends ChangeNotifier {
  List animal = ['assets/cat.png', 'assets/dog.png', 'assets/loop.png'];

  List<Color> color = [Color(0xFFF3C266), Colors.brown];

  List slider = ['assets/all.png', 'assets/dog.png', 'assets/cat.png'];
}
