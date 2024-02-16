import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time_management/user/model/user_model.dart';
import 'package:time_management/user/repository/auth_repository.dart';

final userProvider = StateNotifierProvider<UserStateNotifier, UserModelBase?>(
  (ref) {
    final authRepository = ref.watch(authRepositoryProvider);

    return UserStateNotifier(
      authRepository: authRepository,
    );
  },
);

class UserStateNotifier extends StateNotifier<UserModelBase?> {
  final AuthRepository authRepository;

  UserStateNotifier({
    required this.authRepository,
  }) : super(UserModelLoading()) {
    // 내 정보 가져오기
    getUser();
  }

  Future<void> getUser() async {
    var now = new DateTime.now();

    Future.delayed(const Duration(milliseconds: 3000), () {
      final resp = null;
      print('Hello, talkit World!');
      state = resp;
    });
  }
}
