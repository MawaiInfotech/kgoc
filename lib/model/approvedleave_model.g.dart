// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approvedleave_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApprovedLeaveModelImpl _$$ApprovedLeaveModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ApprovedLeaveModelImpl(
      fromDate: json['from_date'] as String? ?? "",
      endDate: json['end_date'] as String? ?? "",
      leaveType: json['leave_type'] as String? ?? "",
      employeeCode: json['emp_cd'] as String? ?? "",
      leaveGranted: json['leave_granted'] as String? ?? "",
      leaveDays: json['leave_days'] as String? ?? "",
      leaveDescription: json['leave_desc'] as String? ?? "",
      leaveId: (json['leave_pk_id'] as num?)?.toInt() ?? 0,
      reason: json['reason'] as String? ?? "",
      leaveGrantedDescription: json['leave_granted_desc'] as String? ?? "",
      employeeName: json['emp_name'] as String? ?? "",
      department: json['dept_name'] as String? ?? "",
      departmentCode: json['dept_cd'] as String? ?? "",
    );

Map<String, dynamic> _$$ApprovedLeaveModelImplToJson(
        _$ApprovedLeaveModelImpl instance) =>
    <String, dynamic>{
      'from_date': instance.fromDate,
      'end_date': instance.endDate,
      'leave_type': instance.leaveType,
      'emp_cd': instance.employeeCode,
      'leave_granted': instance.leaveGranted,
      'leave_days': instance.leaveDays,
      'leave_desc': instance.leaveDescription,
      'leave_pk_id': instance.leaveId,
      'reason': instance.reason,
      'leave_granted_desc': instance.leaveGrantedDescription,
      'emp_name': instance.employeeName,
      'dept_name': instance.department,
      'dept_cd': instance.departmentCode,
    };
