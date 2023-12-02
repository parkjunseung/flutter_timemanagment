import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time_management/calendar/view/calendar.dart';
import 'package:time_management/calendar/view/calendarDetails.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Container(
            width: 395.w,
            height: 852.h,
            child: Column(
              children: [
                Text('임시 화면입니다.'),
                Calendar(),
              ],
            ),
          ),
    );
  }
}
