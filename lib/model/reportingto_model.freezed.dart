// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reportingto_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReportingtoModel _$ReportingtoModelFromJson(Map<String, dynamic> json) {
  return _ReportingtoModel.fromJson(json);
}

/// @nodoc
mixin _$ReportingtoModel {
  @JsonKey(name: "emp_number")
  String get employeeNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "emp_last_name")
  String get employeeLastName => throw _privateConstructorUsedError;
  @JsonKey(name: "emp_first_name")
  String get employeeFirstName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportingtoModelCopyWith<ReportingtoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportingtoModelCopyWith<$Res> {
  factory $ReportingtoModelCopyWith(
          ReportingtoModel value, $Res Function(ReportingtoModel) then) =
      _$ReportingtoModelCopyWithImpl<$Res, ReportingtoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "emp_number") String employeeNumber,
      @JsonKey(name: "emp_last_name") String employeeLastName,
      @JsonKey(name: "emp_first_name") String employeeFirstName});
}

/// @nodoc
class _$ReportingtoModelCopyWithImpl<$Res, $Val extends ReportingtoModel>
    implements $ReportingtoModelCopyWith<$Res> {
  _$ReportingtoModelCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportingtoModelImplCopyWith<$Res>
    implements $ReportingtoModelCopyWith<$Res> {
  factory _$$ReportingtoModelImplCopyWith(_$ReportingtoModelImpl value,
          $Res Function(_$ReportingtoModelImpl) then) =
      __$$ReportingtoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "emp_number") String employeeNumber,
      @JsonKey(name: "emp_last_name") String employeeLastName,
      @JsonKey(name: "emp_first_name") String employeeFirstName});
}

/// @nodoc
class __$$ReportingtoModelImplCopyWithImpl<$Res>
    extends _$ReportingtoModelCopyWithImpl<$Res, _$ReportingtoModelImpl>
    implements _$$ReportingtoModelImplCopyWith<$Res> {
  __$$ReportingtoModelImplCopyWithImpl(_$ReportingtoModelImpl _value,
      $Res Function(_$ReportingtoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeNumber = null,
    Object? employeeLastName = null,
    Object? employeeFirstName = null,
  }) {
    return _then(_$ReportingtoModelImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportingtoModelImpl implements _ReportingtoModel {
  const _$ReportingtoModelImpl(
      {@JsonKey(name: "emp_number") this.employeeNumber = "",
      @JsonKey(name: "emp_last_name") this.employeeLastName = "",
      @JsonKey(name: "emp_first_name") this.employeeFirstName = ""});

  factory _$ReportingtoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportingtoModelImplFromJson(json);

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
  String toString() {
    return 'ReportingtoModel(employeeNumber: $employeeNumber, employeeLastName: $employeeLastName, employeeFirstName: $employeeFirstName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportingtoModelImpl &&
            (identical(other.employeeNumber, employeeNumber) ||
                other.employeeNumber == employeeNumber) &&
            (identical(other.employeeLastName, employeeLastName) ||
                other.employeeLastName == employeeLastName) &&
            (identical(other.employeeFirstName, employeeFirstName) ||
                other.employeeFirstName == employeeFirstName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, employeeNumber, employeeLastName, employeeFirstName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportingtoModelImplCopyWith<_$ReportingtoModelImpl> get copyWith =>
      __$$ReportingtoModelImplCopyWithImpl<_$ReportingtoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportingtoModelImplToJson(
      this,
    );
  }
}

abstract class _ReportingtoModel implements ReportingtoModel {
  const factory _ReportingtoModel(
          {@JsonKey(name: "emp_number") final String employeeNumber,
          @JsonKey(name: "emp_last_name") final String employeeLastName,
          @JsonKey(name: "emp_first_name") final String employeeFirstName}) =
      _$ReportingtoModelImpl;

  factory _ReportingtoModel.fromJson(Map<String, dynamic> json) =
      _$ReportingtoModelImpl.fromJson;

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
  @JsonKey(ignore: true)
  _$$ReportingtoModelImplCopyWith<_$ReportingtoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
