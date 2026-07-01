import 'package:freezed_annotation/freezed_annotation.dart';

part 'teamleader_leaveApprove_model.g.dart';
part 'teamleader_leaveApprove_model.freezed.dart';

@freezed
class TeamLeaderLeaveApproveRejectModel with _$TeamLeaderLeaveApproveRejectModel{
  const factory TeamLeaderLeaveApproveRejectModel({
    @Default("") String status,
    @Default("") String message,
  }) = _TeamLeaderLeaveApproveRejectModel;

  factory TeamLeaderLeaveApproveRejectModel.fromJson(Map<String, dynamic> json) => _$TeamLeaderLeaveApproveRejectModelFromJson(json);
}