import 'package:freezed_annotation/freezed_annotation.dart';

part 'cc_list_model.g.dart';
part 'cc_list_model.freezed.dart';

@freezed
class CClistModel with _$CClistModel{
  const factory CClistModel ({
    @JsonKey(name: "emp_number") @Default("") String employeeCode,
    @JsonKey(name: "emp_last_name") @Default("") String employeeLatsName,
    @JsonKey(name: "emp_first_name") @Default("") String employeeFirstName,
}) = _CClistModel;

  factory CClistModel.fromJson(Map<String, dynamic> json) => _$CClistModelFromJson(json);
}