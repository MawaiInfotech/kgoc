import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/requestwfh_model.dart';

part 'requestwfh_state.freezed.dart';

@freezed
class RequestWfhState with _$RequestWfhState {
  const factory RequestWfhState.loading(RequestWfhModel requestWfhModel) = _Loading;
  const factory RequestWfhState.content(RequestWfhModel requestWfhModel) = _Content;
  const factory RequestWfhState.success(RequestWfhModel requestWfhModel) = _Success;
  const factory RequestWfhState.failed(RequestWfhModel requestWfhModel, String message) = _Failed;

  factory RequestWfhState.initial() => const RequestWfhState.content(RequestWfhModel());
}