import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/request_model.dart';

part 'request_state.freezed.dart';

@freezed
class RequestState with _$RequestState {
  const factory RequestState.loading(RequestModel requestModel) = _Loading;
  const factory RequestState.content(RequestModel requestModel) = _Content;
  const factory RequestState.success(RequestModel requestModel, String? message) = _Success;
  const factory RequestState.failed(RequestModel requestModel, String message) =
  _Failed;

  factory RequestState.initial() => const RequestState.content(RequestModel());
}