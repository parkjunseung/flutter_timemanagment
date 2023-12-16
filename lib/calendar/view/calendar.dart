import 'package:flutter/material.dart';
import 'package:time_management/calendar/components/calendar/calendar_detail.dart';
import 'package:time_management/calendar/components/calendar/calendar_detail.dart';


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
                CalendarDetail(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
