import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/applyleave_model.dart';

part 'applyleave_state.freezed.dart';

@freezed
class ApplyyLeaveState with _$ApplyyLeaveState {
  const factory ApplyyLeaveState.loading(ApplyyLeaveModel applyyLeaveModel) = _Loading;
  const factory ApplyyLeaveState.content(ApplyyLeaveModel applyyLeaveModel) = _Content;
  const factory ApplyyLeaveState.success(ApplyyLeaveModel applyyLeaveModel, String? message) = _Success;
  const factory ApplyyLeaveState.failed(ApplyyLeaveModel applyyLeaveModel, String message) =
  _Failed;

  factory ApplyyLeaveState.initial() => const ApplyyLeaveState.content(ApplyyLeaveModel());
}