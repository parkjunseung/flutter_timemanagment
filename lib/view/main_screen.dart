import 'package:flutter/material.dart';
import 'package:time_management/common/components/floating/floating_button.dart';
import 'package:time_management/common/view/home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        primary: true,
        extendBodyBehindAppBar: true,
        floatingActionButton: floatingButtons(),
        body: Container(
          child: HomeScreen(),
        ),
      ),
    );
  }
}
