import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/dummysignup_model.dart';

part 'dummysignup_state.freezed.dart';

@freezed
class DummySignupState with _$DummySignupState {
  const factory DummySignupState.loading(DummySignupModel dummySignupModel) = _Loading;
  const factory DummySignupState.content(DummySignupModel dummySignupModel) = _Content;
  const factory DummySignupState.success(DummySignupModel dummySignupModel, String? message) = _Success;
  const factory DummySignupState.failed(DummySignupModel dummySignupModel, String message) =
  _Failed;

  factory DummySignupState.initial() => const DummySignupState.content(DummySignupModel());
}