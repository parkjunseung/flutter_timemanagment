import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:time_management/database/time_database.dart';
import 'package:time_management/user/model/user_model.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) {

  return UserRepository();
});

class UserRepository {

  UserRepository();

  Future<int> CreateUser(UserModel user) async {
    var result = await GetIt.I<LocalDataBase>().createUser(
        UserCompanion(
            userId: Value(""),
            name: Value(user.username),
            isPushNotification: Value(user.isPushNotification),
            createdDate: Value(user.createdDate)
        )
    );

    return result;
  }

  Future<UserData> GetUser() async {
    return await GetIt.I<LocalDataBase>().getUser();
  }
}
