import 'package:freezed_annotation/freezed_annotation.dart';

part 'approvewfh_model.g.dart';
part 'approvewfh_model.freezed.dart';

@freezed
class ApproveWfhModel with _$ApproveWfhModel{
  const factory ApproveWfhModel({
    @JsonKey(name: "status") @Default("") String status,
    @JsonKey(name: "message") @Default("") String message,

}) = _ApproveWfhModel;

  factory ApproveWfhModel.fromJson(Map<String, dynamic> json) => _$ApproveWfhModelFromJson(json);
}