import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petapp/View/Home/home_screen_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeScreenProvider(),
      child: Consumer<HomeScreenProvider>(
        builder:
            (context, model, child) => Scaffold(
              body: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: model.bac.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Image.asset('assets/ra1.png'),
                              Positioned(
                                top: -5,
                                left: 240,
                                child: Image.asset(
                                  model.animal[index],
                                  height: 150.h,
                                  width: 150.w,
                                ),
                              ),
                              Positioned(
                                top: 20,
                                left: 20,
                                child: Container(
                                  height: 40.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25.r),
                                  ),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 18.sp,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}
