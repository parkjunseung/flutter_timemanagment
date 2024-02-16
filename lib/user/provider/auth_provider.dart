import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:time_management/common/view/profile_screen.dart';
import 'package:time_management/common/view/splash_screen.dart';
import 'package:time_management/user/model/user_model.dart';
import 'package:time_management/user/provider/user_provider.dart';
import 'package:time_management/view/main_screen.dart';
import 'package:time_management/common/view/profile_screen.dart';

final authProvider = ChangeNotifierProvider<AuthProvider>((ref) {
  return AuthProvider(ref: ref);
});

class AuthProvider extends ChangeNotifier {
  final Ref ref;

  AuthProvider({
    required this.ref,
  }) {
    ref.listen<UserModelBase?>(userProvider, (previous, next) {
      if (previous != next) {
        notifyListeners();
      }
    });
  }

  List<GoRoute> get routes => [
        GoRoute(
          path: '/',
          name: 'main',
          builder: (_, __) => MainScreen(),
        ),
        GoRoute(
          path: '/splash',
          name: 'splash',
          builder: (_, state) => SplashScreen(),
        ),
        GoRoute(
          path: '/profile',
          name: 'profile',
          builder: (_, state) => ProfileScreen(),
        ),
      ];

  // SplashScreen
  String? redirectLogic(BuildContext context, GoRouterState state) {
    final UserModelBase? user = ref.read(userProvider);
    print('redirectLogic');
    print(user);
    if (user == null) {
      return '/profile';
    }

    if (user is UserModel) {
      return state.location == '/profile' ? '/main' : null;
    }


    return null;
  }
}
