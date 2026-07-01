import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/misspunch_model.dart';

part 'misspunch_state.freezed.dart';

@freezed
class MisspunchState with _$MisspunchState{
  const factory MisspunchState.loading(List<MisspunchModel> misspunchModel) = _Loading;
  const factory MisspunchState.content(List<MisspunchModel> misspunchModel) = _Content;
  const factory MisspunchState.success(List<MisspunchModel> misspunchModel) = _Success;
  const factory MisspunchState.failed(List<MisspunchModel> misspunchModel, message) = _Failed;

  factory MisspunchState.initial() => const MisspunchState.content([]);

}