// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

@freezed
class LoginModel with _$LoginModel {
  const factory LoginModel({
    String? id,
    String? email,
    String? password,
    String? user,
    bool? deleted,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) => _$LoginModelFromJson(json);
}
