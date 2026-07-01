import 'package:freezed_annotation/freezed_annotation.dart';

part 'checklogin_model.g.dart';
part 'checklogin_model.freezed.dart';

@freezed
class CheckLoginModel with _$CheckLoginModel{
  const factory CheckLoginModel({

    @Default('') String empcode,
    @Default('') String officepunch,
    @Default('') String address,
    @Default('') String longitude,
    @Default('') String latitude,
    @Default('') String imagesave,
    @Default('') String imagename,
    @Default('') String filetype,
    @Default('') String p_from,
    @Default('') String upload_flag,
    @Default('') String p_type,
    @Default('') String tot_time,
    @Default('') String remarks,
    @Default('') String unit_cd,
    @Default('') String created_by,
    @Default('') String created_at,
    @Default('') String last_updated_by,
    @Default('') String updated_at,
    @Default(0) int object_version_number,
    @Default(0) int rawdata_app_id
  }) = _CheckLoginModel;

  factory CheckLoginModel.fromJson(Map<String, dynamic> json) => _$CheckLoginModelFromJson(json);
}