import 'package:freezed_annotation/freezed_annotation.dart';

part 'wfhcondition_model.g.dart';
part 'wfhcondition_model.freezed.dart';

@freezed
class WfhConditionModel with _$WfhConditionModel{
  const factory WfhConditionModel({
    @JsonKey(name: "control_code") @Default("") String controlCode,
    @JsonKey(name: "description") @Default("") String meaning,
  }) = _WfhConditionModel;

  factory WfhConditionModel.fromJson(Map<String, dynamic> json) => _$WfhConditionModelFromJson(json);
}
