import 'package:freezed_annotation/freezed_annotation.dart';

part 'reportingto_model.g.dart';
part 'reportingto_model.freezed.dart';

@freezed
class ReportingtoModel with _$ReportingtoModel{
  const factory ReportingtoModel({
    @JsonKey(name: "emp_number") @Default("") String employeeNumber,
    @JsonKey(name: "emp_last_name") @Default("") String employeeLastName,
    @JsonKey(name: "emp_first_name") @Default("") String employeeFirstName,
  }) = _ReportingtoModel;

factory ReportingtoModel.fromJson(Map<String, dynamic> json) => _$ReportingtoModelFromJson(json);
}