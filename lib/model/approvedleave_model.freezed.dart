// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'approvedleave_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApprovedLeaveModel _$ApprovedLeaveModelFromJson(Map<String, dynamic> json) {
  return _ApprovedLeaveModel.fromJson(json);
}

/// @nodoc
mixin _$ApprovedLeaveModel {
  @JsonKey(name: "from_date")
  String get fromDate => throw _privateConstructorUsedError;
  @JsonKey(name: "end_date")
  String get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: "leave_type")
  String get leaveType => throw _privateConstructorUsedError;
  @JsonKey(name: "emp_cd")
  String get employeeCode => throw _privateConstructorUsedError;
  @JsonKey(name: "leave_granted")
  String get leaveGranted => throw _privateConstructorUsedError;
  @JsonKey(name: "leave_days")
  String get leaveDays => throw _privateConstructorUsedError;
  @JsonKey(name: "leave_desc")
  String get leaveDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "leave_pk_id")
  int get leaveId => throw _privateConstructorUsedError;
  @JsonKey(name: "reason")
  String get reason => throw _privateConstructorUsedError;
  @JsonKey(name: "leave_granted_desc")
  String get leaveGrantedDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "emp_name")
  String get employeeName => throw _privateConstructorUsedError;
  @JsonKey(name: "dept_name")
  String get department => throw _privateConstructorUsedError;
  @JsonKey(name: "dept_cd")
  String get departmentCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApprovedLeaveModelCopyWith<ApprovedLeaveModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApprovedLeaveModelCopyWith<$Res> {
  factory $ApprovedLeaveModelCopyWith(
          ApprovedLeaveModel value, $Res Function(ApprovedLeaveModel) then) =
      _$ApprovedLeaveModelCopyWithImpl<$Res, ApprovedLeaveModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "from_date") String fromDate,
      @JsonKey(name: "end_date") String endDate,
      @JsonKey(name: "leave_type") String leaveType,
      @JsonKey(name: "emp_cd") String employeeCode,
      @JsonKey(name: "leave_granted") String leaveGranted,
      @JsonKey(name: "leave_days") String leaveDays,
      @JsonKey(name: "leave_desc") String leaveDescription,
      @JsonKey(name: "leave_pk_id") int leaveId,
      @JsonKey(name: "reason") String reason,
      @JsonKey(name: "leave_granted_desc") String leaveGrantedDescription,
      @JsonKey(name: "emp_name") String employeeName,
      @JsonKey(name: "dept_name") String department,
      @JsonKey(name: "dept_cd") String departmentCode});
}

/// @nodoc
class _$ApprovedLeaveModelCopyWithImpl<$Res, $Val extends ApprovedLeaveModel>
    implements $ApprovedLeaveModelCopyWith<$Res> {
  _$ApprovedLeaveModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
    Object? endDate = null,
    Object? leaveType = null,
    Object? employeeCode = null,
    Object? leaveGranted = null,
    Object? leaveDays = null,
    Object? leaveDescription = null,
    Object? leaveId = null,
    Object? reason = null,
    Object? leaveGrantedDescription = null,
    Object? employeeName = null,
    Object? department = null,
    Object? departmentCode = null,
  }) {
    return _then(_value.copyWith(
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      leaveType: null == leaveType
          ? _value.leaveType
          : leaveType // ignore: cast_nullable_to_non_nullable
              as String,
      employeeCode: null == employeeCode
          ? _value.employeeCode
          : employeeCode // ignore: cast_nullable_to_non_nullable
              as String,
      leaveGranted: null == leaveGranted
          ? _value.leaveGranted
          : leaveGranted // ignore: cast_nullable_to_non_nullable
              as String,
      leaveDays: null == leaveDays
          ? _value.leaveDays
          : leaveDays // ignore: cast_nullable_to_non_nullable
              as String,
      leaveDescription: null == leaveDescription
          ? _value.leaveDescription
          : leaveDescription // ignore: cast_nullable_to_non_nullable
              as String,
      leaveId: null == leaveId
          ? _value.leaveId
          : leaveId // ignore: cast_nullable_to_non_nullable
              as int,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      leaveGrantedDescription: null == leaveGrantedDescription
          ? _value.leaveGrantedDescription
          : leaveGrantedDescription // ignore: cast_nullable_to_non_nullable
              as String,
      employeeName: null == employeeName
          ? _value.employeeName
          : employeeName // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      departmentCode: null == departmentCode
          ? _value.departmentCode
          : departmentCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApprovedLeaveModelImplCopyWith<$Res>
    implements $ApprovedLeaveModelCopyWith<$Res> {
  factory _$$ApprovedLeaveModelImplCopyWith(_$ApprovedLeaveModelImpl value,
          $Res Function(_$ApprovedLeaveModelImpl) then) =
      __$$ApprovedLeaveModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "from_date") String fromDate,
      @JsonKey(name: "end_date") String endDate,
      @JsonKey(name: "leave_type") String leaveType,
      @JsonKey(name: "emp_cd") String employeeCode,
      @JsonKey(name: "leave_granted") String leaveGranted,
      @JsonKey(name: "leave_days") String leaveDays,
      @JsonKey(name: "leave_desc") String leaveDescription,
      @JsonKey(name: "leave_pk_id") int leaveId,
      @JsonKey(name: "reason") String reason,
      @JsonKey(name: "leave_granted_desc") String leaveGrantedDescription,
      @JsonKey(name: "emp_name") String employeeName,
      @JsonKey(name: "dept_name") String department,
      @JsonKey(name: "dept_cd") String departmentCode});
}

/// @nodoc
class __$$ApprovedLeaveModelImplCopyWithImpl<$Res>
    extends _$ApprovedLeaveModelCopyWithImpl<$Res, _$ApprovedLeaveModelImpl>
    implements _$$ApprovedLeaveModelImplCopyWith<$Res> {
  __$$ApprovedLeaveModelImplCopyWithImpl(_$ApprovedLeaveModelImpl _value,
      $Res Function(_$ApprovedLeaveModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
    Object? endDate = null,
    Object? leaveType = null,
    Object? employeeCode = null,
    Object? leaveGranted = null,
    Object? leaveDays = null,
    Object? leaveDescription = null,
    Object? leaveId = null,
    Object? reason = null,
    Object? leaveGrantedDescription = null,
    Object? employeeName = null,
    Object? department = null,
    Object? departmentCode = null,
  }) {
    return _then(_$ApprovedLeaveModelImpl(
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      leaveType: null == leaveType
          ? _value.leaveType
          : leaveType // ignore: cast_nullable_to_non_nullable
              as String,
      employeeCode: null == employeeCode
          ? _value.employeeCode
          : employeeCode // ignore: cast_nullable_to_non_nullable
              as String,
      leaveGranted: null == leaveGranted
          ? _value.leaveGranted
          : leaveGranted // ignore: cast_nullable_to_non_nullable
              as String,
      leaveDays: null == leaveDays
          ? _value.leaveDays
          : leaveDays // ignore: cast_nullable_to_non_nullable
              as String,
      leaveDescription: null == leaveDescription
          ? _value.leaveDescription
          : leaveDescription // ignore: cast_nullable_to_non_nullable
              as String,
      leaveId: null == leaveId
          ? _value.leaveId
          : leaveId // ignore: cast_nullable_to_non_nullable
              as int,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      leaveGrantedDescription: null == leaveGrantedDescription
          ? _value.leaveGrantedDescription
          : leaveGrantedDescription // ignore: cast_nullable_to_non_nullable
              as String,
      employeeName: null == employeeName
          ? _value.employeeName
          : employeeName // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      departmentCode: null == departmentCode
          ? _value.departmentCode
          : departmentCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApprovedLeaveModelImpl implements _ApprovedLeaveModel {
  const _$ApprovedLeaveModelImpl(
      {@JsonKey(name: "from_date") this.fromDate = "",
      @JsonKey(name: "end_date") this.endDate = "",
      @JsonKey(name: "leave_type") this.leaveType = "",
      @JsonKey(name: "emp_cd") this.employeeCode = "",
      @JsonKey(name: "leave_granted") this.leaveGranted = "",
      @JsonKey(name: "leave_days") this.leaveDays = "",
      @JsonKey(name: "leave_desc") this.leaveDescription = "",
      @JsonKey(name: "leave_pk_id") this.leaveId = 0,
      @JsonKey(name: "reason") this.reason = "",
      @JsonKey(name: "leave_granted_desc") this.leaveGrantedDescription = "",
      @JsonKey(name: "emp_name") this.employeeName = "",
      @JsonKey(name: "dept_name") this.department = "",
      @JsonKey(name: "dept_cd") this.departmentCode = ""});

  factory _$ApprovedLeaveModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApprovedLeaveModelImplFromJson(json);

  @override
  @JsonKey(name: "from_date")
  final String fromDate;
  @override
  @JsonKey(name: "end_date")
  final String endDate;
  @override
  @JsonKey(name: "leave_type")
  final String leaveType;
  @override
  @JsonKey(name: "emp_cd")
  final String employeeCode;
  @override
  @JsonKey(name: "leave_granted")
  final String leaveGranted;
  @override
  @JsonKey(name: "leave_days")
  final String leaveDays;
  @override
  @JsonKey(name: "leave_desc")
  final String leaveDescription;
  @override
  @JsonKey(name: "leave_pk_id")
  final int leaveId;
  @override
  @JsonKey(name: "reason")
  final String reason;
  @override
  @JsonKey(name: "leave_granted_desc")
  final String leaveGrantedDescription;
  @override
  @JsonKey(name: "emp_name")
  final String employeeName;
  @override
  @JsonKey(name: "dept_name")
  final String department;
  @override
  @JsonKey(name: "dept_cd")
  final String departmentCode;

  @override
  String toString() {
    return 'ApprovedLeaveModel(fromDate: $fromDate, endDate: $endDate, leaveType: $leaveType, employeeCode: $employeeCode, leaveGranted: $leaveGranted, leaveDays: $leaveDays, leaveDescription: $leaveDescription, leaveId: $leaveId, reason: $reason, leaveGrantedDescription: $leaveGrantedDescription, employeeName: $employeeName, department: $department, departmentCode: $departmentCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovedLeaveModelImpl &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.leaveType, leaveType) ||
                other.leaveType == leaveType) &&
            (identical(other.employeeCode, employeeCode) ||
                other.employeeCode == employeeCode) &&
            (identical(other.leaveGranted, leaveGranted) ||
                other.leaveGranted == leaveGranted) &&
            (identical(other.leaveDays, leaveDays) ||
                other.leaveDays == leaveDays) &&
            (identical(other.leaveDescription, leaveDescription) ||
                other.leaveDescription == leaveDescription) &&
            (identical(other.leaveId, leaveId) || other.leaveId == leaveId) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(
                    other.leaveGrantedDescription, leaveGrantedDescription) ||
                other.leaveGrantedDescription == leaveGrantedDescription) &&
            (identical(other.employeeName, employeeName) ||
                other.employeeName == employeeName) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.departmentCode, departmentCode) ||
                other.departmentCode == departmentCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fromDate,
      endDate,
      leaveType,
      employeeCode,
      leaveGranted,
      leaveDays,
      leaveDescription,
      leaveId,
      reason,
      leaveGrantedDescription,
      employeeName,
      department,
      departmentCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApprovedLeaveModelImplCopyWith<_$ApprovedLeaveModelImpl> get copyWith =>
      __$$ApprovedLeaveModelImplCopyWithImpl<_$ApprovedLeaveModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApprovedLeaveModelImplToJson(
      this,
    );
  }
}

abstract class _ApprovedLeaveModel implements ApprovedLeaveModel {
  const factory _ApprovedLeaveModel(
      {@JsonKey(name: "from_date") final String fromDate,
      @JsonKey(name: "end_date") final String endDate,
      @JsonKey(name: "leave_type") final String leaveType,
      @JsonKey(name: "emp_cd") final String employeeCode,
      @JsonKey(name: "leave_granted") final String leaveGranted,
      @JsonKey(name: "leave_days") final String leaveDays,
      @JsonKey(name: "leave_desc") final String leaveDescription,
      @JsonKey(name: "leave_pk_id") final int leaveId,
      @JsonKey(name: "reason") final String reason,
      @JsonKey(name: "leave_granted_desc") final String leaveGrantedDescription,
      @JsonKey(name: "emp_name") final String employeeName,
      @JsonKey(name: "dept_name") final String department,
      @JsonKey(name: "dept_cd")
      final String departmentCode}) = _$ApprovedLeaveModelImpl;

  factory _ApprovedLeaveModel.fromJson(Map<String, dynamic> json) =
      _$ApprovedLeaveModelImpl.fromJson;

  @override
  @JsonKey(name: "from_date")
  String get fromDate;
  @override
  @JsonKey(name: "end_date")
  String get endDate;
  @override
  @JsonKey(name: "leave_type")
  String get leaveType;
  @override
  @JsonKey(name: "emp_cd")
  String get employeeCode;
  @override
  @JsonKey(name: "leave_granted")
  String get leaveGranted;
  @override
  @JsonKey(name: "leave_days")
  String get leaveDays;
  @override
  @JsonKey(name: "leave_desc")
  String get leaveDescription;
  @override
  @JsonKey(name: "leave_pk_id")
  int get leaveId;
  @override
  @JsonKey(name: "reason")
  String get reason;
  @override
  @JsonKey(name: "leave_granted_desc")
  String get leaveGrantedDescription;
  @override
  @JsonKey(name: "emp_name")
  String get employeeName;
  @override
  @JsonKey(name: "dept_name")
  String get department;
  @override
  @JsonKey(name: "dept_cd")
  String get departmentCode;
  @override
  @JsonKey(ignore: true)
  _$$ApprovedLeaveModelImplCopyWith<_$ApprovedLeaveModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
