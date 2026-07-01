import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trisquare_locus/model/reportingto_model.dart';
import 'cc_list_model.dart';
import 'colist_model.dart';
import 'employeedetail_model.dart';
import 'leave_type_model.dart';
import 'leavelist_model.dart';

part 'requestleave_model.g.dart';
part 'requestleave_model.freezed.dart';

@freezed
class RequestLeaveModel with _$RequestLeaveModel{
  const factory RequestLeaveModel({
  @Default(<LeavetypeModel> []) List<LeavetypeModel> leave_type,
    @Default(<CClistModel> []) List<CClistModel> cc_list,
    @Default(<EmployeeDetailModel> []) List<EmployeeDetailModel> emp_dtl,
    @Default(<LeavelistModel> []) List<LeavelistModel> leave_list,
    @Default(<ReportingtoModel> []) List<ReportingtoModel> reporting_to,
    @Default(<CoListModel> []) List<CoListModel> co_list,
    @JsonKey(name: "co_parameter") @Default("") String coParameter

  }) = _RequestLeaveModel;

  factory RequestLeaveModel.fromJson(Map<String, dynamic> json) => _$RequestLeaveModelFromJson(json);
}