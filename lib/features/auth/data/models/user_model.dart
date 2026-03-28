import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/core/utils/back_end_points.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.uId, required super.name, required super.email});
  factory UserModel.fromFireBaseUser(User user) {
    return UserModel(
      uId: user.uid,
      name: user.displayName ?? '',
      email: user.email ?? '',
    );
  }
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    uId: json[BackEndPoints.uId],
    name: json[BackEndPoints.name],
    email: json[BackEndPoints.email],
  );
}
