import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/approvewfh_model.dart';

part 'wfhapprove_state.freezed.dart';

@freezed
class ApproveWfhState with _$ApproveWfhState {
  const factory ApproveWfhState.loading(ApproveWfhModel approveWfhModel) = _Loading;
  const factory ApproveWfhState.content(ApproveWfhModel approveWfhModel) = _Content;
  const factory ApproveWfhState.success(ApproveWfhModel approveWfhModel, String? message) = _Success;
  const factory ApproveWfhState.failed(ApproveWfhModel approveWfhModel, String message) = _Failed;

  factory ApproveWfhState.initial() => const ApproveWfhState.content(ApproveWfhModel());
}