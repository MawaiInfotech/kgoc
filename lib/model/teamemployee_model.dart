import 'package:freezed_annotation/freezed_annotation.dart';

part 'teamemployee_model.g.dart';
part 'teamemployee_model.freezed.dart';

@freezed
class TeamEmployeeListModel with _$TeamEmployeeListModel{
  const factory TeamEmployeeListModel({
    @JsonKey(name: "emp_number") @Default("") String employeeNumber,
    @JsonKey(name: "name") @Default("") String name,
}) = _TeamEmployeeListModel;
  factory TeamEmployeeListModel.fromJson(Map<String, dynamic> json) => _$TeamEmployeeListModelFromJson(json);
}