import 'package:freezed_annotation/freezed_annotation.dart';
import '../model/otp_verification_model.dart';

part 'otp_verification_state.freezed.dart';

@freezed
class OTPVerificationState with _$OTPVerificationState {
  const factory OTPVerificationState.loading(OTPVerificationModel otpVerificationModel) = _Loading;
  const factory OTPVerificationState.content(OTPVerificationModel otpVerificationModel) = _Content;
  const factory OTPVerificationState.success(OTPVerificationModel otpVerificationModel, String? message) = _Success;
  const factory OTPVerificationState.failed(OTPVerificationModel otpVerificationModel, String message) =
  _Failed;

  factory OTPVerificationState.initial() => const OTPVerificationState.content(OTPVerificationModel());
}