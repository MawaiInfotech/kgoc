import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trisquare_locus/model/workaniversary_model.dart';
import 'birthday_model.dart';
import 'newjoinee_model.dart';

part 'employeebirthdetail_model.g.dart';
part 'employeebirthdetail_model.freezed.dart';

@freezed
class EmployeeBirthDetailModel with _$EmployeeBirthDetailModel{
  const factory EmployeeBirthDetailModel({
    @Default(<NewJoineeModel> []) List<NewJoineeModel> emp_newjoins,
    @Default(<BirthdayModel> []) List<BirthdayModel> emp_births,
    @Default(<WorkAnniversaryModel> []) List<WorkAnniversaryModel> emp_workanniversary,
  }) = _EmployeeBirthDetailModel;

  factory EmployeeBirthDetailModel.fromJson(Map<String, dynamic> json) => _$EmployeeBirthDetailModelFromJson(json);
}