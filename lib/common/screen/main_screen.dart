import 'package:flutter/material.dart';
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
            height: 852,
            child: Column(
              children: [
                CalendarDetails(),
              ],
            ),
          ),
    );
  }
}
