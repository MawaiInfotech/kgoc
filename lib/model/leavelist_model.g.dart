// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leavelist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeavelistModelImpl _$$LeavelistModelImplFromJson(Map<String, dynamic> json) =>
    _$LeavelistModelImpl(
      code: json['code'] as String? ?? "",
      description: json['description'] as String? ?? "",
      unitCode: json['unit_cd'] as String? ?? "",
      leaveBalance: json['leave_balance'] as String? ?? "",
    );

Map<String, dynamic> _$$LeavelistModelImplToJson(
        _$LeavelistModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'description': instance.description,
      'unit_cd': instance.unitCode,
      'leave_balance': instance.leaveBalance,
    };
