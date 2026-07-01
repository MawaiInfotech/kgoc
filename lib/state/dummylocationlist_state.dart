import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/dummylocationlist_model.dart';

part 'dummylocationlist_state.freezed.dart';

@freezed
class DummyLocationlistState with _$DummyLocationlistState {
  const factory DummyLocationlistState.loading(List<DummyLocationlistModel> dummylocationList) = _Loading;
  const factory DummyLocationlistState.content(List<DummyLocationlistModel> dummylocationList) = _Content;
  const factory DummyLocationlistState.success(List<DummyLocationlistModel> dummylocationList) = _Success;
  const factory DummyLocationlistState.failed(List<DummyLocationlistModel> dummylocationList, String message) =
  _Failed;

  factory DummyLocationlistState.initial() => const DummyLocationlistState.content([]);
}