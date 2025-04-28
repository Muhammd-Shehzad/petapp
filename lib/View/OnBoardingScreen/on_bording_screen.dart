import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:petapp/Utils/Roures/routes_name.dart';
import 'package:petapp/View/Home/home_screen.dart';
import 'package:petapp/View/OnBoardingScreen/on_bording_screen_provider.dart';
import 'package:provider/provider.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({super.key});

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnBordingScreenProvider(),
      child: Consumer<OnBordingScreenProvider>(
        builder: (context, model, child) {
          return Scaffold(
            body: Stack(
              children: [
                Positioned(
                  top: -70,
                  left: -90,
                  child: Image.asset('assets/ra3.png'),
                ),
                Positioned(
                  top: 150,
                  left: 25,
                  right: 25,
                  child: Image.asset(
                    'assets/splashScreenpic2.png',
                    height: 290.h,
                    width: 290.w,
                  ),
                ),
                Positioned(
                  top: 470,
                  left: 25,
                  right: 25,
                  child: Image.asset(
                    'assets/splashScreentext2.png',
                    height: 150.h,
                    width: 150.w,
                  ),
                ),
                Positioned(
                  top: 650,
                  right: 20,
                  left: 20,
                  child: Text(
                    'Pain itself, it is important to understand,\nis followed by pleasure.\nNow it is diam and used for alignment.\nThe cat is in the vestibule.',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF4A4A4A),
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Positioned(
                  top: 800,
                  right: 25,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFEB7E45),
                    radius: 30.r,
                    child: IconButton(
                      onPressed: () {
                        Get.toNamed(RoutesName.OnBoarding);
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
