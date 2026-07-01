import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/employeeoffdutylist_model.dart';

part 'employeeoffdutylist_state.freezed.dart';

@freezed
class EmployeeoffdutyState with _$EmployeeoffdutyState{
  const factory EmployeeoffdutyState.loading(List<EmployeeoffdutyListModel> employeeoffdutyModel) = _Loading;
  const factory EmployeeoffdutyState.content(List<EmployeeoffdutyListModel> employeeoffdutyModel) = _Content;
  const factory EmployeeoffdutyState.success(List<EmployeeoffdutyListModel> employeeoffdutyModel) = _Success;
  const factory EmployeeoffdutyState.failed(List<EmployeeoffdutyListModel> employeeoffdutyModel, message) = _Failed;

  factory EmployeeoffdutyState.initial() => const EmployeeoffdutyState.content([]);

}