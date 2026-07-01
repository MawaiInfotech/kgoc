import 'package:freezed_annotation/freezed_annotation.dart';

part 'offdutyemployee_model.g.dart';
part 'offdutyemployee_model.freezed.dart';

@freezed
class OffdutyEmployeeModel with _$OffdutyEmployeeModel{
  const factory OffdutyEmployeeModel({
    @JsonKey(name: "emp_number") @Default("") String employeeNumber,
    @JsonKey(name: "emp_first_name") @Default("") String employeeFirstName,
    @JsonKey(name: "emp_last_name") @Default("") String employeeLastName,
  }) = _OffdutyEmployeeModel;

  factory OffdutyEmployeeModel.fromJson(Map<String, dynamic> json) => _$OffdutyEmployeeModelFromJson(json);
}