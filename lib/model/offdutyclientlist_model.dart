import 'package:freezed_annotation/freezed_annotation.dart';

part 'offdutyclientlist_model.g.dart';
part 'offdutyclientlist_model.freezed.dart';

@freezed
class OffdutyClientListModel with _$OffdutyClientListModel{
  const factory OffdutyClientListModel({
    @JsonKey(name: "client_cd") @Default("") String clientCode,
    @JsonKey(name: "client_name") @Default("") String clientName,
  }) = _OffdutyClientListModel;

  factory OffdutyClientListModel.fromJson(Map<String, dynamic> json) => _$OffdutyClientListModelFromJson(json);

}