import 'package:flutter/material.dart';
import 'package:time_management/common/navbar/navbar.dart';
import 'package:time_management/common/screen/main_screen.dart';

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
            Text('임시 화면입니다.'),
            MainScreen(),
          ],
        ),
      ),
    );
  }
}
