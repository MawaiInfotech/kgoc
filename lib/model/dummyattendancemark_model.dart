import 'package:freezed_annotation/freezed_annotation.dart';

part 'dummyattendancemark_model.g.dart';
part 'dummyattendancemark_model.freezed.dart';

@freezed
class DummyAttendanceModel with _$DummyAttendanceModel{
  const factory DummyAttendanceModel({
    @Default("") String status,
    @Default("") String message,
    @Default("") String address,
    @Default("") String punchin,
    @Default("") String punchout,

  }) = _DummyAttendanceModel;

  factory DummyAttendanceModel.fromJson(Map<String, dynamic> json) => _$DummyAttendanceModelFromJson(json);
}