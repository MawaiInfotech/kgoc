// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'newjoinee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewJoineeModelImpl _$$NewJoineeModelImplFromJson(Map<String, dynamic> json) =>
    _$NewJoineeModelImpl(
      firstName: json['emp_first_name'] as String? ?? "",
      lastName: json['emp_last_name'] as String? ?? "",
      photo: json['photo_file'] as String? ?? "",
      joiningDate: json['join_date'] as String? ?? "",
      departName: json['dept_name'] as String? ?? "",
    );

Map<String, dynamic> _$$NewJoineeModelImplToJson(
        _$NewJoineeModelImpl instance) =>
    <String, dynamic>{
      'emp_first_name': instance.firstName,
      'emp_last_name': instance.lastName,
      'photo_file': instance.photo,
      'join_date': instance.joiningDate,
      'dept_name': instance.departName,
    };
