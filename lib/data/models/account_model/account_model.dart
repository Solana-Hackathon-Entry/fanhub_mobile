// To parse this JSON data, do
//
//     final accountModel = accountModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'account_model.freezed.dart';
part 'account_model.g.dart';

AccountModel accountModelFromJson(String str) => AccountModel.fromJson(json.decode(str));

String accountModelToJson(AccountModel data) => json.encode(data.toJson());

@freezed
class AccountModel with _$AccountModel {
  const factory AccountModel({
    String? firstName,
    String? lastName,
    String? email,
    String? password,
    String? user,
    bool? deleted,
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
  }) = _AccountModel;

  factory AccountModel.fromJson(Map<String, dynamic> json) => _$AccountModelFromJson(json);
}
