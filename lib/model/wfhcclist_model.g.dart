// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wfhcclist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WfhCcListModelImpl _$$WfhCcListModelImplFromJson(Map<String, dynamic> json) =>
    _$WfhCcListModelImpl(
      employeeCode: json['emp_number'] as String? ?? "",
      name: json['name'] as String? ?? "",
    );

Map<String, dynamic> _$$WfhCcListModelImplToJson(
        _$WfhCcListModelImpl instance) =>
    <String, dynamic>{
      'emp_number': instance.employeeCode,
      'name': instance.name,
    };
