import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trisquare_locus/model/teamattendance_model.dart';
import 'package:trisquare_locus/model/teamemployee_model.dart';

part 'teamattendance_supp_model.g.dart';
part 'teamattendance_supp_model.freezed.dart';

@freezed
class TeamAttendanceSuppModel with _$TeamAttendanceSuppModel{
  const factory TeamAttendanceSuppModel({
    @Default(<TeamAttendanceModel> []) List<TeamAttendanceModel> team_atten,
    @Default(<TeamEmployeeListModel> []) List<TeamEmployeeListModel> employee,
    @Default(<String> []) List<String> month,

  }) = _TeamAttendanceSuppModel;
  factory TeamAttendanceSuppModel.fromJson(Map<String , dynamic> json) => _$TeamAttendanceSuppModelFromJson(json);
}