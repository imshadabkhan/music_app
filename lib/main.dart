import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_app/core/constants/color_constants.dart';
import 'package:music_app/view/starting/splash_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {
        return GetMaterialApp(
          // getPages: AppRoutes.routes,
          defaultTransition: Transition.rightToLeft,
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          theme: ThemeData(fontFamily: "PoppinsBlack",
            primarySwatch: Colors.blue,primaryColor: ColorConstants.primaryColor,scaffoldBackgroundColor: Colors.white,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: SplashView(),
        );
      },
      // child: SplashView(),
    );
  }
}