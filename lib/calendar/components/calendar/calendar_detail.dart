import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time_management/calendar/components/calendar/calendar_week.dart';
import 'package:time_management/calendar/view/calendar/calendar_Date.dart';

class CalendarDetail extends StatelessWidget {
  const CalendarDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            height: 421.h,
            child: Column(
              children: [
                CalenarWeek(),
                Row(
                  children: [
                    CalendarDate(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
