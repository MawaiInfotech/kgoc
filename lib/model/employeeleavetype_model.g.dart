// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employeeleavetype_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeLeavetypeModelImpl _$$EmployeeLeavetypeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EmployeeLeavetypeModelImpl(
      balanceLeave: (json['balance_leave'] as num?)?.toDouble() ?? 0.0,
      leaveTaken: (json['leave_taken'] as num?)?.toDouble() ?? 0.0,
      emp_leave_list: (json['emp_leave_list'] as List<dynamic>?)
              ?.map(
                  (e) => EmployeeLeaveModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <EmployeeLeaveModel>[],
      leave_list: (json['leave_list'] as List<dynamic>?)
              ?.map((e) =>
                  EmployeeleaveListModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <EmployeeleaveListModel>[],
    );

Map<String, dynamic> _$$EmployeeLeavetypeModelImplToJson(
        _$EmployeeLeavetypeModelImpl instance) =>
    <String, dynamic>{
      'balance_leave': instance.balanceLeave,
      'leave_taken': instance.leaveTaken,
      'emp_leave_list': instance.emp_leave_list,
      'leave_list': instance.leave_list,
    };
