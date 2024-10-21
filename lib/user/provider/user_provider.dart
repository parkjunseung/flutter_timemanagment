import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time_management/user/model/user_model.dart';
import 'package:time_management/user/repository/auth_repository.dart';
import 'package:time_management/user/repository/user_repository.dart';

final userProvider = StateNotifierProvider<UserStateNotifier, UserModelBase?>(
  (ref) {
    final authRepository = ref.watch(authRepositoryProvider);
    final userRepository = ref.watch(userRepositoryProvider);

    return UserStateNotifier(
      authRepository: authRepository,
      userRepository: userRepository
    );
  },
);

class UserStateNotifier extends StateNotifier<UserModelBase?> {
  final AuthRepository authRepository;
  final UserRepository userRepository;

  UserStateNotifier({
    required this.authRepository,
    required this.userRepository
  }) : super(UserModelLoading()) {
    // 내 정보 가져오기
    getUser();
  }

  Future<void> getUser() async {
    print(0);
    Future.delayed(const Duration(milliseconds: 3000), () async {
      final res = await userRepository.GetUser();

      if (res.id > 0) {
        Future.delayed(const Duration(milliseconds: 3000), () {
          UserModel user = new UserModel(
              id: res.userId,
              username: res.name,
              isPushNotification: res.isPushNotification,
              createdDate: res.createdDate,
              updatedDate: res.updatedDate
          );
          state = user;
        });
      } else {
        Future.delayed(const Duration(milliseconds: 3000), () {
          final resp = null;
          state = resp;
        });
      }
    });

    print(3);
  }

  Future<bool> CreateUser(name) async {
    var result = false;
    if(name == '' || name == null) {
      return false;
    } else {
      UserModel user = new UserModel(
          username: name,
          isPushNotification: true,
          createdDate: new DateTime.now()
      );

      int res = await userRepository.CreateUser(user);
      if (res != 0) {
        state = user;
        result = true;
      } else {
        return false;
      }
    }
    return result ;
  }
}
