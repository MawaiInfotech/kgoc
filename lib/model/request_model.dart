import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_model.g.dart';
part 'request_model.freezed.dart';

@freezed
class RequestModel with _$RequestModel{
  const factory RequestModel({
    @Default("") String status,
    @Default("") String message,
    @Default("") String result,

}) = _RequestModel;

  factory RequestModel.fromJson(Map<String, dynamic> json) => _$RequestModelFromJson(json);
}