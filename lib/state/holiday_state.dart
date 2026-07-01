import 'package:freezed_annotation/freezed_annotation.dart';
import '../model/holiday_model.dart';

part 'holiday_state.freezed.dart';

@freezed
class HolidayState with _$HolidayState{

  const factory HolidayState.loading(List<HolidayModel> holidaylist) = _Loading;
  const factory HolidayState.content(List<HolidayModel> holidaylist) = _Content;
  const factory HolidayState.success(List<HolidayModel> holidaylist) = _Success;
  const factory HolidayState.failed(List<HolidayModel> holidaylist, message) = _Failed;

  factory HolidayState.initial() => HolidayState.content([]);
}