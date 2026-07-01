// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reportingto_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportingtoModelImpl _$$ReportingtoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReportingtoModelImpl(
      employeeNumber: json['emp_number'] as String? ?? "",
      employeeLastName: json['emp_last_name'] as String? ?? "",
      employeeFirstName: json['emp_first_name'] as String? ?? "",
    );

Map<String, dynamic> _$$ReportingtoModelImplToJson(
        _$ReportingtoModelImpl instance) =>
    <String, dynamic>{
      'emp_number': instance.employeeNumber,
      'emp_last_name': instance.employeeLastName,
      'emp_first_name': instance.employeeFirstName,
    };
