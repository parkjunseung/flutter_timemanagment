import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

Widget? floatingButtons() {
  return SpeedDial(
    animatedIcon: AnimatedIcons.menu_close,
    visible: true,
    curve: Curves.bounceIn,
    backgroundColor: Colors.blue,
    children: [
      SpeedDialChild(
          child: const Icon(Icons.settings_sharp, color: Colors.white),
          label: "설정",
          labelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 13.0),
          backgroundColor: Colors.blue,
          labelBackgroundColor: Colors.blue,
          onTap: () {}),
      SpeedDialChild(
        child: const Icon(
          Icons.add_chart_rounded,
          color: Colors.white,
        ),
        label: "내 기록",
        backgroundColor: Colors.blue,
        labelBackgroundColor: Colors.blue,
        labelStyle: const TextStyle(
            fontWeight: FontWeight.w500, color: Colors.white, fontSize: 13.0),
        onTap: () {},
      )
    ],
  );
}