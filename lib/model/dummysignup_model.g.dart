// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dummysignup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DummySignupModelImpl _$$DummySignupModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DummySignupModelImpl(
      status: json['status'] as String? ?? "",
      msg: json['msg'] as String? ?? "",
      user: json['user'] as String? ?? "",
    );

Map<String, dynamic> _$$DummySignupModelImplToJson(
        _$DummySignupModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'user': instance.user,
    };
