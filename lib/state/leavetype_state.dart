import 'package:freezed_annotation/freezed_annotation.dart';
import '../model/employeeleavetype_model.dart';

part 'leavetype_state.freezed.dart';

@freezed
class LeaveTypeState with _$LeaveTypeState {
  const factory LeaveTypeState.loading(EmployeeLeavetypeModel model) = _Loading;
  const factory LeaveTypeState.content(EmployeeLeavetypeModel model) = _Content;
  const factory LeaveTypeState.success(EmployeeLeavetypeModel model) = _Success;
  const factory LeaveTypeState.failed(EmployeeLeavetypeModel model, String message) =
  _Failed;

  factory LeaveTypeState.initial() => const LeaveTypeState.content(EmployeeLeavetypeModel());
}