// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wfhcclist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WfhCcListModel _$WfhCcListModelFromJson(Map<String, dynamic> json) {
  return _WfhCcListModel.fromJson(json);
}

/// @nodoc
mixin _$WfhCcListModel {
  @JsonKey(name: "emp_number")
  String get employeeCode => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WfhCcListModelCopyWith<WfhCcListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WfhCcListModelCopyWith<$Res> {
  factory $WfhCcListModelCopyWith(
          WfhCcListModel value, $Res Function(WfhCcListModel) then) =
      _$WfhCcListModelCopyWithImpl<$Res, WfhCcListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "emp_number") String employeeCode,
      @JsonKey(name: "name") String name});
}

/// @nodoc
class _$WfhCcListModelCopyWithImpl<$Res, $Val extends WfhCcListModel>
    implements $WfhCcListModelCopyWith<$Res> {
  _$WfhCcListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeCode = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      employeeCode: null == employeeCode
          ? _value.employeeCode
          : employeeCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WfhCcListModelImplCopyWith<$Res>
    implements $WfhCcListModelCopyWith<$Res> {
  factory _$$WfhCcListModelImplCopyWith(_$WfhCcListModelImpl value,
          $Res Function(_$WfhCcListModelImpl) then) =
      __$$WfhCcListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "emp_number") String employeeCode,
      @JsonKey(name: "name") String name});
}

/// @nodoc
class __$$WfhCcListModelImplCopyWithImpl<$Res>
    extends _$WfhCcListModelCopyWithImpl<$Res, _$WfhCcListModelImpl>
    implements _$$WfhCcListModelImplCopyWith<$Res> {
  __$$WfhCcListModelImplCopyWithImpl(
      _$WfhCcListModelImpl _value, $Res Function(_$WfhCcListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeCode = null,
    Object? name = null,
  }) {
    return _then(_$WfhCcListModelImpl(
      employeeCode: null == employeeCode
          ? _value.employeeCode
          : employeeCode // ignore: cast_nullable_to_non_nullable
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
class _$WfhCcListModelImpl implements _WfhCcListModel {
  const _$WfhCcListModelImpl(
      {@JsonKey(name: "emp_number") this.employeeCode = "",
      @JsonKey(name: "name") this.name = ""});

  factory _$WfhCcListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WfhCcListModelImplFromJson(json);

  @override
  @JsonKey(name: "emp_number")
  final String employeeCode;
  @override
  @JsonKey(name: "name")
  final String name;

  @override
  String toString() {
    return 'WfhCcListModel(employeeCode: $employeeCode, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WfhCcListModelImpl &&
            (identical(other.employeeCode, employeeCode) ||
                other.employeeCode == employeeCode) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, employeeCode, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WfhCcListModelImplCopyWith<_$WfhCcListModelImpl> get copyWith =>
      __$$WfhCcListModelImplCopyWithImpl<_$WfhCcListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WfhCcListModelImplToJson(
      this,
    );
  }
}

abstract class _WfhCcListModel implements WfhCcListModel {
  const factory _WfhCcListModel(
      {@JsonKey(name: "emp_number") final String employeeCode,
      @JsonKey(name: "name") final String name}) = _$WfhCcListModelImpl;

  factory _WfhCcListModel.fromJson(Map<String, dynamic> json) =
      _$WfhCcListModelImpl.fromJson;

  @override
  @JsonKey(name: "emp_number")
  String get employeeCode;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$WfhCcListModelImplCopyWith<_$WfhCcListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
