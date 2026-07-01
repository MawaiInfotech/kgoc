// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wfhcondition_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WfhConditionModelImpl _$$WfhConditionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WfhConditionModelImpl(
      controlCode: json['control_code'] as String? ?? "",
      meaning: json['description'] as String? ?? "",
    );

Map<String, dynamic> _$$WfhConditionModelImplToJson(
        _$WfhConditionModelImpl instance) =>
    <String, dynamic>{
      'control_code': instance.controlCode,
      'description': instance.meaning,
    };
