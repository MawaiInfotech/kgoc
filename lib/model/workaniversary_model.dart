import 'package:freezed_annotation/freezed_annotation.dart';

part 'workaniversary_model.g.dart';
part 'workaniversary_model.freezed.dart';

@freezed
class WorkAnniversaryModel with _$WorkAnniversaryModel{
  const factory WorkAnniversaryModel({
    @JsonKey(name: "emp_number") @Default("") String employeeNumber,
    @JsonKey(name: "emp_first_name") @Default("") String firstName,
    @JsonKey(name: "emp_last_name") @Default("") String lastName,
    @JsonKey(name: "dd") @Default("") String dd,
    @JsonKey(name: "join_date") @Default("") String joiningDate,
    @JsonKey(name: "j_day") @Default("") String joiningDay,
    @JsonKey(name: "j_mon") @Default("") String joiningMonth,
    @JsonKey(name: "year_part") @Default("") String yearPart,
    @JsonKey(name: "mont_part") @Default("") String monthPart,
    @JsonKey(name: "unit") @Default("") String unit,
    @JsonKey(name: "company_email") @Default("") String companyEmail,
    @JsonKey(name: "desig_code") @Default("") String designationCode,
    @JsonKey(name: "designation_name") @Default("") String designationName,
    @JsonKey(name: "area_mast_department_code") @Default("") String departmentCode,
    @JsonKey(name: "dept_name") @Default("") String departmentName,
    @JsonKey(name: "emp_age") @Default(0) int employeeAge,
    @JsonKey(name: "photo_file") @Default("") String photo,
    @JsonKey(name: "emailSend") @Default("") String email,

  }) = _WorkAnniversaryModel;
  factory WorkAnniversaryModel.fromJson(Map<String, dynamic> json) => _$WorkAnniversaryModelFromJson(json);
}