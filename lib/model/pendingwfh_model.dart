import 'package:freezed_annotation/freezed_annotation.dart';

part 'pendingwfh_model.freezed.dart';
part 'pendingwfh_model.g.dart';

@freezed
class PendingWfhModel with _$PendingWfhModel{
  const factory PendingWfhModel({
    @JsonKey(name: "empmemb_emp_master_emp_number") @Default("") String empNumber,
    @JsonKey(name: "from_date") @Default("") String fromDate,
    @JsonKey(name: "end_date") @Default("") String endDate,
    @JsonKey(name: "wfh_granted") @Default("") String granted,
    @JsonKey(name: "wfh_days") @Default("") String days,
    @JsonKey(name: "reason") @Default("") String reason,
    @JsonKey(name: "name") @Default("") String name,
    @JsonKey(name: "reporting_to") @Default("") String reportingTo,
    @JsonKey(name: "area_mast_department_code") @Default("") String departmentCode,
    @JsonKey(name: "app_no") @Default("") String appNumber,

  }) = _PendingWfhModel;

  factory PendingWfhModel.fromJson(Map<String, dynamic> json) => _$PendingWfhModelFromJson(json);
}