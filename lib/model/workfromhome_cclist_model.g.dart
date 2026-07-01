// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workfromhome_cclist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkfromHomeCClistModelImpl _$$WorkfromHomeCClistModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkfromHomeCClistModelImpl(
      employeeCode: json['emp_number'] as String? ?? "",
      employeeLatsName: json['emp_last_name'] as String? ?? "",
      employeeFirstName: json['emp_first_name'] as String? ?? "",
    );

Map<String, dynamic> _$$WorkfromHomeCClistModelImplToJson(
        _$WorkfromHomeCClistModelImpl instance) =>
    <String, dynamic>{
      'emp_number': instance.employeeCode,
      'emp_last_name': instance.employeeLatsName,
      'emp_first_name': instance.employeeFirstName,
    };
