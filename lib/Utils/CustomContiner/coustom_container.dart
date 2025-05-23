import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    this.height,
    this.width,
    this.color,
    this.title,
    this.des,
    this.boderColor,
  });

  final height;
  final width;
  final color;
  final title;
  final des;
  final boderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 90.h,
      width: width ?? 100.w,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: boderColor ?? Colors.grey),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title ?? 'Age',
            style: TextStyle(
              fontSize: 20.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            des ?? '1 Year',
            style: TextStyle(
              fontSize: 20.sp,
              color: Colors.brown,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
