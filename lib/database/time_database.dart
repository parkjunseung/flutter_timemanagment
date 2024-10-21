import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:time_management/model/user.dart';

// private 값들까지 불러올 수 없다.
part 'time_database.g.dart';

// Driftdatabase
@DriftDatabase(
  tables: [
    User,
  ],
)

class LocalDataBase extends _$LocalDataBase{
  LocalDataBase() : super(_openConnection());

  // select
  Future<UserData> getUser() => select(user).getSingle() ;
  // createUser
  Future<int> createUser(UserCompanion data) => into(user).insert(data);

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(()async{
    // 데이터베이스를 생성할 경로를 받아옴
    final dbFolder = await getApplicationDocumentsDirectory();
    // 파일 생성(db 파일)
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    // 데이터 베이스 반환
    return NativeDatabase(file);
  });
}