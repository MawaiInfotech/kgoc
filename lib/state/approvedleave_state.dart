import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/approvedleave_model.dart';

part 'approvedleave_state.freezed.dart';

@freezed
class ApproveleaveState with _$ApproveleaveState {
  const factory ApproveleaveState.loading(
      List<ApprovedLeaveModel> approvedLeaveModel) = _Loading;

  const factory ApproveleaveState.content(
      List<ApprovedLeaveModel> approvedLeaveModel) = _Content;

  const factory ApproveleaveState.success(
      List<ApprovedLeaveModel> approvedLeaveModel) = _Success;

  const factory ApproveleaveState.failed(
      List<ApprovedLeaveModel> approvedLeaveModel, message) = _Failed;

  factory ApproveleaveState.initial() => const ApproveleaveState.content([]);
}