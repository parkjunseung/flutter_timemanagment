import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalendarDate extends StatelessWidget {
  const CalendarDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Center(
            child: Container(
              width: 56.w,
              height: 55.h,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Center(
                child: Text('1'),
              ),
            ),
          ),
          Center(
            child: Container(
              width: 56.w,
              height: 15.h,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black),
                  left: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              width: 56.w,
              height: 15.h,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black),
                  left: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      );
  }
}
