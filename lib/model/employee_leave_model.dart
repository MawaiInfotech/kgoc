import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_leave_model.g.dart';
part 'employee_leave_model.freezed.dart';

@freezed
class EmployeeLeaveModel with _$EmployeeLeaveModel{
  const factory EmployeeLeaveModel({
    @JsonKey(name: "leave_total") @Default(0.0) double leaveTotal,
    @JsonKey(name: "leave_available") @Default(0.0) double leaveAvailable,
    @JsonKey(name: "leave_used") @Default(0.0) double leaveUsed,
    @JsonKey(name: "leave_code") @Default("") String leaveCode,
    @JsonKey(name: "description") @Default("") String description,

}) = _EmployeeLeaveModel;

  factory EmployeeLeaveModel.fromJson(Map<String , dynamic> json) => _$EmployeeLeaveModelFromJson(json);
}