// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dummyattendancemark_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DummyAttendanceModelImpl _$$DummyAttendanceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DummyAttendanceModelImpl(
      status: json['status'] as String? ?? "",
      message: json['message'] as String? ?? "",
      address: json['address'] as String? ?? "",
      punchin: json['punchin'] as String? ?? "",
      punchout: json['punchout'] as String? ?? "",
    );

Map<String, dynamic> _$$DummyAttendanceModelImplToJson(
        _$DummyAttendanceModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'address': instance.address,
      'punchin': instance.punchin,
      'punchout': instance.punchout,
    };
