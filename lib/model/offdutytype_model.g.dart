// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offdutytype_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OffdutyTypeModelImpl _$$OffdutyTypeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OffdutyTypeModelImpl(
      code: json['control_code'] as String? ?? "",
      description: json['description'] as String? ?? "",
    );

Map<String, dynamic> _$$OffdutyTypeModelImplToJson(
        _$OffdutyTypeModelImpl instance) =>
    <String, dynamic>{
      'control_code': instance.code,
      'description': instance.description,
    };
