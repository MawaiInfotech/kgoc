import 'package:freezed_annotation/freezed_annotation.dart';

part 'leave_type_model.g.dart';
part 'leave_type_model.freezed.dart';

@freezed
class LeavetypeModel with _$LeavetypeModel{
  const factory LeavetypeModel({
    @JsonKey(name: "control_code") @Default("") String controlCode,
    @JsonKey(name: "meaning") @Default("") String meaning,
  }) = _LeavetypeModel;

  factory LeavetypeModel.fromJson(Map<String, dynamic> json) => _$LeavetypeModelFromJson(json);
}
