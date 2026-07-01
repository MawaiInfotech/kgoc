import 'package:freezed_annotation/freezed_annotation.dart';
import 'employee_leave_model.dart';
import 'employeeleavelist_model.dart';

part 'employeeleavetype_model.g.dart';
part 'employeeleavetype_model.freezed.dart';

@freezed
class EmployeeLeavetypeModel with _$EmployeeLeavetypeModel{
  const factory EmployeeLeavetypeModel({
    @JsonKey(name: "balance_leave") @Default(0.0) double balanceLeave,
    @JsonKey(name: "leave_taken") @Default(0.0) double leaveTaken,
    @Default(<EmployeeLeaveModel> []) List<EmployeeLeaveModel> emp_leave_list,
    @Default(<EmployeeleaveListModel> []) List<EmployeeleaveListModel> leave_list,

}) = _EmployeeLeavetypeModel;
  factory EmployeeLeavetypeModel.fromJson(Map<String , dynamic> json) => _$EmployeeLeavetypeModelFromJson(json);
}