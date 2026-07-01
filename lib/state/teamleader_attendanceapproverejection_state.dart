import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/teamleader_attendanceApprovalRejection_model.dart';
part 'teamleader_attendanceapproverejection_state.freezed.dart';

@freezed
class TeamLeaderAttendanceApproveRejectionState with _$TeamLeaderAttendanceApproveRejectionState {
  const factory TeamLeaderAttendanceApproveRejectionState.loading(TeamLeaderAttendanceApproveRejectionModel approvalRejectionModel) = _Loading;
  const factory TeamLeaderAttendanceApproveRejectionState.content(TeamLeaderAttendanceApproveRejectionModel approvalRejectionModel) = _Content;
  const factory TeamLeaderAttendanceApproveRejectionState.success(TeamLeaderAttendanceApproveRejectionModel approvalRejectionModel, String? message) = _Success;
  const factory TeamLeaderAttendanceApproveRejectionState.failed(TeamLeaderAttendanceApproveRejectionModel approvalRejectionModel, String message) =
  _Failed;

  factory TeamLeaderAttendanceApproveRejectionState.initial() => const TeamLeaderAttendanceApproveRejectionState.content(TeamLeaderAttendanceApproveRejectionModel());
}