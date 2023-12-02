import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            color: Colors.black,
            child: Column(
              children: [
                Container(
                  color: Colors.red,
                  width: 70.0,
                  height: 70.h,
                ),
                Container(
                  color: Colors.orange,
                  width: 70.0,
                  height: 70.h,
                ),
                Container(
                  color: Colors.blue,
                  width: 70.0,
                  height: 100.h,
                ),
                Container(
                  color: Colors.green,
                  width: 70.0,
                  height: 70.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
