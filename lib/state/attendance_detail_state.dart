import 'package:freezed_annotation/freezed_annotation.dart';
import '../model/attendance_detail_supp_model.dart';
import '../model/attendancedetail_model.dart';

part 'attendance_detail_state.freezed.dart';

@freezed
class AttendanceDetailState with _$AttendanceDetailState{
  const factory AttendanceDetailState.loading(AttendanceDetailSuppModel attendanceDetailModel) = _Loading;
  const factory AttendanceDetailState.content(AttendanceDetailSuppModel attendanceDetailModel) = _Content;
  const factory AttendanceDetailState.success(AttendanceDetailSuppModel attendanceDetailModel) = _Success;
  const factory AttendanceDetailState.failed(AttendanceDetailSuppModel attendanceDetailModel, message) = _Failed;

  factory AttendanceDetailState.initial() =>  AttendanceDetailState.content(AttendanceDetailSuppModel());

}