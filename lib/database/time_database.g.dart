// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_database.dart';

// ignore_for_file: type=lint
class $UserTable extends User with TableInfo<$UserTable, UserData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isPushNotificationMeta =
      const VerificationMeta('isPushNotification');
  @override
  late final GeneratedColumn<bool> isPushNotification = GeneratedColumn<bool>(
      'is_push_notification', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_push_notification" IN (0, 1))'));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      clientDefault: () => DateTime.now());
  static const VerificationMeta _updatedDateMeta =
      const VerificationMeta('updatedDate');
  @override
  late final GeneratedColumn<DateTime> updatedDate = GeneratedColumn<DateTime>(
      'updated_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, userId, name, isPushNotification, createdDate, updatedDate];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user';
  @override
  VerificationContext validateIntegrity(Insertable<UserData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('is_push_notification')) {
      context.handle(
          _isPushNotificationMeta,
          isPushNotification.isAcceptableOrUnknown(
              data['is_push_notification']!, _isPushNotificationMeta));
    } else if (isInserting) {
      context.missing(_isPushNotificationMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    if (data.containsKey('updated_date')) {
      context.handle(
          _updatedDateMeta,
          updatedDate.isAcceptableOrUnknown(
              data['updated_date']!, _updatedDateMeta));
    } else if (isInserting) {
      context.missing(_updatedDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      isPushNotification: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}is_push_notification'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      updatedDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_date'])!,
    );
  }

  @override
  $UserTable createAlias(String alias) {
    return $UserTable(attachedDatabase, alias);
  }
}

class UserData extends DataClass implements Insertable<UserData> {
  final int id;
  final String userId;
  final String name;
  final bool isPushNotification;
  final DateTime createdDate;
  final DateTime updatedDate;
  const UserData(
      {required this.id,
      required this.userId,
      required this.name,
      required this.isPushNotification,
      required this.createdDate,
      required this.updatedDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['user_id'] = Variable<String>(userId);
    map['name'] = Variable<String>(name);
    map['is_push_notification'] = Variable<bool>(isPushNotification);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['updated_date'] = Variable<DateTime>(updatedDate);
    return map;
  }

  UserCompanion toCompanion(bool nullToAbsent) {
    return UserCompanion(
      id: Value(id),
      userId: Value(userId),
      name: Value(name),
      isPushNotification: Value(isPushNotification),
      createdDate: Value(createdDate),
      updatedDate: Value(updatedDate),
    );
  }

  factory UserData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserData(
      id: serializer.fromJson<int>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      name: serializer.fromJson<String>(json['name']),
      isPushNotification: serializer.fromJson<bool>(json['isPushNotification']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      updatedDate: serializer.fromJson<DateTime>(json['updatedDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'userId': serializer.toJson<String>(userId),
      'name': serializer.toJson<String>(name),
      'isPushNotification': serializer.toJson<bool>(isPushNotification),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'updatedDate': serializer.toJson<DateTime>(updatedDate),
    };
  }

  UserData copyWith(
          {int? id,
          String? userId,
          String? name,
          bool? isPushNotification,
          DateTime? createdDate,
          DateTime? updatedDate}) =>
      UserData(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        name: name ?? this.name,
        isPushNotification: isPushNotification ?? this.isPushNotification,
        createdDate: createdDate ?? this.createdDate,
        updatedDate: updatedDate ?? this.updatedDate,
      );
  @override
  String toString() {
    return (StringBuffer('UserData(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('name: $name, ')
          ..write('isPushNotification: $isPushNotification, ')
          ..write('createdDate: $createdDate, ')
          ..write('updatedDate: $updatedDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, userId, name, isPushNotification, createdDate, updatedDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserData &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.name == this.name &&
          other.isPushNotification == this.isPushNotification &&
          other.createdDate == this.createdDate &&
          other.updatedDate == this.updatedDate);
}

class UserCompanion extends UpdateCompanion<UserData> {
  final Value<int> id;
  final Value<String> userId;
  final Value<String> name;
  final Value<bool> isPushNotification;
  final Value<DateTime> createdDate;
  final Value<DateTime> updatedDate;
  const UserCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.name = const Value.absent(),
    this.isPushNotification = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.updatedDate = const Value.absent(),
  });
  UserCompanion.insert({
    this.id = const Value.absent(),
    required String userId,
    required String name,
    required bool isPushNotification,
    this.createdDate = const Value.absent(),
    required DateTime updatedDate,
  })  : userId = Value(userId),
        name = Value(name),
        isPushNotification = Value(isPushNotification),
        updatedDate = Value(updatedDate);
  static Insertable<UserData> custom({
    Expression<int>? id,
    Expression<String>? userId,
    Expression<String>? name,
    Expression<bool>? isPushNotification,
    Expression<DateTime>? createdDate,
    Expression<DateTime>? updatedDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (name != null) 'name': name,
      if (isPushNotification != null)
        'is_push_notification': isPushNotification,
      if (createdDate != null) 'created_date': createdDate,
      if (updatedDate != null) 'updated_date': updatedDate,
    });
  }

  UserCompanion copyWith(
      {Value<int>? id,
      Value<String>? userId,
      Value<String>? name,
      Value<bool>? isPushNotification,
      Value<DateTime>? createdDate,
      Value<DateTime>? updatedDate}) {
    return UserCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      isPushNotification: isPushNotification ?? this.isPushNotification,
      createdDate: createdDate ?? this.createdDate,
      updatedDate: updatedDate ?? this.updatedDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (isPushNotification.present) {
      map['is_push_notification'] = Variable<bool>(isPushNotification.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (updatedDate.present) {
      map['updated_date'] = Variable<DateTime>(updatedDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('name: $name, ')
          ..write('isPushNotification: $isPushNotification, ')
          ..write('createdDate: $createdDate, ')
          ..write('updatedDate: $updatedDate')
          ..write(')'))
        .toString();
  }
}

abstract class _$LocalDataBase extends GeneratedDatabase {
  _$LocalDataBase(QueryExecutor e) : super(e);
  late final $UserTable user = $UserTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [user];
}
