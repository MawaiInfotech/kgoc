// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'colist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoListModelImpl _$$CoListModelImplFromJson(Map<String, dynamic> json) =>
    _$CoListModelImpl(
      employeeCode: json['empmemb_emp_master_emp_number'] as String? ?? "",
      holiday: json['holiday'] as String? ?? "",
      description: json['description'] as String? ?? "",
      holidayType: json['holiday_type'] as String? ?? "",
      totalTime: json['tot_time'] as String? ?? "",
      attendaDay: json['attend_day'] as String? ?? "",
      unitCode: json['unit_cd'] as String? ?? "",
    );

Map<String, dynamic> _$$CoListModelImplToJson(_$CoListModelImpl instance) =>
    <String, dynamic>{
      'empmemb_emp_master_emp_number': instance.employeeCode,
      'holiday': instance.holiday,
      'description': instance.description,
      'holiday_type': instance.holidayType,
      'tot_time': instance.totalTime,
      'attend_day': instance.attendaDay,
      'unit_cd': instance.unitCode,
    };
