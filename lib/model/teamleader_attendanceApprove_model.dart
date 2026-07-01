import 'package:freezed_annotation/freezed_annotation.dart';

part  'teamleader_attendanceApprove_model.g.dart';
part 'teamleader_attendanceApprove_model.freezed.dart';

@freezed
class TeamLeaderAttendanceApprovelModel with _$TeamLeaderAttendanceApprovelModel{
  const factory TeamLeaderAttendanceApprovelModel({
    @JsonKey(name: "unit_cd") @Default("") String unitCode,
    @JsonKey(name: "app_no") @Default("") String appNo,
    @JsonKey(name: "app_date") @Default("") String appDate,
    @JsonKey(name: "app_time") @Default("") String appTime,
    @JsonKey(name: "empmemb_emp_master_emp_number") @Default("") String empNumber,
    @JsonKey(name: "card_no") @Default("") String cardNumber,
    @JsonKey(name: "dept_head") @Default("") String departmentHead,
    @JsonKey(name: "mis_punch_date") @Default("") String mispunchDate,
    @JsonKey(name: "mis_punch_name") @Default("") String mispunchName,
    @JsonKey(name: "mis_punch_type") @Default("") String mispunchType,
    @JsonKey(name: "in_time") @Default("") String inTime,
    @JsonKey(name: "out_time") @Default("") String outTime,
    @JsonKey(name: "reason") @Default("") String reason,
    @JsonKey(name: "status") @Default("") String status,
    @JsonKey(name: "status_name") @Default("") String statusName,
    @JsonKey(name: "mis_punch_id") @Default(0) int mispunchId,
    @JsonKey(name: "emp_name") @Default("") String employeeName,

}) = _TeamLeaderAttendanceApprovelModel;

factory TeamLeaderAttendanceApprovelModel.fromJson(Map<String, dynamic> json) => _$TeamLeaderAttendanceApprovelModelFromJson(json);
}