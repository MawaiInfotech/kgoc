import 'package:freezed_annotation/freezed_annotation.dart';
import 'attendancedetail_model.dart';

part 'attendance_detail_supp_model.g.dart';
part 'attendance_detail_supp_model.freezed.dart';

@freezed
class AttendanceDetailSuppModel with _$AttendanceDetailSuppModel{
  const factory AttendanceDetailSuppModel({
    @Default(<AttendanceDetailModel> []) List<AttendanceDetailModel> attendance,
    @Default(<String> []) List<String> month,

  }) = _AttendanceDetailSuppModel;
  factory AttendanceDetailSuppModel.fromJson(Map<String , dynamic> json) => _$AttendanceDetailSuppModelFromJson(json);
}