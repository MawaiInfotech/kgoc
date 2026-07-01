import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/forgetpassword_model.dart';

part 'forgetpassword_state.freezed.dart';

@freezed
class ForgetpasswordState with _$ForgetpasswordState {
  const factory ForgetpasswordState.loading(ForgetpasswordModel forgetpasswordModel) = _Loading;
  const factory ForgetpasswordState.content(ForgetpasswordModel forgetpasswordModel) = _Content;
  const factory ForgetpasswordState.success(ForgetpasswordModel forgetpasswordModel, String? message) = _Success;
  const factory ForgetpasswordState.failed(ForgetpasswordModel forgetpasswordModel, String message) =
  _Failed;

  factory ForgetpasswordState.initial() => const ForgetpasswordState.content(ForgetpasswordModel());
}