import 'package:freezed_annotation/freezed_annotation.dart';

part 'approvedleave_model.g.dart';
part 'approvedleave_model.freezed.dart';

@freezed
class ApprovedLeaveModel with _$ApprovedLeaveModel {
const factory ApprovedLeaveModel({
  @JsonKey(name: "from_date") @Default("") String fromDate,
  @JsonKey(name: "end_date") @Default("") String endDate,
  @JsonKey(name: "leave_type") @Default("") String leaveType,
  @JsonKey(name: "emp_cd") @Default("") String employeeCode,
  @JsonKey(name: "leave_granted") @Default("") String leaveGranted,
  @JsonKey(name: "leave_days") @Default("") String leaveDays,
  @JsonKey(name: "leave_desc") @Default("") String leaveDescription,
  @JsonKey(name: "leave_pk_id") @Default(0) int leaveId,
  @JsonKey(name: "reason") @Default("") String reason,
  @JsonKey(name: "leave_granted_desc") @Default("") String leaveGrantedDescription,
  @JsonKey(name: "emp_name") @Default("") String employeeName,
  @JsonKey(name: "dept_name") @Default("") String department,
  @JsonKey(name: "dept_cd") @Default("") String departmentCode,
}) = _ApprovedLeaveModel;

factory ApprovedLeaveModel.fromJson(Map<String, dynamic> json) => _$ApprovedLeaveModelFromJson(json);
}