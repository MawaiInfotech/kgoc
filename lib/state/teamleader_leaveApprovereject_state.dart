import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/teamleader_leaveApprove_model.dart';

part 'teamleader_leaveApprovereject_state.freezed.dart';

@freezed
class TeamleaderLeaveApproveState with _$TeamleaderLeaveApproveState {
  const factory TeamleaderLeaveApproveState.loading(TeamLeaderLeaveApproveRejectModel approvalRejectionModel) = _Loading;
  const factory TeamleaderLeaveApproveState.content(TeamLeaderLeaveApproveRejectModel approvalRejectionModel) = _Content;
  const factory TeamleaderLeaveApproveState.success(TeamLeaderLeaveApproveRejectModel approvalRejectionModel, String? message) = _Success;
  const factory TeamleaderLeaveApproveState.failed(TeamLeaderLeaveApproveRejectModel approvalRejectionModel, String message) =
  _Failed;

  factory TeamleaderLeaveApproveState.initial() => const TeamleaderLeaveApproveState.content(TeamLeaderLeaveApproveRejectModel());
}