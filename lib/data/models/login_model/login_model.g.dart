// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginModel _$$_LoginModelFromJson(Map<String, dynamic> json) =>
    _$_LoginModel(
      id: json['id'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      user: json['user'] as String?,
      deleted: json['deleted'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['v'] as int?,
    );

Map<String, dynamic> _$$_LoginModelToJson(_$_LoginModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'password': instance.password,
      'user': instance.user,
      'deleted': instance.deleted,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'v': instance.v,
    };
