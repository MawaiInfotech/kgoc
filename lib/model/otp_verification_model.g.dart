// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OTPVerificationModelImpl _$$OTPVerificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OTPVerificationModelImpl(
      status: json['status'] as String? ?? "",
      msg: json['msg'] as String? ?? "",
      data: json['data'] as String? ?? "",
    );

Map<String, dynamic> _$$OTPVerificationModelImplToJson(
        _$OTPVerificationModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };
