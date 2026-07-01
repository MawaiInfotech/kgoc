// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requestoffduty_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestoffdutyModelImpl _$$RequestoffdutyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestoffdutyModelImpl(
      od_data: (json['od_data'] as List<dynamic>?)
              ?.map((e) => OffdutyDataModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <OffdutyDataModel>[],
      od_list: (json['od_list'] as List<dynamic>?)
              ?.map((e) => OffdutyTypeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <OffdutyTypeModel>[],
      gp_od_status: (json['gp_od_status'] as List<dynamic>?)
              ?.map(
                  (e) => OffdutyStatusModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <OffdutyStatusModel>[],
      od_for: (json['od_for'] as List<dynamic>?)
              ?.map((e) => OffdutyForModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <OffdutyForModel>[],
      purpose: (json['purpose'] as List<dynamic>?)
              ?.map((e) =>
                  OffdutyPurposeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <OffdutyPurposeModel>[],
      emp_lov: (json['emp_lov'] as List<dynamic>?)
              ?.map((e) =>
                  OffdutyEmployeeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <OffdutyEmployeeModel>[],
      org_list: (json['org_list'] as List<dynamic>?)
              ?.map((e) =>
                  OffdutyClientListModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <OffdutyClientListModel>[],
      applied_to: json['applied_to'] == null
          ? const AppliedToModel()
          : AppliedToModel.fromJson(json['applied_to'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RequestoffdutyModelImplToJson(
        _$RequestoffdutyModelImpl instance) =>
    <String, dynamic>{
      'od_data': instance.od_data,
      'od_list': instance.od_list,
      'gp_od_status': instance.gp_od_status,
      'od_for': instance.od_for,
      'purpose': instance.purpose,
      'emp_lov': instance.emp_lov,
      'org_list': instance.org_list,
      'applied_to': instance.applied_to,
    };
