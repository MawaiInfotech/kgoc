import 'package:freezed_annotation/freezed_annotation.dart';

part 'sendwishes_model.g.dart';
part 'sendwishes_model.freezed.dart';

@freezed
class SendwishesModel with _$SendwishesModel{
  const factory SendwishesModel({
    @Default("") String status,
    @Default("") String message,
  }) = _SendwishesModel;

  factory SendwishesModel.fromJson(Map<String, dynamic> json) => _$SendwishesModelFromJson(json);
}