import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/requestleave_model.dart';

part 'request_leave_state.freezed.dart';

@freezed
class RequestLeaveState with _$RequestLeaveState {
  const factory RequestLeaveState.loading(RequestLeaveModel requestLeaveModel) = _Loading;
  const factory RequestLeaveState.content(RequestLeaveModel requestLeaveModel) = _Content;
  const factory RequestLeaveState.success(RequestLeaveModel requestLeaveModel) = _Success;
  const factory RequestLeaveState.failed(RequestLeaveModel requestLeaveModel, String message) =
  _Failed;

  factory RequestLeaveState.initial() => const RequestLeaveState.content(RequestLeaveModel());
}