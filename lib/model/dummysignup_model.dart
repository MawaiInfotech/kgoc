import 'package:freezed_annotation/freezed_annotation.dart';

part 'dummysignup_model.g.dart';
part 'dummysignup_model.freezed.dart';

@freezed
class DummySignupModel with _$DummySignupModel{
  const factory DummySignupModel({
    @Default("") String status,
    @Default("") String msg,
    @Default("") String user,
  }) = _DummySignupModel;

  factory DummySignupModel.fromJson(Map<String, dynamic> json) => _$DummySignupModelFromJson(json);
}