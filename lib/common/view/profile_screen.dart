import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time_management/calendar/const/color.dart';

class ProfileScreen extends StatelessWidget {
  static String get routeName => 'profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/image/splash/profile_screen.jpg'),
                  fit: BoxFit.cover
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 110.h),
              Text(
                '어플에서 사용할 이름을 설정해 주세요',
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 15.h),
              Center(
                child: Padding(
                  child: TextField(
                      style: const TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Color(0xffD9CAAC), width: 1.0),
                              borderRadius: BorderRadius.circular(30)
                          )
                      )
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 70.0),
                ),
              ),
              SizedBox(height: 120.h),
              SizedBox(
                width: 192.w,
                height: 49.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffE4CA9D),
                  ),
                  onPressed: () {
                  },
                  child: Text(
                    '확인',
                    style: TextStyle(
                      color: BOUTTON_FONT_COLOR
                    ),
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}