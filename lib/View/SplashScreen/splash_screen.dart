import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petapp/View/SplashScreen/splash_screen_provider.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashScreenProvider splash = SplashScreenProvider();
  @override
  void initState() {
    splash.goTo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SplashScreenProvider(),
      child: Consumer<SplashScreenProvider>(
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
                  top: 270,
                  left: 25,
                  right: 25,
                  child: Image.asset(
                    'assets/splashScreentext.png',
                    height: 250.h,
                    width: 250.w,
                  ),
                ),
                Positioned(bottom: -0, child: Image.asset('assets/btm.png')),
              ],
            ),
          );
        },
      ),
    );
  }
}
