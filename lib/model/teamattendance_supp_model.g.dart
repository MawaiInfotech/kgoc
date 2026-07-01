// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teamattendance_supp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamAttendanceSuppModelImpl _$$TeamAttendanceSuppModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TeamAttendanceSuppModelImpl(
      team_atten: (json['team_atten'] as List<dynamic>?)
              ?.map((e) =>
                  TeamAttendanceModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <TeamAttendanceModel>[],
      employee: (json['employee'] as List<dynamic>?)
              ?.map((e) =>
                  TeamEmployeeListModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <TeamEmployeeListModel>[],
      month:
          (json['month'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
    );

Map<String, dynamic> _$$TeamAttendanceSuppModelImplToJson(
        _$TeamAttendanceSuppModelImpl instance) =>
    <String, dynamic>{
      'team_atten': instance.team_atten,
      'employee': instance.employee,
      'month': instance.month,
    };
