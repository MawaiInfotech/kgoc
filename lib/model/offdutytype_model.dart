import 'package:freezed_annotation/freezed_annotation.dart';

part 'offdutytype_model.g.dart';
part 'offdutytype_model.freezed.dart';

@freezed
class OffdutyTypeModel with _$OffdutyTypeModel{
  const factory OffdutyTypeModel({
    @JsonKey(name: "control_code") @Default("") String code,
    @JsonKey(name: "description") @Default("") String description,
  }) = _OffdutyTypeModel;

  factory OffdutyTypeModel.fromJson(Map<String, dynamic> json) => _$OffdutyTypeModelFromJson(json);
}
