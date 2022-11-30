import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User(
      {required String email,
      required String name,
      String? photoUrl,
      String? token,
      String? phone}) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
