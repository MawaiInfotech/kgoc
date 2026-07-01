import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/workfromhome_model.dart';

part 'wfh_state.freezed.dart';

@freezed
class WFHState with _$WFHState {
  const factory WFHState.loading(WorkfromHomeModel workfromHomeModel) = _Loading;
  const factory WFHState.content(WorkfromHomeModel workfromHomeModel) = _Content;
  const factory WFHState.success(WorkfromHomeModel workfromHomeModel) = _Success;
  const factory WFHState.failed(WorkfromHomeModel workfromHomeModel, String message) =
  _Failed;

  factory WFHState.initial() => const WFHState.content(WorkfromHomeModel());
}