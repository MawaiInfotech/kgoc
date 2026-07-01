import 'package:freezed_annotation/freezed_annotation.dart';

part 'offduty_model.g.dart';
part 'offduty_model.freezed.dart';

@freezed
class OffdutyDataModel with _$OffdutyDataModel{
  const factory OffdutyDataModel({
    @JsonKey(name: "code") @Default("") String code,
    @JsonKey(name: "desc") @Default("") String description,
  }) = _OffdutyDataModel;

  factory OffdutyDataModel.fromJson(Map<String, dynamic> json) => _$OffdutyDataModelFromJson(json);
}
