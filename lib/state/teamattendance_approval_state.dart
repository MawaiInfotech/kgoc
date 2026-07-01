import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/teamleader_attendanceApprove_model.dart';

part 'teamattendance_approval_state.freezed.dart';

@freezed
class TeamLeaderAttendanceApprovalState with _$TeamLeaderAttendanceApprovalState {
  const factory TeamLeaderAttendanceApprovalState.loading(List<TeamLeaderAttendanceApprovelModel> teamAttendanceAproveModel) = _Loading;
  const factory TeamLeaderAttendanceApprovalState.content(List<TeamLeaderAttendanceApprovelModel> teamAttendanceAproveModel) = _Content;
  const factory TeamLeaderAttendanceApprovalState.success(List<TeamLeaderAttendanceApprovelModel> teamAttendanceAproveModel) = _Success;
  const factory TeamLeaderAttendanceApprovalState.failed(List<TeamLeaderAttendanceApprovelModel> teamAttendanceAproveModel, String message) =
  _Failed;

  factory TeamLeaderAttendanceApprovalState.initial() => const TeamLeaderAttendanceApprovalState.content([]);
}