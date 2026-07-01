import 'package:freezed_annotation/freezed_annotation.dart';

part 'applyWfh_model.g.dart';
part 'applyWfh_model.freezed.dart';

@freezed
class ApplyWfhModel with _$ApplyWfhModel{
  const factory ApplyWfhModel({
    @Default("") String status,
    @Default("") String message,
  }) = _ApplyWfhModel;

  factory ApplyWfhModel.fromJson(Map<String, dynamic> json) => _$ApplyWfhModelFromJson(json);
}