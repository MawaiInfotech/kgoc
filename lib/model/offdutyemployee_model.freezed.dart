// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offdutyemployee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OffdutyEmployeeModel _$OffdutyEmployeeModelFromJson(Map<String, dynamic> json) {
  return _OffdutyEmployeeModel.fromJson(json);
}

/// @nodoc
mixin _$OffdutyEmployeeModel {
  @JsonKey(name: "emp_number")
  String get employeeNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "emp_first_name")
  String get employeeFirstName => throw _privateConstructorUsedError;
  @JsonKey(name: "emp_last_name")
  String get employeeLastName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OffdutyEmployeeModelCopyWith<OffdutyEmployeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffdutyEmployeeModelCopyWith<$Res> {
  factory $OffdutyEmployeeModelCopyWith(OffdutyEmployeeModel value,
          $Res Function(OffdutyEmployeeModel) then) =
      _$OffdutyEmployeeModelCopyWithImpl<$Res, OffdutyEmployeeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "emp_number") String employeeNumber,
      @JsonKey(name: "emp_first_name") String employeeFirstName,
      @JsonKey(name: "emp_last_name") String employeeLastName});
}

/// @nodoc
class _$OffdutyEmployeeModelCopyWithImpl<$Res,
        $Val extends OffdutyEmployeeModel>
    implements $OffdutyEmployeeModelCopyWith<$Res> {
  _$OffdutyEmployeeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeNumber = null,
    Object? employeeFirstName = null,
    Object? employeeLastName = null,
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
      employeeLastName: null == employeeLastName
          ? _value.employeeLastName
          : employeeLastName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OffdutyEmployeeModelImplCopyWith<$Res>
    implements $OffdutyEmployeeModelCopyWith<$Res> {
  factory _$$OffdutyEmployeeModelImplCopyWith(_$OffdutyEmployeeModelImpl value,
          $Res Function(_$OffdutyEmployeeModelImpl) then) =
      __$$OffdutyEmployeeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "emp_number") String employeeNumber,
      @JsonKey(name: "emp_first_name") String employeeFirstName,
      @JsonKey(name: "emp_last_name") String employeeLastName});
}

/// @nodoc
class __$$OffdutyEmployeeModelImplCopyWithImpl<$Res>
    extends _$OffdutyEmployeeModelCopyWithImpl<$Res, _$OffdutyEmployeeModelImpl>
    implements _$$OffdutyEmployeeModelImplCopyWith<$Res> {
  __$$OffdutyEmployeeModelImplCopyWithImpl(_$OffdutyEmployeeModelImpl _value,
      $Res Function(_$OffdutyEmployeeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeNumber = null,
    Object? employeeFirstName = null,
    Object? employeeLastName = null,
  }) {
    return _then(_$OffdutyEmployeeModelImpl(
      employeeNumber: null == employeeNumber
          ? _value.employeeNumber
          : employeeNumber // ignore: cast_nullable_to_non_nullable
              as String,
      employeeFirstName: null == employeeFirstName
          ? _value.employeeFirstName
          : employeeFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      employeeLastName: null == employeeLastName
          ? _value.employeeLastName
          : employeeLastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OffdutyEmployeeModelImpl implements _OffdutyEmployeeModel {
  const _$OffdutyEmployeeModelImpl(
      {@JsonKey(name: "emp_number") this.employeeNumber = "",
      @JsonKey(name: "emp_first_name") this.employeeFirstName = "",
      @JsonKey(name: "emp_last_name") this.employeeLastName = ""});

  factory _$OffdutyEmployeeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffdutyEmployeeModelImplFromJson(json);

  @override
  @JsonKey(name: "emp_number")
  final String employeeNumber;
  @override
  @JsonKey(name: "emp_first_name")
  final String employeeFirstName;
  @override
  @JsonKey(name: "emp_last_name")
  final String employeeLastName;

  @override
  String toString() {
    return 'OffdutyEmployeeModel(employeeNumber: $employeeNumber, employeeFirstName: $employeeFirstName, employeeLastName: $employeeLastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffdutyEmployeeModelImpl &&
            (identical(other.employeeNumber, employeeNumber) ||
                other.employeeNumber == employeeNumber) &&
            (identical(other.employeeFirstName, employeeFirstName) ||
                other.employeeFirstName == employeeFirstName) &&
            (identical(other.employeeLastName, employeeLastName) ||
                other.employeeLastName == employeeLastName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, employeeNumber, employeeFirstName, employeeLastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OffdutyEmployeeModelImplCopyWith<_$OffdutyEmployeeModelImpl>
      get copyWith =>
          __$$OffdutyEmployeeModelImplCopyWithImpl<_$OffdutyEmployeeModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OffdutyEmployeeModelImplToJson(
      this,
    );
  }
}

abstract class _OffdutyEmployeeModel implements OffdutyEmployeeModel {
  const factory _OffdutyEmployeeModel(
          {@JsonKey(name: "emp_number") final String employeeNumber,
          @JsonKey(name: "emp_first_name") final String employeeFirstName,
          @JsonKey(name: "emp_last_name") final String employeeLastName}) =
      _$OffdutyEmployeeModelImpl;

  factory _OffdutyEmployeeModel.fromJson(Map<String, dynamic> json) =
      _$OffdutyEmployeeModelImpl.fromJson;

  @override
  @JsonKey(name: "emp_number")
  String get employeeNumber;
  @override
  @JsonKey(name: "emp_first_name")
  String get employeeFirstName;
  @override
  @JsonKey(name: "emp_last_name")
  String get employeeLastName;
  @override
  @JsonKey(ignore: true)
  _$$OffdutyEmployeeModelImplCopyWith<_$OffdutyEmployeeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
