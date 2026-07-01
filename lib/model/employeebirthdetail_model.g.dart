// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employeebirthdetail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeBirthDetailModelImpl _$$EmployeeBirthDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EmployeeBirthDetailModelImpl(
      emp_newjoins: (json['emp_newjoins'] as List<dynamic>?)
              ?.map((e) => NewJoineeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <NewJoineeModel>[],
      emp_births: (json['emp_births'] as List<dynamic>?)
              ?.map((e) => BirthdayModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <BirthdayModel>[],
      emp_workanniversary: (json['emp_workanniversary'] as List<dynamic>?)
              ?.map((e) =>
                  WorkAnniversaryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <WorkAnniversaryModel>[],
    );

Map<String, dynamic> _$$EmployeeBirthDetailModelImplToJson(
        _$EmployeeBirthDetailModelImpl instance) =>
    <String, dynamic>{
      'emp_newjoins': instance.emp_newjoins,
      'emp_births': instance.emp_births,
      'emp_workanniversary': instance.emp_workanniversary,
    };
