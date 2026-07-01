import 'package:freezed_annotation/freezed_annotation.dart';

part 'changepassword_model.g.dart';
part 'changepassword_model.freezed.dart';

@freezed
class ChangepasswordModel with _$ChangepasswordModel{
  const factory ChangepasswordModel({
    @Default("") String status,
    @Default("") String msg,
    @Default("") String data,
  }) = _ChangepasswordModel;

  factory ChangepasswordModel.fromJson(Map<String, dynamic> json) => _$ChangepasswordModelFromJson(json);
}