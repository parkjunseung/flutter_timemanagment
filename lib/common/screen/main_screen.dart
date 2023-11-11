import 'package:flutter/material.dart';
import 'package:time_management/common/navbar/navbar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(),
      body: Container(),
    );
  }
}
