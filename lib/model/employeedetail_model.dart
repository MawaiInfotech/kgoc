import 'package:freezed_annotation/freezed_annotation.dart';

part 'employeedetail_model.g.dart';
part 'employeedetail_model.freezed.dart';

@freezed
class EmployeeDetailModel with _$EmployeeDetailModel{
  const factory EmployeeDetailModel({
    @JsonKey(name: "emp_number") @Default("") String employeeNumber,
    @JsonKey(name: "emp_last_name") @Default("") String employeeLastName,
    @JsonKey(name: "emp_first_name") @Default("") String employeeFirstName,
    @JsonKey(name: "present_phone") @Default("") String presentNumber,
    @JsonKey(name: "permanent_phone") @Default("") String permamnentNumber,
    @JsonKey(name: "reporting_to") @Default("") String reportingTo,

}) = _EmployeedetailModel;

  factory EmployeeDetailModel.fromJson(Map<String, dynamic> json) => _$EmployeeDetailModelFromJson(json);
}