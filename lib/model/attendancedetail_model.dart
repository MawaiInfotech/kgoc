import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendancedetail_model.g.dart';
part 'attendancedetail_model.freezed.dart';

@freezed
class AttendanceDetailModel with _$AttendanceDetailModel{
  const factory AttendanceDetailModel({
    @JsonKey(name: "empcode") @Default("") String employeeCode,
    @Default("") String card_no,
    @Default("") String reporting_to,
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
    @JsonKey(name: "dept_code") @Default("") String departmaentCode,
    @JsonKey(name: "cat_code") @Default("") String catCode,
    @JsonKey(name: "shift_cd") @Default("") String shiftCode,
    @JsonKey(name: "unit_cd") @Default("") String unitCode,
    @JsonKey(name: "mispunch") @Default("") String misPunch,

}) = _AttendanceDetailModel;
  
  factory AttendanceDetailModel.fromJson(Map<String , dynamic> json) => _$AttendanceDetailModelFromJson(json);
}