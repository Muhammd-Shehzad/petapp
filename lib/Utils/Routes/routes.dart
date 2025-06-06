import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:petapp/Utils/Routes/routes_name.dart';
import 'package:petapp/View/AllAnimals/all_animal.dart';
import 'package:petapp/View/AnimalScreen/Dog/dog_screen.dart';
import 'package:petapp/View/AnimalScreen/Fish/fish_screen.dart';
import 'package:petapp/View/AnimalScreen/Pigeon/pigeon_screen.dart';
import 'package:petapp/View/ListViewData/list_view_data.dart';
import 'package:petapp/View/Home/home_screen.dart';
import 'package:petapp/View/OnBoardingScreen/on_bording_screen.dart';
import 'package:petapp/View/SplashScreen/splash_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.SplashScreen:
        return GetPageRoute(settings: settings, page: () => OnBordingScreen());
      case RoutesName.OnBoarding:
        return GetPageRoute(settings: settings, page: () => HomeScreen());
      case RoutesName.HomeScreen:
        return GetPageRoute(
          settings: settings,
          page: () => const SplashScreen(),
        );
      case RoutesName.AllAnimal:
        return GetPageRoute(
          settings: settings,
          page: () => AllAnimal(index: 0),
        );
      case RoutesName.DogScreen:
        return GetPageRoute(
          settings: settings,
          page: () => DogScreen(index: 1),
        );
      case RoutesName.FishScreen:
        return GetPageRoute(
          settings: settings,
          page: () => FishScreen(index: 2),
        );
      case RoutesName.PigeonScreen:
        return GetPageRoute(
          settings: settings,
          page: () => PigeonScreen(index: 3),
        );
      case RoutesName.ListViewData:
        final arg = settings.arguments as Map<String, dynamic>;
        return GetPageRoute(
          settings: settings,
          page: () => ListViewData(args: arg),
        );
      default:
        return GetPageRoute(
          settings: settings,
          page:
              () => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
