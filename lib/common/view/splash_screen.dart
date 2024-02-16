import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  static String get routeName => 'profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/image/splash/splash_screen.jpg'),
                  fit: BoxFit.cover
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 90.h),
              Text(
                '시정',
                style: TextStyle(
                  fontSize: 64.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                '달력,메모장',
                style: TextStyle(
                  fontSize: 13.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 15.h),
              Text(
                '당신의 시간을 같이 하는 달력',
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 120.h),
              Image.asset(
                'assets/image/splash/logo.png',
                width: 80.w,
                height: 79.h,
              ),
            ],
          )
      ),
    );
  }
}