import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/dummyattendancemark_model.dart';

part 'dummyattendance_state.freezed.dart';

@freezed
class DummyAttendanceState with _$DummyAttendanceState {
  const factory DummyAttendanceState.loading(DummyAttendanceModel dummyAttendanceModel) = _Loading;
  const factory DummyAttendanceState.content(DummyAttendanceModel dummyAttendanceModel) = _Content;
  const factory DummyAttendanceState.success(DummyAttendanceModel dummyAttendanceModel, String? message) = _Success;
  const factory DummyAttendanceState.failed(DummyAttendanceModel dummyAttendanceModel, String message) =
  _Failed;

  factory DummyAttendanceState.initial() => const DummyAttendanceState.content(DummyAttendanceModel());
}