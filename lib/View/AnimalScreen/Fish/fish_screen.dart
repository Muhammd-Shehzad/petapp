import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:petapp/View/AllAnimals/all_animal_provider.dart';
import 'package:petapp/View/AnimalScreen/Fish/fish_screen_provider.dart';
import 'package:provider/provider.dart';

class FishScreen extends StatefulWidget {
  final int index;
  const FishScreen({super.key, required this.index});

  @override
  State<FishScreen> createState() => _FishScreenState();
}

class _FishScreenState extends State<FishScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FishScreenProvider(),
      child: Consumer<FishScreenProvider>(
        builder:
            (context, model, child) => Scaffold(
              body: Stack(
                children: [
                  Positioned(
                    top: 100.h,
                    left: 3,
                    right: 3,
                    bottom: 3,
                    child: SizedBox(
                      height: double.infinity.h,
                      width: double.infinity.w,
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.w),
                              child: GridView.builder(
                                itemCount: model.sliderfish.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 10.h,
                                      crossAxisSpacing: 5.w,
                                      childAspectRatio: 7 / 10,
                                    ),
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      SizedBox(
                                        height: 200.h,
                                        width: 200.w,
                                        child: Image.asset(
                                          model.sliderfish[index],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          model.name[index],
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -70,
                    left: -90,
                    child: Image.asset('assets/ra3.png'),
                  ),
                  Positioned(
                    top: 40,
                    left: 20,
                    child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 30.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}
