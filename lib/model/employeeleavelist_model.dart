import 'package:freezed_annotation/freezed_annotation.dart';

part 'employeeleavelist_model.g.dart';
part 'employeeleavelist_model.freezed.dart';

@freezed
class EmployeeleaveListModel with _$EmployeeleaveListModel{
  const factory EmployeeleaveListModel({
    @JsonKey(name: "from_date") @Default("") String fromDate,
    @JsonKey(name: "end_date") @Default("") String endDate,
    @JsonKey(name: "leave_type") @Default("") String leaveType,
    @JsonKey(name: "emp_cd") @Default("") String employeeCode,
    @JsonKey(name: "leave_granted") @Default("") String leaveGranted,
    @JsonKey(name: "leave_days") @Default("") String leaveDays,
    @JsonKey(name: "leave_desc") @Default("") String leaveDescription,
    @JsonKey(name: "leave_pk_id") @Default(0) int leavePkId,
    @JsonKey(name: "leave_granted_desc") @Default("") String leaveGrantedDescription,
    @JsonKey(name: "reason") @Default("") String reason,
}) = _EmployeeleavelistModel;

  factory EmployeeleaveListModel.fromJson(Map<String, dynamic> json) => _$EmployeeleaveListModelFromJson(json);
}