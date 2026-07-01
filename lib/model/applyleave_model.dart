import 'package:freezed_annotation/freezed_annotation.dart';

part 'applyleave_model.g.dart';
part 'applyleave_model.freezed.dart';

@freezed
class ApplyyLeaveModel with _$ApplyyLeaveModel{
  const factory ApplyyLeaveModel({
    @Default("") String status,
    @Default("") String message,
  }) = _ApplyyLeaveModel;

  factory ApplyyLeaveModel.fromJson(Map<String, dynamic> json) => _$ApplyyLeaveModelFromJson(json);
}