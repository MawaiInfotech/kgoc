// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_detail_supp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceDetailSuppModelImpl _$$AttendanceDetailSuppModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceDetailSuppModelImpl(
      attendance: (json['attendance'] as List<dynamic>?)
              ?.map((e) =>
                  AttendanceDetailModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AttendanceDetailModel>[],
      month:
          (json['month'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
    );

Map<String, dynamic> _$$AttendanceDetailSuppModelImplToJson(
        _$AttendanceDetailSuppModelImpl instance) =>
    <String, dynamic>{
      'attendance': instance.attendance,
      'month': instance.month,
    };
