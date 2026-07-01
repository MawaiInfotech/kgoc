import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trisquare_locus/model/sendwishes_model.dart';

import '../model/applyleave_model.dart';

part 'sendwishes_state.freezed.dart';

@freezed
class SendwishesState with _$SendwishesState {
  const factory SendwishesState.loading(SendwishesModel sendwishesModel) = _Loading;
  const factory SendwishesState.content(SendwishesModel sendwishesModel) = _Content;
  const factory SendwishesState.success(SendwishesModel sendwishesModel, String? message) = _Success;
  const factory SendwishesState.failed(SendwishesModel sendwishesModel, String message) =
  _Failed;

  factory SendwishesState.initial() => const SendwishesState.content(SendwishesModel());
}