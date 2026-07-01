// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employeedetail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmployeeDetailModel _$EmployeeDetailModelFromJson(Map<String, dynamic> json) {
  return _EmployeedetailModel.fromJson(json);
}

/// @nodoc
mixin _$EmployeeDetailModel {
  @JsonKey(name: "emp_number")
  String get employeeNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "emp_last_name")
  String get employeeLastName => throw _privateConstructorUsedError;
  @JsonKey(name: "emp_first_name")
  String get employeeFirstName => throw _privateConstructorUsedError;
  @JsonKey(name: "present_phone")
  String get presentNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "permanent_phone")
  String get permamnentNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "reporting_to")
  String get reportingTo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeDetailModelCopyWith<EmployeeDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeDetailModelCopyWith<$Res> {
  factory $EmployeeDetailModelCopyWith(
          EmployeeDetailModel value, $Res Function(EmployeeDetailModel) then) =
      _$EmployeeDetailModelCopyWithImpl<$Res, EmployeeDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "emp_number") String employeeNumber,
      @JsonKey(name: "emp_last_name") String employeeLastName,
      @JsonKey(name: "emp_first_name") String employeeFirstName,
      @JsonKey(name: "present_phone") String presentNumber,
      @JsonKey(name: "permanent_phone") String permamnentNumber,
      @JsonKey(name: "reporting_to") String reportingTo});
}

/// @nodoc
class _$EmployeeDetailModelCopyWithImpl<$Res, $Val extends EmployeeDetailModel>
    implements $EmployeeDetailModelCopyWith<$Res> {
  _$EmployeeDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeNumber = null,
    Object? employeeLastName = null,
    Object? employeeFirstName = null,
    Object? presentNumber = null,
    Object? permamnentNumber = null,
    Object? reportingTo = null,
  }) {
    return _then(_value.copyWith(
      employeeNumber: null == employeeNumber
          ? _value.employeeNumber
          : employeeNumber // ignore: cast_nullable_to_non_nullable
              as String,
      employeeLastName: null == employeeLastName
          ? _value.employeeLastName
          : employeeLastName // ignore: cast_nullable_to_non_nullable
              as String,
      employeeFirstName: null == employeeFirstName
          ? _value.employeeFirstName
          : employeeFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      presentNumber: null == presentNumber
          ? _value.presentNumber
          : presentNumber // ignore: cast_nullable_to_non_nullable
              as String,
      permamnentNumber: null == permamnentNumber
          ? _value.permamnentNumber
          : permamnentNumber // ignore: cast_nullable_to_non_nullable
              as String,
      reportingTo: null == reportingTo
          ? _value.reportingTo
          : reportingTo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeedetailModelImplCopyWith<$Res>
    implements $EmployeeDetailModelCopyWith<$Res> {
  factory _$$EmployeedetailModelImplCopyWith(_$EmployeedetailModelImpl value,
          $Res Function(_$EmployeedetailModelImpl) then) =
      __$$EmployeedetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "emp_number") String employeeNumber,
      @JsonKey(name: "emp_last_name") String employeeLastName,
      @JsonKey(name: "emp_first_name") String employeeFirstName,
      @JsonKey(name: "present_phone") String presentNumber,
      @JsonKey(name: "permanent_phone") String permamnentNumber,
      @JsonKey(name: "reporting_to") String reportingTo});
}

/// @nodoc
class __$$EmployeedetailModelImplCopyWithImpl<$Res>
    extends _$EmployeeDetailModelCopyWithImpl<$Res, _$EmployeedetailModelImpl>
    implements _$$EmployeedetailModelImplCopyWith<$Res> {
  __$$EmployeedetailModelImplCopyWithImpl(_$EmployeedetailModelImpl _value,
      $Res Function(_$EmployeedetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeNumber = null,
    Object? employeeLastName = null,
    Object? employeeFirstName = null,
    Object? presentNumber = null,
    Object? permamnentNumber = null,
    Object? reportingTo = null,
  }) {
    return _then(_$EmployeedetailModelImpl(
      employeeNumber: null == employeeNumber
          ? _value.employeeNumber
          : employeeNumber // ignore: cast_nullable_to_non_nullable
              as String,
      employeeLastName: null == employeeLastName
          ? _value.employeeLastName
          : employeeLastName // ignore: cast_nullable_to_non_nullable
              as String,
      employeeFirstName: null == employeeFirstName
          ? _value.employeeFirstName
          : employeeFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      presentNumber: null == presentNumber
          ? _value.presentNumber
          : presentNumber // ignore: cast_nullable_to_non_nullable
              as String,
      permamnentNumber: null == permamnentNumber
          ? _value.permamnentNumber
          : permamnentNumber // ignore: cast_nullable_to_non_nullable
              as String,
      reportingTo: null == reportingTo
          ? _value.reportingTo
          : reportingTo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeedetailModelImpl implements _EmployeedetailModel {
  const _$EmployeedetailModelImpl(
      {@JsonKey(name: "emp_number") this.employeeNumber = "",
      @JsonKey(name: "emp_last_name") this.employeeLastName = "",
      @JsonKey(name: "emp_first_name") this.employeeFirstName = "",
      @JsonKey(name: "present_phone") this.presentNumber = "",
      @JsonKey(name: "permanent_phone") this.permamnentNumber = "",
      @JsonKey(name: "reporting_to") this.reportingTo = ""});

  factory _$EmployeedetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeedetailModelImplFromJson(json);

  @override
  @JsonKey(name: "emp_number")
  final String employeeNumber;
  @override
  @JsonKey(name: "emp_last_name")
  final String employeeLastName;
  @override
  @JsonKey(name: "emp_first_name")
  final String employeeFirstName;
  @override
  @JsonKey(name: "present_phone")
  final String presentNumber;
  @override
  @JsonKey(name: "permanent_phone")
  final String permamnentNumber;
  @override
  @JsonKey(name: "reporting_to")
  final String reportingTo;

  @override
  String toString() {
    return 'EmployeeDetailModel(employeeNumber: $employeeNumber, employeeLastName: $employeeLastName, employeeFirstName: $employeeFirstName, presentNumber: $presentNumber, permamnentNumber: $permamnentNumber, reportingTo: $reportingTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeedetailModelImpl &&
            (identical(other.employeeNumber, employeeNumber) ||
                other.employeeNumber == employeeNumber) &&
            (identical(other.employeeLastName, employeeLastName) ||
                other.employeeLastName == employeeLastName) &&
            (identical(other.employeeFirstName, employeeFirstName) ||
                other.employeeFirstName == employeeFirstName) &&
            (identical(other.presentNumber, presentNumber) ||
                other.presentNumber == presentNumber) &&
            (identical(other.permamnentNumber, permamnentNumber) ||
                other.permamnentNumber == permamnentNumber) &&
            (identical(other.reportingTo, reportingTo) ||
                other.reportingTo == reportingTo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, employeeNumber, employeeLastName,
      employeeFirstName, presentNumber, permamnentNumber, reportingTo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeedetailModelImplCopyWith<_$EmployeedetailModelImpl> get copyWith =>
      __$$EmployeedetailModelImplCopyWithImpl<_$EmployeedetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeedetailModelImplToJson(
      this,
    );
  }
}

abstract class _EmployeedetailModel implements EmployeeDetailModel {
  const factory _EmployeedetailModel(
          {@JsonKey(name: "emp_number") final String employeeNumber,
          @JsonKey(name: "emp_last_name") final String employeeLastName,
          @JsonKey(name: "emp_first_name") final String employeeFirstName,
          @JsonKey(name: "present_phone") final String presentNumber,
          @JsonKey(name: "permanent_phone") final String permamnentNumber,
          @JsonKey(name: "reporting_to") final String reportingTo}) =
      _$EmployeedetailModelImpl;

  factory _EmployeedetailModel.fromJson(Map<String, dynamic> json) =
      _$EmployeedetailModelImpl.fromJson;

  @override
  @JsonKey(name: "emp_number")
  String get employeeNumber;
  @override
  @JsonKey(name: "emp_last_name")
  String get employeeLastName;
  @override
  @JsonKey(name: "emp_first_name")
  String get employeeFirstName;
  @override
  @JsonKey(name: "present_phone")
  String get presentNumber;
  @override
  @JsonKey(name: "permanent_phone")
  String get permamnentNumber;
  @override
  @JsonKey(name: "reporting_to")
  String get reportingTo;
  @override
  @JsonKey(ignore: true)
  _$$EmployeedetailModelImplCopyWith<_$EmployeedetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
