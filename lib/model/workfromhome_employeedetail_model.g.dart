// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workfromhome_employeedetail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WFHEmployeeDetailModelImpl _$$WFHEmployeeDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WFHEmployeeDetailModelImpl(
      employeeNumber: json['emp_number'] as String? ?? "",
      employeeLastName: json['emp_last_name'] as String? ?? "",
      employeeFirstName: json['emp_first_name'] as String? ?? "",
      presentNumber: json['present_phone'] as String? ?? "",
      permamnentNumber: json['permanent_phone'] as String? ?? "",
      reportingTo: json['reporting_to'] as String? ?? "",
    );

Map<String, dynamic> _$$WFHEmployeeDetailModelImplToJson(
        _$WFHEmployeeDetailModelImpl instance) =>
    <String, dynamic>{
      'emp_number': instance.employeeNumber,
      'emp_last_name': instance.employeeLastName,
      'emp_first_name': instance.employeeFirstName,
      'present_phone': instance.presentNumber,
      'permanent_phone': instance.permamnentNumber,
      'reporting_to': instance.reportingTo,
    };
