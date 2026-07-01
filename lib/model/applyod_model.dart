import 'package:freezed_annotation/freezed_annotation.dart';

part 'applyod_model.g.dart';
part 'applyod_model.freezed.dart';

@freezed
class ApplyOdModel with _$ApplyOdModel{
  const factory ApplyOdModel({
    @Default("") String status,
    @Default("") String message,
  }) = _ApplyOdModel;

  factory ApplyOdModel.fromJson(Map<String, dynamic> json) => _$ApplyOdModelFromJson(json);
}