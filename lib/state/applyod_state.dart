import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/applyod_model.dart';


part 'applyod_state.freezed.dart';

@freezed
class ApplyOdState with _$ApplyOdState {
  const factory ApplyOdState.loading(ApplyOdModel applyOdModel) = _Loading;
  const factory ApplyOdState.content(ApplyOdModel applyOdModel) = _Content;
  const factory ApplyOdState.success(ApplyOdModel applyOdModel, String? message) = _Success;
  const factory ApplyOdState.failed(ApplyOdModel applyOdModel, String message) =
  _Failed;

  factory ApplyOdState.initial() => const ApplyOdState.content(ApplyOdModel());
}