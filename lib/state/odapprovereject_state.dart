import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/teamleader_attendanceApprovalRejection_model.dart';

part 'odapprovereject_state.freezed.dart';

@freezed
class OdApproveRejectState with _$OdApproveRejectState {
  const factory OdApproveRejectState.loading(TeamLeaderAttendanceApproveRejectionModel approvalRejectionModel) = _Loading;
  const factory OdApproveRejectState.content(TeamLeaderAttendanceApproveRejectionModel approvalRejectionModel) = _Content;
  const factory OdApproveRejectState.success(TeamLeaderAttendanceApproveRejectionModel approvalRejectionModel, String? message) = _Success;
  const factory OdApproveRejectState.failed(TeamLeaderAttendanceApproveRejectionModel approvalRejectionModel, String message) =
  _Failed;

  factory OdApproveRejectState.initial() => const OdApproveRejectState.content(TeamLeaderAttendanceApproveRejectionModel());
}