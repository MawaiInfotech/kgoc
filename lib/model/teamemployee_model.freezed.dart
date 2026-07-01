// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teamemployee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamEmployeeListModel _$TeamEmployeeListModelFromJson(
    Map<String, dynamic> json) {
  return _TeamEmployeeListModel.fromJson(json);
}

/// @nodoc
mixin _$TeamEmployeeListModel {
  @JsonKey(name: "emp_number")
  String get employeeNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamEmployeeListModelCopyWith<TeamEmployeeListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamEmployeeListModelCopyWith<$Res> {
  factory $TeamEmployeeListModelCopyWith(TeamEmployeeListModel value,
          $Res Function(TeamEmployeeListModel) then) =
      _$TeamEmployeeListModelCopyWithImpl<$Res, TeamEmployeeListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "emp_number") String employeeNumber,
      @JsonKey(name: "name") String name});
}

/// @nodoc
class _$TeamEmployeeListModelCopyWithImpl<$Res,
        $Val extends TeamEmployeeListModel>
    implements $TeamEmployeeListModelCopyWith<$Res> {
  _$TeamEmployeeListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeNumber = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      employeeNumber: null == employeeNumber
          ? _value.employeeNumber
          : employeeNumber // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamEmployeeListModelImplCopyWith<$Res>
    implements $TeamEmployeeListModelCopyWith<$Res> {
  factory _$$TeamEmployeeListModelImplCopyWith(
          _$TeamEmployeeListModelImpl value,
          $Res Function(_$TeamEmployeeListModelImpl) then) =
      __$$TeamEmployeeListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "emp_number") String employeeNumber,
      @JsonKey(name: "name") String name});
}

/// @nodoc
class __$$TeamEmployeeListModelImplCopyWithImpl<$Res>
    extends _$TeamEmployeeListModelCopyWithImpl<$Res,
        _$TeamEmployeeListModelImpl>
    implements _$$TeamEmployeeListModelImplCopyWith<$Res> {
  __$$TeamEmployeeListModelImplCopyWithImpl(_$TeamEmployeeListModelImpl _value,
      $Res Function(_$TeamEmployeeListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeNumber = null,
    Object? name = null,
  }) {
    return _then(_$TeamEmployeeListModelImpl(
      employeeNumber: null == employeeNumber
          ? _value.employeeNumber
          : employeeNumber // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamEmployeeListModelImpl implements _TeamEmployeeListModel {
  const _$TeamEmployeeListModelImpl(
      {@JsonKey(name: "emp_number") this.employeeNumber = "",
      @JsonKey(name: "name") this.name = ""});

  factory _$TeamEmployeeListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamEmployeeListModelImplFromJson(json);

  @override
  @JsonKey(name: "emp_number")
  final String employeeNumber;
  @override
  @JsonKey(name: "name")
  final String name;

  @override
  String toString() {
    return 'TeamEmployeeListModel(employeeNumber: $employeeNumber, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamEmployeeListModelImpl &&
            (identical(other.employeeNumber, employeeNumber) ||
                other.employeeNumber == employeeNumber) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, employeeNumber, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamEmployeeListModelImplCopyWith<_$TeamEmployeeListModelImpl>
      get copyWith => __$$TeamEmployeeListModelImplCopyWithImpl<
          _$TeamEmployeeListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamEmployeeListModelImplToJson(
      this,
    );
  }
}

abstract class _TeamEmployeeListModel implements TeamEmployeeListModel {
  const factory _TeamEmployeeListModel(
      {@JsonKey(name: "emp_number") final String employeeNumber,
      @JsonKey(name: "name") final String name}) = _$TeamEmployeeListModelImpl;

  factory _TeamEmployeeListModel.fromJson(Map<String, dynamic> json) =
      _$TeamEmployeeListModelImpl.fromJson;

  @override
  @JsonKey(name: "emp_number")
  String get employeeNumber;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$TeamEmployeeListModelImplCopyWith<_$TeamEmployeeListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
