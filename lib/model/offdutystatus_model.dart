import 'package:freezed_annotation/freezed_annotation.dart';

part 'offdutystatus_model.g.dart';
part 'offdutystatus_model.freezed.dart';

@freezed
class OffdutyStatusModel with _$OffdutyStatusModel{
  const factory OffdutyStatusModel({
    @JsonKey(name: "code") @Default("") String code,
    @JsonKey(name: "desc") @Default("") String description,
  }) = _OffdutyStatusModel;

  factory OffdutyStatusModel.fromJson(Map<String, dynamic> json) => _$OffdutyStatusModelFromJson(json);
}
