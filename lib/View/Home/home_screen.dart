import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petapp/View/Home/home_screen_provider.dart';
import 'package:petapp/View/Utils/CustomContainerClipper.dart';
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
                                  color: Color.fromARGB(
                                    255,
                                    221,
                                    209,
                                    187,
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
                            vertical: 10,
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
                          padding: EdgeInsets.all(2.w),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Container(
                                  height: 150.h,
                                  width: 150.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(model.slider[index]),
                                    ),
                                  ),
                                ),
                              );
                            },
                            itemCount: model.slider.length,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'The Best Price',
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
                        Expanded(
                          child: ListView.builder(
                            itemCount: model.animal.length,
                            itemBuilder: (context, index) {
                              return index.isEven
                                  ? Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Stack(
                                      children: [
                                        ClipPath(
                                          clipper: SpeechBubbleClipper(),
                                          child: Container(
                                            height: 200.h,
                                            width: double.infinity.w,
                                            decoration: BoxDecoration(
                                              color: Colors.brown,
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        20,
                                                                    vertical:
                                                                        10,
                                                                  ),
                                                              child: Text(
                                                                'Cat',
                                                                style: TextStyle(
                                                                  color:
                                                                      Colors
                                                                          .white,
                                                                  fontSize:
                                                                      30.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        20.w,
                                                                  ),
                                                              child: Text(
                                                                'Pain itself,\nlet it be loved,\nis amet,consectetur',
                                                                style: TextStyle(
                                                                  color:
                                                                      Colors
                                                                          .white,
                                                                  fontSize:
                                                                      18.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        20.w,
                                                                  ),
                                                              child: Text(
                                                                'Price: \$ 20',
                                                                style: TextStyle(
                                                                  color:
                                                                      Colors
                                                                          .white,
                                                                  fontSize:
                                                                      30.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Image.asset(
                                                  model.animal[index],
                                                  height: 100.h,
                                                  width: 100.w,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),

                                        // Positioned(
                                        //   top: 20,
                                        //   left: 20,
                                        //   child: Container(
                                        //     height: 30.h,
                                        //     width: 30.w,
                                        //     decoration: BoxDecoration(
                                        //       color: Colors.white,
                                        //       borderRadius:
                                        //           BorderRadius.circular(25.r),
                                        //     ),
                                        //     child: Icon(
                                        //       Icons.favorite,
                                        //       color: Colors.red,
                                        //       size: 18.sp,
                                        //     ),
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  )
                                  : Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Stack(
                                      children: [
                                        ClipPath(
                                          clipper: SpeechBubbleClipper(),
                                          child: Container(
                                            height: 200.h,
                                            width: double.infinity.w,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFF3C266),
                                            ),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  model.animal[index],
                                                ),
                                                Image.asset(
                                                  model.animal[index],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),

                                        // Positioned(
                                        //   top: 20,
                                        //   left: 20,
                                        //   child: Container(
                                        //     height: 30.h,
                                        //     width: 30.w,
                                        //     decoration: BoxDecoration(
                                        //       color: Colors.white,
                                        //       borderRadius:
                                        //           BorderRadius.circular(25.r),
                                        //     ),
                                        //     child: Icon(
                                        //       Icons.favorite,
                                        //       color: Colors.red,
                                        //       size: 18.sp,
                                        //     ),
                                        //   ),
                                        // ),
                                      ],
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
            ),
      ),
    );
  }
}
