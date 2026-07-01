import 'package:freezed_annotation/freezed_annotation.dart';

part 'workfromhometype.g.dart';
part 'workfromhometype.freezed.dart';

@freezed
class WorkfromHomeTypeModel with _$WorkfromHomeTypeModel{
  const factory WorkfromHomeTypeModel({
    @JsonKey(name: "control_code") @Default("") String controlCode,
    @JsonKey(name: "meaning") @Default("") String meaning,

}) = _WorkfromHomeTypeModel;
  factory WorkfromHomeTypeModel.fromJson(Map<String, dynamic> json) => _$WorkfromHomeTypeModelFromJson(json);
}