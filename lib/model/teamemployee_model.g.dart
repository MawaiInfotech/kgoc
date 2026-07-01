// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teamemployee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamEmployeeListModelImpl _$$TeamEmployeeListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TeamEmployeeListModelImpl(
      employeeNumber: json['emp_number'] as String? ?? "",
      name: json['name'] as String? ?? "",
    );

Map<String, dynamic> _$$TeamEmployeeListModelImplToJson(
        _$TeamEmployeeListModelImpl instance) =>
    <String, dynamic>{
      'emp_number': instance.employeeNumber,
      'name': instance.name,
    };
