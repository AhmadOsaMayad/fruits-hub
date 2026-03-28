import 'package:fruit_hub/core/constants/query_key_words.dart';

class UserEntity {
  final String uId;
  final String name;
  final String email;

  UserEntity({required this.uId, required this.name, required this.email});

  toMap() {
    return {QKWords.uId: uId, QKWords.name: name, QKWords.email: email};
  }
}
