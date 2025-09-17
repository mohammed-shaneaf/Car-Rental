// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpRequestBodyImpl _$$SignUpRequestBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$SignUpRequestBodyImpl(
      username: json['username'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      country: json['country'] as String,
    );

Map<String, dynamic> _$$SignUpRequestBodyImplToJson(
        _$SignUpRequestBodyImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'country': instance.country,
    };
