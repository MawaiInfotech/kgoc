import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaveapprove_reject_model.g.dart';
part 'leaveapprove_reject_model.freezed.dart';

@freezed
class LeaveApproveRejectModel with _$LeaveApproveRejectModel{
  const factory LeaveApproveRejectModel({

    @JsonKey(name: "status") @Default("") status,
    @JsonKey(name: "message") @Default("") message,
    @JsonKey(name: "result") @Default("") result,

}) = _LeaveApproveRejectModel;
  factory LeaveApproveRejectModel.fromJson(Map<String, dynamic> json) => _$LeaveApproveRejectModelFromJson(json);
}