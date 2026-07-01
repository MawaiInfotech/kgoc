import 'package:freezed_annotation/freezed_annotation.dart';

part 'teamattendance_model.g.dart';
part 'teamattendance_model.freezed.dart';

@freezed
class TeamAttendanceModel with _$TeamAttendanceModel{
  const factory TeamAttendanceModel({
    @JsonKey(name: "emp_number") @Default("") String employeeNumber,
    @JsonKey(name: "card_no") @Default("") String cardNumber,
    @JsonKey(name: "reporting_to") @Default("") String reportingTo,
    @JsonKey(name: "mon") @Default("") String month,
    @JsonKey(name: "yr") @Default("") String year,
    @JsonKey(name: "att_date") @Default("") String attendanceDate,
    @JsonKey(name: "in_time") @Default("") String inTime,
    @JsonKey(name: "out_time") @Default("") String outTime,
    @JsonKey(name: "in_rem") @Default("") String inRem,
    @JsonKey(name: "out_rem") @Default("") String outRem,
    @JsonKey(name: "tot_time") @Default("") String totalTime,
    @JsonKey(name: "in_address") @Default("") String inAddress,
    @JsonKey(name: "out_address") @Default("") String outAddress,
    @JsonKey(name: "dept_code") @Default("") String departmentCode,
    @JsonKey(name: "cat_code") @Default("") String catCode,
    @JsonKey(name: "shift_cd") @Default("") String shiftCode,
    @JsonKey(name: "unit_cd") @Default("") String unitCode,
    @JsonKey(name: "emp_name") @Default("") String employeeName
}) = _TeamAttendanceModel;
  factory TeamAttendanceModel.fromJson(Map<String, dynamic> json) => _$TeamAttendanceModelFromJson(json);
}