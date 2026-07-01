// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offdutyclientlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OffdutyClientListModelImpl _$$OffdutyClientListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OffdutyClientListModelImpl(
      clientCode: json['client_cd'] as String? ?? "",
      clientName: json['client_name'] as String? ?? "",
    );

Map<String, dynamic> _$$OffdutyClientListModelImplToJson(
        _$OffdutyClientListModelImpl instance) =>
    <String, dynamic>{
      'client_cd': instance.clientCode,
      'client_name': instance.clientName,
    };
