import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/pendingwfh_model.dart';

part 'pendingwfh_state.freezed.dart';

@freezed
class PendingWfhState with _$PendingWfhState {
  const factory PendingWfhState.loading(List<PendingWfhModel> pendingwfhState) = _Loading;
  const factory PendingWfhState.content(List<PendingWfhModel> pendingwfhState) = _Content;
  const factory PendingWfhState.success(List<PendingWfhModel> pendingwfhState) = _Success;
  const factory PendingWfhState.failed(List<PendingWfhModel> pendingwfhState, String message) =
  _Failed;

  factory PendingWfhState.initial() => const PendingWfhState.content([]);
}