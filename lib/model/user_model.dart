import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  @JsonKey(name: 'userInfo')
  UserInfo userInfo;

  @JsonKey(name: 'token')
  String token;

  UserModel(this.userInfo, this.token);

  factory UserModel.fromJson(Map<String, dynamic> srcJson) =>
      _$UserModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

@JsonSerializable()
class UserInfo {
  @JsonKey(name: "nickName")
  String nickName;

  @JsonKey(name: "avatarUrl")
  String avatarUrl;

  UserInfo(this.nickName, this.avatarUrl);

  factory UserInfo.fromJson(Map<String, dynamic> srcJson) =>
      _$UserInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}
