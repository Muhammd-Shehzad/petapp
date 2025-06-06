import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:petapp/Utils/Routes/routes.dart';
import 'package:petapp/Utils/Routes/routes_name.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder:
          (context, child) => GetMaterialApp(
            debugShowCheckedModeBanner: false,

            initialRoute: RoutesName.SplashScreen,
            onGenerateRoute: Routes.generateRoute,
          ),
    ),
  );
}
