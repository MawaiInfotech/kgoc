// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_leave_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmployeeLeaveModel _$EmployeeLeaveModelFromJson(Map<String, dynamic> json) {
  return _EmployeeLeaveModel.fromJson(json);
}

/// @nodoc
mixin _$EmployeeLeaveModel {
  @JsonKey(name: "leave_total")
  double get leaveTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "leave_available")
  double get leaveAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: "leave_used")
  double get leaveUsed => throw _privateConstructorUsedError;
  @JsonKey(name: "leave_code")
  String get leaveCode => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeLeaveModelCopyWith<EmployeeLeaveModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeLeaveModelCopyWith<$Res> {
  factory $EmployeeLeaveModelCopyWith(
          EmployeeLeaveModel value, $Res Function(EmployeeLeaveModel) then) =
      _$EmployeeLeaveModelCopyWithImpl<$Res, EmployeeLeaveModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "leave_total") double leaveTotal,
      @JsonKey(name: "leave_available") double leaveAvailable,
      @JsonKey(name: "leave_used") double leaveUsed,
      @JsonKey(name: "leave_code") String leaveCode,
      @JsonKey(name: "description") String description});
}

/// @nodoc
class _$EmployeeLeaveModelCopyWithImpl<$Res, $Val extends EmployeeLeaveModel>
    implements $EmployeeLeaveModelCopyWith<$Res> {
  _$EmployeeLeaveModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaveTotal = null,
    Object? leaveAvailable = null,
    Object? leaveUsed = null,
    Object? leaveCode = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      leaveTotal: null == leaveTotal
          ? _value.leaveTotal
          : leaveTotal // ignore: cast_nullable_to_non_nullable
              as double,
      leaveAvailable: null == leaveAvailable
          ? _value.leaveAvailable
          : leaveAvailable // ignore: cast_nullable_to_non_nullable
              as double,
      leaveUsed: null == leaveUsed
          ? _value.leaveUsed
          : leaveUsed // ignore: cast_nullable_to_non_nullable
              as double,
      leaveCode: null == leaveCode
          ? _value.leaveCode
          : leaveCode // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeeLeaveModelImplCopyWith<$Res>
    implements $EmployeeLeaveModelCopyWith<$Res> {
  factory _$$EmployeeLeaveModelImplCopyWith(_$EmployeeLeaveModelImpl value,
          $Res Function(_$EmployeeLeaveModelImpl) then) =
      __$$EmployeeLeaveModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "leave_total") double leaveTotal,
      @JsonKey(name: "leave_available") double leaveAvailable,
      @JsonKey(name: "leave_used") double leaveUsed,
      @JsonKey(name: "leave_code") String leaveCode,
      @JsonKey(name: "description") String description});
}

/// @nodoc
class __$$EmployeeLeaveModelImplCopyWithImpl<$Res>
    extends _$EmployeeLeaveModelCopyWithImpl<$Res, _$EmployeeLeaveModelImpl>
    implements _$$EmployeeLeaveModelImplCopyWith<$Res> {
  __$$EmployeeLeaveModelImplCopyWithImpl(_$EmployeeLeaveModelImpl _value,
      $Res Function(_$EmployeeLeaveModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaveTotal = null,
    Object? leaveAvailable = null,
    Object? leaveUsed = null,
    Object? leaveCode = null,
    Object? description = null,
  }) {
    return _then(_$EmployeeLeaveModelImpl(
      leaveTotal: null == leaveTotal
          ? _value.leaveTotal
          : leaveTotal // ignore: cast_nullable_to_non_nullable
              as double,
      leaveAvailable: null == leaveAvailable
          ? _value.leaveAvailable
          : leaveAvailable // ignore: cast_nullable_to_non_nullable
              as double,
      leaveUsed: null == leaveUsed
          ? _value.leaveUsed
          : leaveUsed // ignore: cast_nullable_to_non_nullable
              as double,
      leaveCode: null == leaveCode
          ? _value.leaveCode
          : leaveCode // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeeLeaveModelImpl implements _EmployeeLeaveModel {
  const _$EmployeeLeaveModelImpl(
      {@JsonKey(name: "leave_total") this.leaveTotal = 0.0,
      @JsonKey(name: "leave_available") this.leaveAvailable = 0.0,
      @JsonKey(name: "leave_used") this.leaveUsed = 0.0,
      @JsonKey(name: "leave_code") this.leaveCode = "",
      @JsonKey(name: "description") this.description = ""});

  factory _$EmployeeLeaveModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeLeaveModelImplFromJson(json);

  @override
  @JsonKey(name: "leave_total")
  final double leaveTotal;
  @override
  @JsonKey(name: "leave_available")
  final double leaveAvailable;
  @override
  @JsonKey(name: "leave_used")
  final double leaveUsed;
  @override
  @JsonKey(name: "leave_code")
  final String leaveCode;
  @override
  @JsonKey(name: "description")
  final String description;

  @override
  String toString() {
    return 'EmployeeLeaveModel(leaveTotal: $leaveTotal, leaveAvailable: $leaveAvailable, leaveUsed: $leaveUsed, leaveCode: $leaveCode, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeLeaveModelImpl &&
            (identical(other.leaveTotal, leaveTotal) ||
                other.leaveTotal == leaveTotal) &&
            (identical(other.leaveAvailable, leaveAvailable) ||
                other.leaveAvailable == leaveAvailable) &&
            (identical(other.leaveUsed, leaveUsed) ||
                other.leaveUsed == leaveUsed) &&
            (identical(other.leaveCode, leaveCode) ||
                other.leaveCode == leaveCode) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, leaveTotal, leaveAvailable,
      leaveUsed, leaveCode, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeLeaveModelImplCopyWith<_$EmployeeLeaveModelImpl> get copyWith =>
      __$$EmployeeLeaveModelImplCopyWithImpl<_$EmployeeLeaveModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeLeaveModelImplToJson(
      this,
    );
  }
}

abstract class _EmployeeLeaveModel implements EmployeeLeaveModel {
  const factory _EmployeeLeaveModel(
          {@JsonKey(name: "leave_total") final double leaveTotal,
          @JsonKey(name: "leave_available") final double leaveAvailable,
          @JsonKey(name: "leave_used") final double leaveUsed,
          @JsonKey(name: "leave_code") final String leaveCode,
          @JsonKey(name: "description") final String description}) =
      _$EmployeeLeaveModelImpl;

  factory _EmployeeLeaveModel.fromJson(Map<String, dynamic> json) =
      _$EmployeeLeaveModelImpl.fromJson;

  @override
  @JsonKey(name: "leave_total")
  double get leaveTotal;
  @override
  @JsonKey(name: "leave_available")
  double get leaveAvailable;
  @override
  @JsonKey(name: "leave_used")
  double get leaveUsed;
  @override
  @JsonKey(name: "leave_code")
  String get leaveCode;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeLeaveModelImplCopyWith<_$EmployeeLeaveModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
