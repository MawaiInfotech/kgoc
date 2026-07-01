// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workfromhome_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkfromHomeModelImpl _$$WorkfromHomeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkfromHomeModelImpl(
      day_type: (json['day_type'] as List<dynamic>?)
              ?.map((e) =>
                  WorkfromHomeTypeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <WorkfromHomeTypeModel>[],
      cc_list: (json['cc_list'] as List<dynamic>?)
              ?.map((e) =>
                  WorkfromHomeCClistModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <WorkfromHomeCClistModel>[],
      emp_dtl: (json['emp_dtl'] as List<dynamic>?)
              ?.map((e) =>
                  WFHEmployeeDetailModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <WFHEmployeeDetailModel>[],
    );

Map<String, dynamic> _$$WorkfromHomeModelImplToJson(
        _$WorkfromHomeModelImpl instance) =>
    <String, dynamic>{
      'day_type': instance.day_type,
      'cc_list': instance.cc_list,
      'emp_dtl': instance.emp_dtl,
    };
