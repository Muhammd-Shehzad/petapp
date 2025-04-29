import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:petapp/Utils/CustomContiner/coustom_container.dart';
import 'package:petapp/View/Home/home_screen_provider.dart';
import 'package:provider/provider.dart';

class ListViewData extends StatelessWidget {
  ListViewData({super.key, required this.args});
  final Map args;

  @override
  Widget build(BuildContext context) {
    final name = args['name'];
    final image = args['image'];
    final title = args['title'];
    final des = args['des'];
    final price = args['price'];

    return ChangeNotifierProvider(
      create: (context) => HomeScreenProvider(),
      child: Consumer<HomeScreenProvider>(
        builder:
            (context, model, child) => Scaffold(
              body: Stack(
                children: [
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Color(0xFFF3C266)),
                  ),
                  Positioned(
                    top: 270.h,
                    bottom: 0.h,
                    child: Container(
                      height: 200.h,
                      width: 375.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.r),
                          topRight: Radius.circular(30.r),
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, right: 20),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                'Price: $price',
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Color(0xFFF3C266),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 50.sp,
                              color: Colors.brown,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Image.asset('assets/loc.png'),
                                SizedBox(width: 10.w),
                                Text(
                                  'Egypt / Cairo',
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.brown,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 15,
                            ),
                            child: Text(
                              des,
                              style: TextStyle(
                                fontSize: 20.sp,
                                color: Color(0xFF979797),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomContainer(),
                              CustomContainer(title: 'Gender', des: 'Male'),
                              CustomContainer(title: 'Weight', des: '3 kg'),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Container(
                            height: 50.h,
                            width: 300.w,
                            decoration: BoxDecoration(
                              color: Color(0xFFF3C266),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Center(
                              child: Text(
                                'Buy Now',
                                style: TextStyle(
                                  fontSize: 25.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -10.h,
                    right: -13.w,
                    child: Image.asset('assets/btom.png'),
                  ),
                  Positioned(
                    top: 40,
                    left: 10,
                    right: 10,
                    child: Image.asset(image, height: 270.h),
                  ),
                  Positioned(
                    top: 40.h,
                    left: 10.w,
                    child: Container(
                      height: 50.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(Icons.arrow_back_ios_new_rounded),
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
