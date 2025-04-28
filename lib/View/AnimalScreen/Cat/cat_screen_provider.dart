import 'package:flutter/widgets.dart';

class CatScreenProvider extends ChangeNotifier {
  List<String> catImages = [
    'assets/cat1.png',
    'assets/cat2.png',
    'assets/cat3.png',
    'assets/cat4.png',
    'assets/cat5.png',
  ];
  List<String> catNames = [
    'Persian Cat',
    'Siamese Cat',
    'Bengal Cat',
    'Maine Coon',
    'Sphynx Cat',
  ];
}
