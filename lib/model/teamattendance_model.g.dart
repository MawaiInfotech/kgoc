// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teamattendance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamAttendanceModelImpl _$$TeamAttendanceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TeamAttendanceModelImpl(
      employeeNumber: json['emp_number'] as String? ?? "",
      cardNumber: json['card_no'] as String? ?? "",
      reportingTo: json['reporting_to'] as String? ?? "",
      month: json['mon'] as String? ?? "",
      year: json['yr'] as String? ?? "",
      attendanceDate: json['att_date'] as String? ?? "",
      inTime: json['in_time'] as String? ?? "",
      outTime: json['out_time'] as String? ?? "",
      inRem: json['in_rem'] as String? ?? "",
      outRem: json['out_rem'] as String? ?? "",
      totalTime: json['tot_time'] as String? ?? "",
      inAddress: json['in_address'] as String? ?? "",
      outAddress: json['out_address'] as String? ?? "",
      departmentCode: json['dept_code'] as String? ?? "",
      catCode: json['cat_code'] as String? ?? "",
      shiftCode: json['shift_cd'] as String? ?? "",
      unitCode: json['unit_cd'] as String? ?? "",
      employeeName: json['emp_name'] as String? ?? "",
    );

Map<String, dynamic> _$$TeamAttendanceModelImplToJson(
        _$TeamAttendanceModelImpl instance) =>
    <String, dynamic>{
      'emp_number': instance.employeeNumber,
      'card_no': instance.cardNumber,
      'reporting_to': instance.reportingTo,
      'mon': instance.month,
      'yr': instance.year,
      'att_date': instance.attendanceDate,
      'in_time': instance.inTime,
      'out_time': instance.outTime,
      'in_rem': instance.inRem,
      'out_rem': instance.outRem,
      'tot_time': instance.totalTime,
      'in_address': instance.inAddress,
      'out_address': instance.outAddress,
      'dept_code': instance.departmentCode,
      'cat_code': instance.catCode,
      'shift_cd': instance.shiftCode,
      'unit_cd': instance.unitCode,
      'emp_name': instance.employeeName,
    };
