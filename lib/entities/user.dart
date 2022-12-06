import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    @JsonKey(name: "phone_number") required String phone,
    required String name,
    String? photoUrl,
  }) = _User;
  String phoneCC() {
    return "+62 $phone";
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
