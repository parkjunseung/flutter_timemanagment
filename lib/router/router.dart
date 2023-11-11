import 'package:go_router/go_router.dart';
import 'package:time_management/common/screen/home_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return HomeScreen();
      },
    ),
  ],
);
