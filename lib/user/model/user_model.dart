import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

abstract class UserModelBase {}

class UserModelError extends UserModelBase {
  final String message;

  UserModelError({
    required this.message,
  });
}

class UserModelLoading extends UserModelBase {}

@JsonSerializable()
class UserModel extends UserModelBase {
  final String? id;
  final String username;
  final bool isPushNotification;
  final DateTime createdDate;
  final DateTime? updatedDate;

  UserModel({
    this.id,
    required this.username,
    required this.isPushNotification,
    required this.createdDate,
    this.updatedDate,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
