import 'package:freezed_annotation/freezed_annotation.dart';

part 'workfromhome_cclist_model.g.dart';
part 'workfromhome_cclist_model.freezed.dart';

@freezed
class WorkfromHomeCClistModel with _$WorkfromHomeCClistModel{
  const factory WorkfromHomeCClistModel ({
    @JsonKey(name: "emp_number") @Default("") String employeeCode,
    @JsonKey(name: "emp_last_name") @Default("") String employeeLatsName,
    @JsonKey(name: "emp_first_name") @Default("") String employeeFirstName,
  }) = _WorkfromHomeCClistModel;

  factory WorkfromHomeCClistModel.fromJson(Map<String, dynamic> json) => _$WorkfromHomeCClistModelFromJson(json);
}