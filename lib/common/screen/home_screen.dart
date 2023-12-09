import 'package:flutter/material.dart';
import 'package:time_management/common/navbar/navbar.dart';
import '../../calendar/view/calendar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        primary: true,
        extendBodyBehindAppBar: true,
        endDrawer: Navbar(),
        body: Column(
          children: [
            Calendar(),
          ],
        ),
      ),
    );
  }
}
