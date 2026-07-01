import 'package:freezed_annotation/freezed_annotation.dart';

part 'teamleader_attendanceApprovalRejection_model.g.dart';
part 'teamleader_attendanceApprovalRejection_model.freezed.dart';

@freezed
class TeamLeaderAttendanceApproveRejectionModel with _$TeamLeaderAttendanceApproveRejectionModel{
  const factory TeamLeaderAttendanceApproveRejectionModel({
    @Default("") String status,
    @Default("") String message,
  }) = _TeamLeaderAttendanceApproveRejectionModel;

  factory TeamLeaderAttendanceApproveRejectionModel.fromJson(Map<String, dynamic> json) => _$TeamLeaderAttendanceApproveRejectionModelFromJson(json);
}