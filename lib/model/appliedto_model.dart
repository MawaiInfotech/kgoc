import 'package:freezed_annotation/freezed_annotation.dart';

part 'appliedto_model.g.dart';
part 'appliedto_model.freezed.dart';

@freezed
class AppliedToModel with _$AppliedToModel{
  const factory AppliedToModel({
    @JsonKey(name: "emp_number") @Default("") String employeeNumber,
    @JsonKey(name: "emp_first_name") @Default("") String employeeFirstName,
    @JsonKey(name: "emp_last_name") @Default("") String employeelastName,
  }) = _AppliedToModel;

  factory AppliedToModel.fromJson(Map<String, dynamic> json) => _$AppliedToModelFromJson(json);
}
