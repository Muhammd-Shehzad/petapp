import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:petapp/Utils/Roures/routes.dart';
import 'package:petapp/Utils/Roures/routes_name.dart';
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
                  SizedBox(
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
                              InkWell(
                                onTap: () => Get.toNamed(RoutesName.AllAnimal),
                                child: Text(
                                  'SeeAll',
                                  style: TextStyle(
                                    color: Color(0xFFF3C266),
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color(0xFFF3C266),
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
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
                                child: InkWell(
                                  onTap: () => model.OnTapScreen(index),
                                  child: Container(
                                    height: 150.h,
                                    width: 150.w,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(model.slider[index]),
                                      ),
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
                                      clipBehavior: Clip.none,
                                      children: [
                                        ClipPath(
                                          clipper: SpeechBubbleClipper(),
                                          child: Container(
                                            height: 200.h,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFF3C266),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                right: 100.w,
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 20.w,
                                                          vertical: 10.h,
                                                        ),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          model.name[index],
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 30.sp,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        SizedBox(width: 10.w),
                                                        Text(
                                                          'Age|1Y',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 30.sp,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 20.w,
                                                        ),
                                                    child: Text(
                                                      'Pain itself,\nlet it be loved,\nis amet,consectetur',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 20.w,
                                                        ),
                                                    child: Text(
                                                      'Price:${model.price[index]}',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 30.sp,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),

                                        Positioned(
                                          left: 200.w,
                                          top: -10.h,
                                          child: Image.asset(
                                            model.animal[index],
                                            height: 200.h,
                                            width: 200.w,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                  : Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        ClipPath(
                                          clipper: SpeechBubbleClipper(),
                                          child: Container(
                                            height: 200.h,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Colors.brown,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                right: 100.w,
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 20.w,
                                                          vertical: 10.h,
                                                        ),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          model.name[index],
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 30.sp,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        SizedBox(width: 10.w),
                                                        Text(
                                                          'Age|1Y',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 30.sp,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 20.w,
                                                        ),
                                                    child: Text(
                                                      'Pain itself,\nlet it be loved,\nis amet,consectetur',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 20.w,
                                                        ),
                                                    child: Text(
                                                      'Price:${model.price[index]}',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 30.sp,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),

                                        Positioned(
                                          left: 200.w,
                                          top: -10.h,
                                          child: Image.asset(
                                            model.animal[index],
                                            height: 200.h,
                                            width: 200.w,
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
