import 'package:drift/drift.dart';

class User extends Table {
  // 비디오 아이디
  IntColumn get id => integer().autoIncrement()();
  // 비디오 이름
  TextColumn get name => text()();

  BoolColumn get isPushNotification => boolean()();

  // 생성날짜
  DateTimeColumn get createdDate => dateTime().clientDefault(
          () => DateTime.now()
  )();

  // 변경날짜
  DateTimeColumn get updatedDate => dateTime()();
}