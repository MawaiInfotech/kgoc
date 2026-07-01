import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_verification_model.g.dart';
part 'otp_verification_model.freezed.dart';

@freezed
class OTPVerificationModel with _$OTPVerificationModel{
  const factory OTPVerificationModel({
    @Default("") String status,
    @Default("") String msg,
    @Default("") String data,
  }) = _OTPVerificationModel;

  factory OTPVerificationModel.fromJson(Map<String, dynamic> json) => _$OTPVerificationModelFromJson(json);
}