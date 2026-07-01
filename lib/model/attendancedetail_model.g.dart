// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendancedetail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceDetailModelImpl _$$AttendanceDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceDetailModelImpl(
      employeeCode: json['empcode'] as String? ?? "",
      card_no: json['card_no'] as String? ?? "",
      reporting_to: json['reporting_to'] as String? ?? "",
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
      departmaentCode: json['dept_code'] as String? ?? "",
      catCode: json['cat_code'] as String? ?? "",
      shiftCode: json['shift_cd'] as String? ?? "",
      unitCode: json['unit_cd'] as String? ?? "",
      misPunch: json['mispunch'] as String? ?? "",
    );

Map<String, dynamic> _$$AttendanceDetailModelImplToJson(
        _$AttendanceDetailModelImpl instance) =>
    <String, dynamic>{
      'empcode': instance.employeeCode,
      'card_no': instance.card_no,
      'reporting_to': instance.reporting_to,
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
      'dept_code': instance.departmaentCode,
      'cat_code': instance.catCode,
      'shift_cd': instance.shiftCode,
      'unit_cd': instance.unitCode,
      'mispunch': instance.misPunch,
    };
