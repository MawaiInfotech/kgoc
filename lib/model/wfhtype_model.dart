import 'package:freezed_annotation/freezed_annotation.dart';

part 'wfhtype_model.g.dart';
part 'wfhtype_model.freezed.dart';

@freezed
class WfhTypeModel with _$WfhTypeModel{
  const factory WfhTypeModel({
    @JsonKey(name: "control_code") @Default("") String controlCode,
    @JsonKey(name: "description") @Default("") String meaning,
  }) = _WfhTypeModel;

  factory WfhTypeModel.fromJson(Map<String, dynamic> json) => _$WfhTypeModelFromJson(json);
}
