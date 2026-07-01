import 'package:freezed_annotation/freezed_annotation.dart';

part 'colist_model.g.dart';
part 'colist_model.freezed.dart';

@freezed
class CoListModel with _$CoListModel{
  const factory CoListModel({
    @JsonKey(name: "empmemb_emp_master_emp_number") @Default("") String employeeCode,
    @JsonKey(name: "holiday") @Default("") String holiday,
    @JsonKey(name: "description") @Default("") String description,
    @JsonKey(name: "holiday_type") @Default("") String holidayType,
    @JsonKey(name: "tot_time") @Default("") String totalTime,
    @JsonKey(name: "attend_day") @Default("") String attendaDay,
    @JsonKey(name: "unit_cd") @Default("") String unitCode,
  }) = _CoListModel;

  factory CoListModel.fromJson(Map<String, dynamic> json) => _$CoListModelFromJson(json);
}
