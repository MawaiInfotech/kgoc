import 'package:freezed_annotation/freezed_annotation.dart';

part 'holiday_model.g.dart';
part 'holiday_model.freezed.dart';

@freezed
class HolidayModel with _$HolidayModel{
  const factory HolidayModel({
    @JsonKey(name: "holiday_date") @Default("") String date,
    @JsonKey(name: "description") @Default("") String description,
    @JsonKey(name: "holiday_type") @Default("") String type,
    @JsonKey(name: "religion_type") @Default("") String religionType,
    @JsonKey(name: "day") @Default("") String day,

}) = _HolidayModel;

  factory HolidayModel.fromJson(Map<String, dynamic>json) => _$HolidayModelFromJson(json);
}