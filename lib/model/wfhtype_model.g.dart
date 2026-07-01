// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wfhtype_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WfhTypeModelImpl _$$WfhTypeModelImplFromJson(Map<String, dynamic> json) =>
    _$WfhTypeModelImpl(
      controlCode: json['control_code'] as String? ?? "",
      meaning: json['description'] as String? ?? "",
    );

Map<String, dynamic> _$$WfhTypeModelImplToJson(_$WfhTypeModelImpl instance) =>
    <String, dynamic>{
      'control_code': instance.controlCode,
      'description': instance.meaning,
    };
