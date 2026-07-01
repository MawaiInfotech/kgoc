import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/login_form.dart';

part 'login_state.freezed.dart';

@freezed
class LoginPageState with _$LoginPageState{
  const factory LoginPageState.loading(LoginForm form) = _Loading;
  const factory LoginPageState.content(LoginForm form) = _Content;
  const factory LoginPageState.success(LoginForm form) = _Success;
  const factory LoginPageState.failed(LoginForm form, String msg) = _Failed;

  factory LoginPageState.initial() => LoginPageState.content(LoginForm());
}