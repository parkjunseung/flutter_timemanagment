import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time_management/calendar/view/calendar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
          children: [
            Container(
              color: Colors.red,
              width: 393.w,
              height: 94.h,
            ),
            Calendar(),
            Container(
              color: Colors.green,
              width: 393.w,
              height: 231.h,
            ),
          ],
        ),
    );
  }
}
