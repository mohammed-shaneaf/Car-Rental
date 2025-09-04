import 'package:car_rental/app/app_name.dart';
import 'package:car_rental/app/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RentalApp extends StatelessWidget {
  const RentalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        title: 'Car Rental',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Tajawal',
          // Optional: also set textTheme to adjust sizes/weights
          textTheme: const TextTheme(
            bodyLarge: TextStyle(fontWeight: FontWeight.w400),
            bodyMedium: TextStyle(fontWeight: FontWeight.w400),
            titleLarge: TextStyle(fontWeight: FontWeight.w700),
          ),
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: onGenerateRoute,
        initialRoute: AppName.splash,
      ),
    );
  }
}
