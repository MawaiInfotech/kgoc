import 'package:freezed_annotation/freezed_annotation.dart';
import '../model/employeebirthdetail_model.dart';

part 'employeebirthdetail_state.freezed.dart';

@freezed
class EmployeeBirthDetailState with _$EmployeeBirthDetailState {
  const factory EmployeeBirthDetailState.loading(EmployeeBirthDetailModel model) = _Loading;
  const factory EmployeeBirthDetailState.content(EmployeeBirthDetailModel model) = _Content;
  const factory EmployeeBirthDetailState.success(EmployeeBirthDetailModel model) = _Success;
  const factory EmployeeBirthDetailState.failed(EmployeeBirthDetailModel model, String message) =
  _Failed;

  factory EmployeeBirthDetailState.initial() =>  EmployeeBirthDetailState.content(EmployeeBirthDetailModel());
}