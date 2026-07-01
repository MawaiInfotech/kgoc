import 'package:freezed_annotation/freezed_annotation.dart';

part 'employeeoffdutylist_model.g.dart';
part 'employeeoffdutylist_model.freezed.dart';

@freezed
class EmployeeoffdutyListModel with _$EmployeeoffdutyListModel{
  factory EmployeeoffdutyListModel({
    @JsonKey(name: "emp_code") @Default("") String employeeCode,
    @JsonKey(name: "emp_name") @Default("") String employeeName,
    @JsonKey(name: "gp_od_no") @Default("") String appNumber,
    @JsonKey(name: "flag_dh_fo") @Default("") String directFromHomeCode,
    @JsonKey(name: "flag_dh_fo_name") @Default("") String directFromHomename,
    @JsonKey(name: "od_type1") @Default("") String odType1,
    @JsonKey(name: "od_type_name") @Default("") String odTypeName,
    @JsonKey(name: "gp_od_status") @Default("") String odStatusCode,
    @JsonKey(name: "gp_od_name") @Default("") String odStatusName,
    @JsonKey(name: "od_sdate") @Default("") String odStartDate,
    @JsonKey(name: "od_stime") @Default("") String odStartTime,
    @JsonKey(name: "od_edate") @Default("") String odEndDate,
    @JsonKey(name: "od_etime") @Default("") String odEndTime,
    @JsonKey(name: "od_state") @Default("") String odState,
    @JsonKey(name: "od_state_name") @Default("") String odStateName,
    @JsonKey(name: "od_purpose") @Default("") String odPurpose,
    @JsonKey(name: "od_purpose_name") @Default("") String odPurposeName,
    @JsonKey(name: "remarks") @Default("") String remark,
    @JsonKey(name: "gate_pass_id") @Default(0) int gatePassId,
    @JsonKey(name: "place_of_visit") @Default("") String placetovisitCode,
    @JsonKey(name: "place_visit_name") @Default("") String placetovisitName,

}) = _EmployeeoffdutyListModel;
  factory EmployeeoffdutyListModel.fromJson(Map<String, dynamic> json) => _$EmployeeoffdutyListModelFromJson(json);
}