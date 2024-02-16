import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashLayout extends StatelessWidget {
  final String backgroundImage;
  final List<Widget> child;
  final Widget logo;

  const SplashLayout({
    required this.backgroundImage,
    required this.logo,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: child,
        )
    );
  }
}
