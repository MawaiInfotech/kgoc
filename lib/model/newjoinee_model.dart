import 'package:freezed_annotation/freezed_annotation.dart';

part 'newjoinee_model.g.dart';
part 'newjoinee_model.freezed.dart';

@freezed
class NewJoineeModel with _$NewJoineeModel{
  const factory NewJoineeModel({
    @JsonKey(name: "emp_first_name") @Default("") String firstName,
    @JsonKey(name: "emp_last_name") @Default("") String lastName,
    @JsonKey(name: "photo_file") @Default("") String photo,
    @JsonKey(name: "join_date") @Default("") String joiningDate,
    @JsonKey(name: "dept_name") @Default("") String departName,

}) = _NewJoineeModel;
  factory NewJoineeModel.fromJson(Map<String, dynamic> json) => _$NewJoineeModelFromJson(json);
}