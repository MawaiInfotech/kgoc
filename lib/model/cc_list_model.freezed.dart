// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cc_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CClistModel _$CClistModelFromJson(Map<String, dynamic> json) {
  return _CClistModel.fromJson(json);
}

/// @nodoc
mixin _$CClistModel {
  @JsonKey(name: "emp_number")
  String get employeeCode => throw _privateConstructorUsedError;
  @JsonKey(name: "emp_last_name")
  String get employeeLatsName => throw _privateConstructorUsedError;
  @JsonKey(name: "emp_first_name")
  String get employeeFirstName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CClistModelCopyWith<CClistModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CClistModelCopyWith<$Res> {
  factory $CClistModelCopyWith(
          CClistModel value, $Res Function(CClistModel) then) =
      _$CClistModelCopyWithImpl<$Res, CClistModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "emp_number") String employeeCode,
      @JsonKey(name: "emp_last_name") String employeeLatsName,
      @JsonKey(name: "emp_first_name") String employeeFirstName});
}

/// @nodoc
class _$CClistModelCopyWithImpl<$Res, $Val extends CClistModel>
    implements $CClistModelCopyWith<$Res> {
  _$CClistModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeCode = null,
    Object? employeeLatsName = null,
    Object? employeeFirstName = null,
  }) {
    return _then(_value.copyWith(
      employeeCode: null == employeeCode
          ? _value.employeeCode
          : employeeCode // ignore: cast_nullable_to_non_nullable
              as String,
      employeeLatsName: null == employeeLatsName
          ? _value.employeeLatsName
          : employeeLatsName // ignore: cast_nullable_to_non_nullable
              as String,
      employeeFirstName: null == employeeFirstName
          ? _value.employeeFirstName
          : employeeFirstName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CClistModelImplCopyWith<$Res>
    implements $CClistModelCopyWith<$Res> {
  factory _$$CClistModelImplCopyWith(
          _$CClistModelImpl value, $Res Function(_$CClistModelImpl) then) =
      __$$CClistModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "emp_number") String employeeCode,
      @JsonKey(name: "emp_last_name") String employeeLatsName,
      @JsonKey(name: "emp_first_name") String employeeFirstName});
}

/// @nodoc
class __$$CClistModelImplCopyWithImpl<$Res>
    extends _$CClistModelCopyWithImpl<$Res, _$CClistModelImpl>
    implements _$$CClistModelImplCopyWith<$Res> {
  __$$CClistModelImplCopyWithImpl(
      _$CClistModelImpl _value, $Res Function(_$CClistModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeCode = null,
    Object? employeeLatsName = null,
    Object? employeeFirstName = null,
  }) {
    return _then(_$CClistModelImpl(
      employeeCode: null == employeeCode
          ? _value.employeeCode
          : employeeCode // ignore: cast_nullable_to_non_nullable
              as String,
      employeeLatsName: null == employeeLatsName
          ? _value.employeeLatsName
          : employeeLatsName // ignore: cast_nullable_to_non_nullable
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
class _$CClistModelImpl implements _CClistModel {
  const _$CClistModelImpl(
      {@JsonKey(name: "emp_number") this.employeeCode = "",
      @JsonKey(name: "emp_last_name") this.employeeLatsName = "",
      @JsonKey(name: "emp_first_name") this.employeeFirstName = ""});

  factory _$CClistModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CClistModelImplFromJson(json);

  @override
  @JsonKey(name: "emp_number")
  final String employeeCode;
  @override
  @JsonKey(name: "emp_last_name")
  final String employeeLatsName;
  @override
  @JsonKey(name: "emp_first_name")
  final String employeeFirstName;

  @override
  String toString() {
    return 'CClistModel(employeeCode: $employeeCode, employeeLatsName: $employeeLatsName, employeeFirstName: $employeeFirstName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CClistModelImpl &&
            (identical(other.employeeCode, employeeCode) ||
                other.employeeCode == employeeCode) &&
            (identical(other.employeeLatsName, employeeLatsName) ||
                other.employeeLatsName == employeeLatsName) &&
            (identical(other.employeeFirstName, employeeFirstName) ||
                other.employeeFirstName == employeeFirstName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, employeeCode, employeeLatsName, employeeFirstName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CClistModelImplCopyWith<_$CClistModelImpl> get copyWith =>
      __$$CClistModelImplCopyWithImpl<_$CClistModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CClistModelImplToJson(
      this,
    );
  }
}

abstract class _CClistModel implements CClistModel {
  const factory _CClistModel(
          {@JsonKey(name: "emp_number") final String employeeCode,
          @JsonKey(name: "emp_last_name") final String employeeLatsName,
          @JsonKey(name: "emp_first_name") final String employeeFirstName}) =
      _$CClistModelImpl;

  factory _CClistModel.fromJson(Map<String, dynamic> json) =
      _$CClistModelImpl.fromJson;

  @override
  @JsonKey(name: "emp_number")
  String get employeeCode;
  @override
  @JsonKey(name: "emp_last_name")
  String get employeeLatsName;
  @override
  @JsonKey(name: "emp_first_name")
  String get employeeFirstName;
  @override
  @JsonKey(ignore: true)
  _$$CClistModelImplCopyWith<_$CClistModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
