import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/mywfh_model.dart';

part 'mywfh_state.freezed.dart';

@freezed
class MyWfhState with _$MyWfhState {
  const factory MyWfhState.loading(List<MyWorkfromHomeModel> workfromHomeModel) = _Loading;
  const factory MyWfhState.content(List<MyWorkfromHomeModel> workfromHomeModel) = _Content;
  const factory MyWfhState.success(List<MyWorkfromHomeModel> workfromHomeModel) = _Success;
  const factory MyWfhState.failed(List<MyWorkfromHomeModel> workfromHomeModel, String message) =
  _Failed;

  factory MyWfhState.initial() => const MyWfhState.content([]);
}