import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time_management/calendar/view/calendar/calendar_detail.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  color: Colors.red,
                  width: 393.w,
                  height: 94.h,
                ),
                CalendarDetail(),
                Container(
                  color: Colors.green,
                  width: 393.w,
                  height: 231.h,
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
