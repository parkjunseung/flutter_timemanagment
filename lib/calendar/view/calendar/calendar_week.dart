import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalenarWeek extends StatelessWidget {
  const CalenarWeek({Key? key}) : super(key: key);

  Widget DayContainer(String day, Color color) {
    return Center(
      child: Container(
        width: 56.w,
        height: 27.29.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
        ),
        child: Text(
          day,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 28.h,
          child: Row(
            children: [
              DayContainer('日 SUN', Color(0xffC00040)),
              DayContainer('月 SAT', Color(0xff000000)),
              DayContainer('火 TUE', Color(0xff000000)),
              DayContainer('水 WED', Color(0xff000000)),
              DayContainer('木 THU', Color(0xff000000)),
              DayContainer('金 FRI', Color(0xff000000)),
              DayContainer('土 SAT', Color(0xff246F99)),
            ],
          ),
        ),
      ],
    );
  }
}
