import 'package:freezed_annotation/freezed_annotation.dart';

part 'misspunch_model.g.dart';
part 'misspunch_model.freezed.dart';

@freezed
class MisspunchModel with _$MisspunchModel{
  const factory MisspunchModel({
    @JsonKey(name: "punch_in_dt") @Default("") String punchDate,
    @JsonKey(name: "in_time") @Default("") String inTime,
    @JsonKey(name: "out_time") @Default("") String outTime,
    @JsonKey(name: "reason") @Default("") String reason,
    @JsonKey(name: "status") @Default("") String status,

}) = _MisspunchModel;

  factory MisspunchModel.fromJson(Map<String, dynamic> json) => _$MisspunchModelFromJson(json);
}
