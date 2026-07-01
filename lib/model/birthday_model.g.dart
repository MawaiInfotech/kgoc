// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birthday_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BirthdayModelImpl _$$BirthdayModelImplFromJson(Map<String, dynamic> json) =>
    _$BirthdayModelImpl(
      firstName: json['emp_first_name'] as String? ?? "",
      lastName: json['emp_last_name'] as String? ?? "",
      photoFile: json['photo_file'] as String? ?? "",
      bdate: json['b_day'] as String? ?? "",
      bmonth: json['b_mon'] as String? ?? "",
      employeeNumber: json['emp_number'] as String? ?? "",
      unit: json['unit'] as String? ?? "",
      emailSend: json['emailSend'] as String? ?? "",
      currentUser: json['current_user'] as String? ?? "",
      department: json['dept_name'] as String? ?? "",
    );

Map<String, dynamic> _$$BirthdayModelImplToJson(_$BirthdayModelImpl instance) =>
    <String, dynamic>{
      'emp_first_name': instance.firstName,
      'emp_last_name': instance.lastName,
      'photo_file': instance.photoFile,
      'b_day': instance.bdate,
      'b_mon': instance.bmonth,
      'emp_number': instance.employeeNumber,
      'unit': instance.unit,
      'emailSend': instance.emailSend,
      'current_user': instance.currentUser,
      'dept_name': instance.department,
    };
