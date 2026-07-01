// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkincheckout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckinCheckoutModelImpl _$$CheckinCheckoutModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckinCheckoutModelImpl(
      address: json['address'] as String? ?? '',
      punchin: json['punchin'] as String? ?? '',
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$CheckinCheckoutModelImplToJson(
        _$CheckinCheckoutModelImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'punchin': instance.punchin,
      'message': instance.message,
    };
