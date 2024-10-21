import 'package:drift/drift.dart';

class User extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get userId => text()();
  TextColumn get name => text()();

  BoolColumn get isPushNotification => boolean()();

  // 생성날짜
  DateTimeColumn get createdDate => dateTime().clientDefault(
          () => DateTime.now()
  )();

  // 변경날짜
  DateTimeColumn get updatedDate => dateTime()();
}