import 'package:flutter/material.dart';
import 'package:time_management/common/navbar/navbar.dart';
import 'package:time_management/common/screen/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(),
      body: MainScreen(),
    );
  }
}
