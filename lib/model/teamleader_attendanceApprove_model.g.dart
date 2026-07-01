// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teamleader_attendanceApprove_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamLeaderAttendanceApprovelModelImpl
    _$$TeamLeaderAttendanceApprovelModelImplFromJson(
            Map<String, dynamic> json) =>
        _$TeamLeaderAttendanceApprovelModelImpl(
          unitCode: json['unit_cd'] as String? ?? "",
          appNo: json['app_no'] as String? ?? "",
          appDate: json['app_date'] as String? ?? "",
          appTime: json['app_time'] as String? ?? "",
          empNumber: json['empmemb_emp_master_emp_number'] as String? ?? "",
          cardNumber: json['card_no'] as String? ?? "",
          departmentHead: json['dept_head'] as String? ?? "",
          mispunchDate: json['mis_punch_date'] as String? ?? "",
          mispunchName: json['mis_punch_name'] as String? ?? "",
          mispunchType: json['mis_punch_type'] as String? ?? "",
          inTime: json['in_time'] as String? ?? "",
          outTime: json['out_time'] as String? ?? "",
          reason: json['reason'] as String? ?? "",
          status: json['status'] as String? ?? "",
          statusName: json['status_name'] as String? ?? "",
          mispunchId: (json['mis_punch_id'] as num?)?.toInt() ?? 0,
          employeeName: json['emp_name'] as String? ?? "",
        );

Map<String, dynamic> _$$TeamLeaderAttendanceApprovelModelImplToJson(
        _$TeamLeaderAttendanceApprovelModelImpl instance) =>
    <String, dynamic>{
      'unit_cd': instance.unitCode,
      'app_no': instance.appNo,
      'app_date': instance.appDate,
      'app_time': instance.appTime,
      'empmemb_emp_master_emp_number': instance.empNumber,
      'card_no': instance.cardNumber,
      'dept_head': instance.departmentHead,
      'mis_punch_date': instance.mispunchDate,
      'mis_punch_name': instance.mispunchName,
      'mis_punch_type': instance.mispunchType,
      'in_time': instance.inTime,
      'out_time': instance.outTime,
      'reason': instance.reason,
      'status': instance.status,
      'status_name': instance.statusName,
      'mis_punch_id': instance.mispunchId,
      'emp_name': instance.employeeName,
    };
