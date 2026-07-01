import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/approveoffduty_model.dart';

part 'approveoffduty_state.freezed.dart';

@freezed
class ApproveoffdutyState with _$ApproveoffdutyState {
  const factory ApproveoffdutyState.loading(List<ApproveoffdutyModel> approveoffdutyModel) = _Loading;

  const factory ApproveoffdutyState.content(List<ApproveoffdutyModel> approveoffdutyModel) = _Content;

  const factory ApproveoffdutyState.success(List<ApproveoffdutyModel> approveoffdutyModel) = _Success;

  const factory ApproveoffdutyState.failed(List<ApproveoffdutyModel> approveoffdutyModel, message) = _Failed;

  factory ApproveoffdutyState.initial() => const ApproveoffdutyState.content([]);
}