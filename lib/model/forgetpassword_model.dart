import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgetpassword_model.g.dart';
part 'forgetpassword_model.freezed.dart';

@freezed
class ForgetpasswordModel with _$ForgetpasswordModel{
  const factory ForgetpasswordModel({
    @Default("") String status,
    @Default("") String msg,
    @Default("") String data,
  }) = _ForgetpasswordModel;

  factory ForgetpasswordModel.fromJson(Map<String, dynamic> json) => _$ForgetpasswordModelFromJson(json);
}