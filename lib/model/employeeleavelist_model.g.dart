// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employeeleavelist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeleavelistModelImpl _$$EmployeeleavelistModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EmployeeleavelistModelImpl(
      fromDate: json['from_date'] as String? ?? "",
      endDate: json['end_date'] as String? ?? "",
      leaveType: json['leave_type'] as String? ?? "",
      employeeCode: json['emp_cd'] as String? ?? "",
      leaveGranted: json['leave_granted'] as String? ?? "",
      leaveDays: json['leave_days'] as String? ?? "",
      leaveDescription: json['leave_desc'] as String? ?? "",
      leavePkId: (json['leave_pk_id'] as num?)?.toInt() ?? 0,
      leaveGrantedDescription: json['leave_granted_desc'] as String? ?? "",
      reason: json['reason'] as String? ?? "",
    );

Map<String, dynamic> _$$EmployeeleavelistModelImplToJson(
        _$EmployeeleavelistModelImpl instance) =>
    <String, dynamic>{
      'from_date': instance.fromDate,
      'end_date': instance.endDate,
      'leave_type': instance.leaveType,
      'emp_cd': instance.employeeCode,
      'leave_granted': instance.leaveGranted,
      'leave_days': instance.leaveDays,
      'leave_desc': instance.leaveDescription,
      'leave_pk_id': instance.leavePkId,
      'leave_granted_desc': instance.leaveGrantedDescription,
      'reason': instance.reason,
    };
