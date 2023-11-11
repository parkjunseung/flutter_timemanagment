import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Container(
                color: Colors.red,
                width: 70.0,
                height: 70.0,
              ),
              Container(
                color: Colors.orange,
                width: 70.0,
                height: 70.0,
              ),
              Container(
                color: Colors.blue,
                width: 70.0,
                height: 70.0,
              ),

              Container(
                color: Colors.green,
                width: 70.0,
                height: 70.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}