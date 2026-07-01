// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pendingwfh_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PendingWfhModelImpl _$$PendingWfhModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PendingWfhModelImpl(
      empNumber: json['empmemb_emp_master_emp_number'] as String? ?? "",
      fromDate: json['from_date'] as String? ?? "",
      endDate: json['end_date'] as String? ?? "",
      granted: json['wfh_granted'] as String? ?? "",
      days: json['wfh_days'] as String? ?? "",
      reason: json['reason'] as String? ?? "",
      name: json['name'] as String? ?? "",
      reportingTo: json['reporting_to'] as String? ?? "",
      departmentCode: json['area_mast_department_code'] as String? ?? "",
      appNumber: json['app_no'] as String? ?? "",
    );

Map<String, dynamic> _$$PendingWfhModelImplToJson(
        _$PendingWfhModelImpl instance) =>
    <String, dynamic>{
      'empmemb_emp_master_emp_number': instance.empNumber,
      'from_date': instance.fromDate,
      'end_date': instance.endDate,
      'wfh_granted': instance.granted,
      'wfh_days': instance.days,
      'reason': instance.reason,
      'name': instance.name,
      'reporting_to': instance.reportingTo,
      'area_mast_department_code': instance.departmentCode,
      'app_no': instance.appNumber,
    };
