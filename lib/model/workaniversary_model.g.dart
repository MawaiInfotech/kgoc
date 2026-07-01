// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workaniversary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkAnniversaryModelImpl _$$WorkAnniversaryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkAnniversaryModelImpl(
      employeeNumber: json['emp_number'] as String? ?? "",
      firstName: json['emp_first_name'] as String? ?? "",
      lastName: json['emp_last_name'] as String? ?? "",
      dd: json['dd'] as String? ?? "",
      joiningDate: json['join_date'] as String? ?? "",
      joiningDay: json['j_day'] as String? ?? "",
      joiningMonth: json['j_mon'] as String? ?? "",
      yearPart: json['year_part'] as String? ?? "",
      monthPart: json['mont_part'] as String? ?? "",
      unit: json['unit'] as String? ?? "",
      companyEmail: json['company_email'] as String? ?? "",
      designationCode: json['desig_code'] as String? ?? "",
      designationName: json['designation_name'] as String? ?? "",
      departmentCode: json['area_mast_department_code'] as String? ?? "",
      departmentName: json['dept_name'] as String? ?? "",
      employeeAge: (json['emp_age'] as num?)?.toInt() ?? 0,
      photo: json['photo_file'] as String? ?? "",
      email: json['emailSend'] as String? ?? "",
    );

Map<String, dynamic> _$$WorkAnniversaryModelImplToJson(
        _$WorkAnniversaryModelImpl instance) =>
    <String, dynamic>{
      'emp_number': instance.employeeNumber,
      'emp_first_name': instance.firstName,
      'emp_last_name': instance.lastName,
      'dd': instance.dd,
      'join_date': instance.joiningDate,
      'j_day': instance.joiningDay,
      'j_mon': instance.joiningMonth,
      'year_part': instance.yearPart,
      'mont_part': instance.monthPart,
      'unit': instance.unit,
      'company_email': instance.companyEmail,
      'desig_code': instance.designationCode,
      'designation_name': instance.designationName,
      'area_mast_department_code': instance.departmentCode,
      'dept_name': instance.departmentName,
      'emp_age': instance.employeeAge,
      'photo_file': instance.photo,
      'emailSend': instance.email,
    };
