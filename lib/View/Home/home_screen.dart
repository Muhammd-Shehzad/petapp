import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
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
              body: Stack(
                children: [
                  Container(
                    height: double.infinity.h,
                    width: double.infinity.w,
                    child: Column(
                      children: [
                        SizedBox(height: 120.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.r),
                                borderSide: BorderSide(
                                  color: Color(
                                    0xFFF3C266,
                                  ), // custom border color
                                  width: 1.w,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.r),
                                borderSide: BorderSide(
                                  color: Color(0xFFF3C266),
                                  width: 1.w,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.r),
                                borderSide: BorderSide(
                                  color: Color(0xFFF3C266),
                                  width: 1.w,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Categories',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'SeeAll',
                                style: TextStyle(
                                  color: Color(0xFFF3C266),
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color(0xFFF3C266),
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 200,
                          child: PageView.builder(
                            itemCount: model.slider.length,
                            controller: PageController(viewportFraction: 0.5),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  model.slider[index],
                                  height: 100.h,
                                  width: 50.w,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -70,
                    left: -90,
                    child: Image.asset('assets/ra3.png'),
                  ),
                ],
              ),
              // body: Column(
              //   children: [
              //     Expanded(
              //       child: ListView.builder(
              //         itemCount: model.bac.length,
              //         itemBuilder: (context, index) {
              //           return Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: Stack(
              //               children: [
              //                 Image.asset('assets/ra1.png'),
              //                 Positioned(
              //                   top: -5,
              //                   left: 240,
              //                   child: Image.asset(
              //                     model.animal[index],
              //                     height: 150.h,
              //                     width: 150.w,
              //                   ),
              //                 ),
              //                 Positioned(
              //                   top: 20,
              //                   left: 20,
              //                   child: Container(
              //                     height: 40.h,
              //                     width: 40.w,
              //                     decoration: BoxDecoration(
              //                       color: Colors.white,
              //                       borderRadius: BorderRadius.circular(25.r),
              //                     ),
              //                     child: IconButton(
              //                       icon: Icon(
              //                         Icons.favorite,
              //                         color: Colors.red,
              //                         size: 18.sp,
              //                       ),
              //                       onPressed: () {},
              //                     ),
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           );
              //         },
              //       ),
              //     ),
              //   ],
              // ),
            ),
      ),
    );
  }
}
