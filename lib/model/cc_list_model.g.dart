// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cc_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CClistModelImpl _$$CClistModelImplFromJson(Map<String, dynamic> json) =>
    _$CClistModelImpl(
      employeeCode: json['emp_number'] as String? ?? "",
      employeeLatsName: json['emp_last_name'] as String? ?? "",
      employeeFirstName: json['emp_first_name'] as String? ?? "",
    );

Map<String, dynamic> _$$CClistModelImplToJson(_$CClistModelImpl instance) =>
    <String, dynamic>{
      'emp_number': instance.employeeCode,
      'emp_last_name': instance.employeeLatsName,
      'emp_first_name': instance.employeeFirstName,
    };
