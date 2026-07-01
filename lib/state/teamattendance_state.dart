import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/teamattendance_supp_model.dart';

part 'teamattendance_state.freezed.dart';

@freezed
class TeamAttendanceState with _$TeamAttendanceState {
  const factory TeamAttendanceState.loading(TeamAttendanceSuppModel teamAttendanceSuppModel) = _Loading;
  const factory TeamAttendanceState.content(TeamAttendanceSuppModel teamAttendanceSuppModel) = _Content;
  const factory TeamAttendanceState.success(TeamAttendanceSuppModel teamAttendanceSuppModel) = _Success;
  const factory TeamAttendanceState.failed(TeamAttendanceSuppModel teamAttendanceSuppModel) =
  _Failed;

  factory TeamAttendanceState.initial() => const TeamAttendanceState.content(TeamAttendanceSuppModel());
}