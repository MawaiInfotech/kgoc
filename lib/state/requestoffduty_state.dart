import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/requestoffduty_model.dart';

part 'requestoffduty_state.freezed.dart';

@freezed
class RequestoffdutyState with _$RequestoffdutyState {
  const factory RequestoffdutyState.loading(RequestoffdutyModel requestoffdutyModel) = _Loading;
  const factory RequestoffdutyState.content(RequestoffdutyModel requestoffdutyModel) = _Content;
  const factory RequestoffdutyState.success(RequestoffdutyModel requestoffdutyModel) = _Success;
  const factory RequestoffdutyState.failed(RequestoffdutyModel requestoffdutyModel, String message) =
  _Failed;

  factory RequestoffdutyState.initial() => const RequestoffdutyState.content(RequestoffdutyModel());
}