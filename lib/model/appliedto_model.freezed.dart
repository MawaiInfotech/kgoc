// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appliedto_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppliedToModel _$AppliedToModelFromJson(Map<String, dynamic> json) {
  return _AppliedToModel.fromJson(json);
}

/// @nodoc
mixin _$AppliedToModel {
  @JsonKey(name: "emp_number")
  String get employeeNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "emp_first_name")
  String get employeeFirstName => throw _privateConstructorUsedError;
  @JsonKey(name: "emp_last_name")
  String get employeelastName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppliedToModelCopyWith<AppliedToModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppliedToModelCopyWith<$Res> {
  factory $AppliedToModelCopyWith(
          AppliedToModel value, $Res Function(AppliedToModel) then) =
      _$AppliedToModelCopyWithImpl<$Res, AppliedToModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "emp_number") String employeeNumber,
      @JsonKey(name: "emp_first_name") String employeeFirstName,
      @JsonKey(name: "emp_last_name") String employeelastName});
}

/// @nodoc
class _$AppliedToModelCopyWithImpl<$Res, $Val extends AppliedToModel>
    implements $AppliedToModelCopyWith<$Res> {
  _$AppliedToModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeNumber = null,
    Object? employeeFirstName = null,
    Object? employeelastName = null,
  }) {
    return _then(_value.copyWith(
      employeeNumber: null == employeeNumber
          ? _value.employeeNumber
          : employeeNumber // ignore: cast_nullable_to_non_nullable
              as String,
      employeeFirstName: null == employeeFirstName
          ? _value.employeeFirstName
          : employeeFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      employeelastName: null == employeelastName
          ? _value.employeelastName
          : employeelastName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppliedToModelImplCopyWith<$Res>
    implements $AppliedToModelCopyWith<$Res> {
  factory _$$AppliedToModelImplCopyWith(_$AppliedToModelImpl value,
          $Res Function(_$AppliedToModelImpl) then) =
      __$$AppliedToModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "emp_number") String employeeNumber,
      @JsonKey(name: "emp_first_name") String employeeFirstName,
      @JsonKey(name: "emp_last_name") String employeelastName});
}

/// @nodoc
class __$$AppliedToModelImplCopyWithImpl<$Res>
    extends _$AppliedToModelCopyWithImpl<$Res, _$AppliedToModelImpl>
    implements _$$AppliedToModelImplCopyWith<$Res> {
  __$$AppliedToModelImplCopyWithImpl(
      _$AppliedToModelImpl _value, $Res Function(_$AppliedToModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeNumber = null,
    Object? employeeFirstName = null,
    Object? employeelastName = null,
  }) {
    return _then(_$AppliedToModelImpl(
      employeeNumber: null == employeeNumber
          ? _value.employeeNumber
          : employeeNumber // ignore: cast_nullable_to_non_nullable
              as String,
      employeeFirstName: null == employeeFirstName
          ? _value.employeeFirstName
          : employeeFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      employeelastName: null == employeelastName
          ? _value.employeelastName
          : employeelastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppliedToModelImpl implements _AppliedToModel {
  const _$AppliedToModelImpl(
      {@JsonKey(name: "emp_number") this.employeeNumber = "",
      @JsonKey(name: "emp_first_name") this.employeeFirstName = "",
      @JsonKey(name: "emp_last_name") this.employeelastName = ""});

  factory _$AppliedToModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppliedToModelImplFromJson(json);

  @override
  @JsonKey(name: "emp_number")
  final String employeeNumber;
  @override
  @JsonKey(name: "emp_first_name")
  final String employeeFirstName;
  @override
  @JsonKey(name: "emp_last_name")
  final String employeelastName;

  @override
  String toString() {
    return 'AppliedToModel(employeeNumber: $employeeNumber, employeeFirstName: $employeeFirstName, employeelastName: $employeelastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppliedToModelImpl &&
            (identical(other.employeeNumber, employeeNumber) ||
                other.employeeNumber == employeeNumber) &&
            (identical(other.employeeFirstName, employeeFirstName) ||
                other.employeeFirstName == employeeFirstName) &&
            (identical(other.employeelastName, employeelastName) ||
                other.employeelastName == employeelastName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, employeeNumber, employeeFirstName, employeelastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppliedToModelImplCopyWith<_$AppliedToModelImpl> get copyWith =>
      __$$AppliedToModelImplCopyWithImpl<_$AppliedToModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppliedToModelImplToJson(
      this,
    );
  }
}

abstract class _AppliedToModel implements AppliedToModel {
  const factory _AppliedToModel(
          {@JsonKey(name: "emp_number") final String employeeNumber,
          @JsonKey(name: "emp_first_name") final String employeeFirstName,
          @JsonKey(name: "emp_last_name") final String employeelastName}) =
      _$AppliedToModelImpl;

  factory _AppliedToModel.fromJson(Map<String, dynamic> json) =
      _$AppliedToModelImpl.fromJson;

  @override
  @JsonKey(name: "emp_number")
  String get employeeNumber;
  @override
  @JsonKey(name: "emp_first_name")
  String get employeeFirstName;
  @override
  @JsonKey(name: "emp_last_name")
  String get employeelastName;
  @override
  @JsonKey(ignore: true)
  _$$AppliedToModelImplCopyWith<_$AppliedToModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
