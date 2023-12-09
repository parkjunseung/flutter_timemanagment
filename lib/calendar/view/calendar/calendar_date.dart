import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalendarDate extends StatelessWidget {
  const CalendarDate({Key? key}) : super(key: key);

  Widget DateContainer(double height, String text, bool hasBottomBorder) {
    return Center(
      child: Container(
        width: 56.w,
        height: height.h,
        decoration: BoxDecoration(
          border: Border(
            bottom: hasBottomBorder
                ? BorderSide(color: Colors.black)
                : BorderSide.none,
            left: BorderSide(color: Colors.black),
            right: BorderSide(color: Colors.black),
          ),
        ),
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DateContainer(55, '1', true),
        DateContainer(15, '', true),
        DateContainer(15, '', true),
      ],
    );
  }
}
