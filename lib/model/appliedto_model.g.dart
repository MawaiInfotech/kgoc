// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appliedto_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppliedToModelImpl _$$AppliedToModelImplFromJson(Map<String, dynamic> json) =>
    _$AppliedToModelImpl(
      employeeNumber: json['emp_number'] as String? ?? "",
      employeeFirstName: json['emp_first_name'] as String? ?? "",
      employeelastName: json['emp_last_name'] as String? ?? "",
    );

Map<String, dynamic> _$$AppliedToModelImplToJson(
        _$AppliedToModelImpl instance) =>
    <String, dynamic>{
      'emp_number': instance.employeeNumber,
      'emp_first_name': instance.employeeFirstName,
      'emp_last_name': instance.employeelastName,
    };
