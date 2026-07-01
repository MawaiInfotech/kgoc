import 'package:freezed_annotation/freezed_annotation.dart';

part 'offdutyfor_model.g.dart';
part 'offdutyfor_model.freezed.dart';

@freezed
class OffdutyForModel with _$OffdutyForModel{
  const factory OffdutyForModel({
    @JsonKey(name: "code") @Default("") String code,
    @JsonKey(name: "desc") @Default("") String description,
  }) = _OffdutyForModel;

  factory OffdutyForModel.fromJson(Map<String, dynamic> json) => _$OffdutyForModelFromJson(json);
}
