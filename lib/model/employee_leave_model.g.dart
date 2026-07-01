// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_leave_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeLeaveModelImpl _$$EmployeeLeaveModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EmployeeLeaveModelImpl(
      leaveTotal: (json['leave_total'] as num?)?.toDouble() ?? 0.0,
      leaveAvailable: (json['leave_available'] as num?)?.toDouble() ?? 0.0,
      leaveUsed: (json['leave_used'] as num?)?.toDouble() ?? 0.0,
      leaveCode: json['leave_code'] as String? ?? "",
      description: json['description'] as String? ?? "",
    );

Map<String, dynamic> _$$EmployeeLeaveModelImplToJson(
        _$EmployeeLeaveModelImpl instance) =>
    <String, dynamic>{
      'leave_total': instance.leaveTotal,
      'leave_available': instance.leaveAvailable,
      'leave_used': instance.leaveUsed,
      'leave_code': instance.leaveCode,
      'description': instance.description,
    };
