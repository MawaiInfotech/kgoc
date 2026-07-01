import 'package:freezed_annotation/freezed_annotation.dart';

part 'dummylocationlist_model.g.dart';
part 'dummylocationlist_model.freezed.dart';

@freezed
class DummyLocationlistModel with _$DummyLocationlistModel{
  const factory DummyLocationlistModel({
    @Default("") String empcode,
    @Default("") String officepunch,
    @Default("") String address,
    @Default("") String longitude,
    @Default("") String latitude,
    @Default("") String imagesave,
    @Default("") String imagename,
    @Default("") String filetype,
    @Default("") String p_from,
    @Default("") String upload_flag,
    @Default("") String p_type,
    @Default("") String tot_time,
    @Default("") String remarks,
    @Default("") String unit_cd,
    @Default("") String created_by,
    @Default("") String created_at,
    @Default("") String last_updated_by,
    @Default("") String updated_at,
    @Default(0) int object_version_number,
    @Default(0) int apple_rawdata_app_id,
    @Default("") String loc_type,
  }) = _DummyLocationlistModel;

  factory DummyLocationlistModel.fromJson(Map<String, dynamic> json) => _$DummyLocationlistModelFromJson(json);
}