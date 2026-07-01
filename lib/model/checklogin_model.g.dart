// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklogin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckLoginModelImpl _$$CheckLoginModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckLoginModelImpl(
      empcode: json['empcode'] as String? ?? '',
      officepunch: json['officepunch'] as String? ?? '',
      address: json['address'] as String? ?? '',
      longitude: json['longitude'] as String? ?? '',
      latitude: json['latitude'] as String? ?? '',
      imagesave: json['imagesave'] as String? ?? '',
      imagename: json['imagename'] as String? ?? '',
      filetype: json['filetype'] as String? ?? '',
      p_from: json['p_from'] as String? ?? '',
      upload_flag: json['upload_flag'] as String? ?? '',
      p_type: json['p_type'] as String? ?? '',
      tot_time: json['tot_time'] as String? ?? '',
      remarks: json['remarks'] as String? ?? '',
      unit_cd: json['unit_cd'] as String? ?? '',
      created_by: json['created_by'] as String? ?? '',
      created_at: json['created_at'] as String? ?? '',
      last_updated_by: json['last_updated_by'] as String? ?? '',
      updated_at: json['updated_at'] as String? ?? '',
      object_version_number:
          (json['object_version_number'] as num?)?.toInt() ?? 0,
      rawdata_app_id: (json['rawdata_app_id'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CheckLoginModelImplToJson(
        _$CheckLoginModelImpl instance) =>
    <String, dynamic>{
      'empcode': instance.empcode,
      'officepunch': instance.officepunch,
      'address': instance.address,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'imagesave': instance.imagesave,
      'imagename': instance.imagename,
      'filetype': instance.filetype,
      'p_from': instance.p_from,
      'upload_flag': instance.upload_flag,
      'p_type': instance.p_type,
      'tot_time': instance.tot_time,
      'remarks': instance.remarks,
      'unit_cd': instance.unit_cd,
      'created_by': instance.created_by,
      'created_at': instance.created_at,
      'last_updated_by': instance.last_updated_by,
      'updated_at': instance.updated_at,
      'object_version_number': instance.object_version_number,
      'rawdata_app_id': instance.rawdata_app_id,
    };
