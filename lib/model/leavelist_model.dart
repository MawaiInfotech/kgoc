import 'package:freezed_annotation/freezed_annotation.dart';

part 'leavelist_model.g.dart';
part 'leavelist_model.freezed.dart';

@freezed
class LeavelistModel with _$LeavelistModel{
  const factory LeavelistModel ({
    @JsonKey(name: "code") @Default("") String code,
    @JsonKey(name: "description") @Default("") String description,
    @JsonKey(name: "unit_cd") @Default("") String unitCode,
    @JsonKey(name: "leave_balance") @Default("") String leaveBalance,

}) = _LeavelistModel;

factory LeavelistModel.fromJson(Map<String, dynamic> json) => _$LeavelistModelFromJson(json);
}