import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Text('ddd'),
          ),
          Container(
            child: Text('ddd'),
          ),
          Container(
            child: Text('ddd'),
          ),
          Container(
            child: Text('ddd'),
          ),
        ],
      ),
    );
  }
}
