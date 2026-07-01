import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendanceDetail_month_model.g.dart';
part 'attendanceDetail_month_model.freezed.dart';

@freezed
class AttendanceDetailMonthModel with _$AttendanceDetailMonthModel{
  const factory AttendanceDetailMonthModel({
    @Default("") String January,
    @Default("") String February,
    @Default("") String March,
    @Default("") String April,
    @Default("") String May,
    @Default("") String June,
    @Default("") String July,
    @Default("") String August,
    @Default("") String September,
    @Default("") String October,
    @Default("") String Novemebr,
    @Default("") String December,

  }) = _AttendanceDetailMonthModel;

  factory AttendanceDetailMonthModel.fromJson(Map<String , dynamic> json) => _$AttendanceDetailMonthModelFromJson(json);
}