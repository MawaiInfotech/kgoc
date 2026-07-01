// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misspunch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MisspunchModelImpl _$$MisspunchModelImplFromJson(Map<String, dynamic> json) =>
    _$MisspunchModelImpl(
      punchDate: json['punch_in_dt'] as String? ?? "",
      inTime: json['in_time'] as String? ?? "",
      outTime: json['out_time'] as String? ?? "",
      reason: json['reason'] as String? ?? "",
      status: json['status'] as String? ?? "",
    );

Map<String, dynamic> _$$MisspunchModelImplToJson(
        _$MisspunchModelImpl instance) =>
    <String, dynamic>{
      'punch_in_dt': instance.punchDate,
      'in_time': instance.inTime,
      'out_time': instance.outTime,
      'reason': instance.reason,
      'status': instance.status,
    };
