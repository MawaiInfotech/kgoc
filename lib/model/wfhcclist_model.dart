import 'package:freezed_annotation/freezed_annotation.dart';

part 'wfhcclist_model.g.dart';
part 'wfhcclist_model.freezed.dart';

@freezed
class WfhCcListModel with _$WfhCcListModel{
  const factory WfhCcListModel({
    @JsonKey(name: "emp_number") @Default("") String employeeCode,
    @JsonKey(name: "name") @Default("") String name,
  }) = _WfhCcListModel;

  factory WfhCcListModel.fromJson(Map<String, dynamic> json) => _$WfhCcListModelFromJson(json);
}
