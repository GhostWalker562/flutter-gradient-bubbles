import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

@freezed
class User with _$User {
  const factory User(String name, String imageURL, String userID) = _User;
}