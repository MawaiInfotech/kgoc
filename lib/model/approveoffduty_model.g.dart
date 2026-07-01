// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approveoffduty_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApproveoffdutyModelImpl _$$ApproveoffdutyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ApproveoffdutyModelImpl(
      employeeCode: json['emp_code'] as String? ?? "",
      employeeName: json['emp_name'] as String? ?? "",
      appNumber: json['gp_od_no'] as String? ?? "",
      directFromHomeCode: json['flag_dh_fo'] as String? ?? "",
      directFromHomename: json['flag_dh_fo_name'] as String? ?? "",
      odType1: json['od_type1'] as String? ?? "",
      odTypeName: json['od_type_name'] as String? ?? "",
      odStatusName: json['gp_od_status'] as String? ?? "",
      odName: json['gp_od_name'] as String? ?? "",
      odStartDate: json['od_sdate'] as String? ?? "",
      odStartTime: json['od_stime'] as String? ?? "",
      odEndDate: json['od_edate'] as String? ?? "",
      odEndTime: json['od_etime'] as String? ?? "",
      odState: json['od_state'] as String? ?? "",
      odStateName: json['od_state_name'] as String? ?? "",
      odPurpose: json['od_purpose'] as String? ?? "",
      odPurposeName: json['od_purpose_name'] as String? ?? "",
      gatePassId: (json['gate_pass_id'] as num?)?.toInt() ?? 0,
      remark: json['remarks'] as String? ?? "",
      placetovisitCode: json['place_of_visit'] as String? ?? "",
      placetovisitName: json['place_visit_name'] as String? ?? "",
      odHours: json['od_hours'] as String? ?? "",
      departmentCode: json['dept_code'] as String? ?? "",
      departmentName: json['dept_name'] as String? ?? "",
    );

Map<String, dynamic> _$$ApproveoffdutyModelImplToJson(
        _$ApproveoffdutyModelImpl instance) =>
    <String, dynamic>{
      'emp_code': instance.employeeCode,
      'emp_name': instance.employeeName,
      'gp_od_no': instance.appNumber,
      'flag_dh_fo': instance.directFromHomeCode,
      'flag_dh_fo_name': instance.directFromHomename,
      'od_type1': instance.odType1,
      'od_type_name': instance.odTypeName,
      'gp_od_status': instance.odStatusName,
      'gp_od_name': instance.odName,
      'od_sdate': instance.odStartDate,
      'od_stime': instance.odStartTime,
      'od_edate': instance.odEndDate,
      'od_etime': instance.odEndTime,
      'od_state': instance.odState,
      'od_state_name': instance.odStateName,
      'od_purpose': instance.odPurpose,
      'od_purpose_name': instance.odPurposeName,
      'gate_pass_id': instance.gatePassId,
      'remarks': instance.remark,
      'place_of_visit': instance.placetovisitCode,
      'place_visit_name': instance.placetovisitName,
      'od_hours': instance.odHours,
      'dept_code': instance.departmentCode,
      'dept_name': instance.departmentName,
    };
