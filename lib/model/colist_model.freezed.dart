// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'colist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoListModel _$CoListModelFromJson(Map<String, dynamic> json) {
  return _CoListModel.fromJson(json);
}

/// @nodoc
mixin _$CoListModel {
  @JsonKey(name: "empmemb_emp_master_emp_number")
  String get employeeCode => throw _privateConstructorUsedError;
  @JsonKey(name: "holiday")
  String get holiday => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "holiday_type")
  String get holidayType => throw _privateConstructorUsedError;
  @JsonKey(name: "tot_time")
  String get totalTime => throw _privateConstructorUsedError;
  @JsonKey(name: "attend_day")
  String get attendaDay => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_cd")
  String get unitCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoListModelCopyWith<CoListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoListModelCopyWith<$Res> {
  factory $CoListModelCopyWith(
          CoListModel value, $Res Function(CoListModel) then) =
      _$CoListModelCopyWithImpl<$Res, CoListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "empmemb_emp_master_emp_number") String employeeCode,
      @JsonKey(name: "holiday") String holiday,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "holiday_type") String holidayType,
      @JsonKey(name: "tot_time") String totalTime,
      @JsonKey(name: "attend_day") String attendaDay,
      @JsonKey(name: "unit_cd") String unitCode});
}

/// @nodoc
class _$CoListModelCopyWithImpl<$Res, $Val extends CoListModel>
    implements $CoListModelCopyWith<$Res> {
  _$CoListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeCode = null,
    Object? holiday = null,
    Object? description = null,
    Object? holidayType = null,
    Object? totalTime = null,
    Object? attendaDay = null,
    Object? unitCode = null,
  }) {
    return _then(_value.copyWith(
      employeeCode: null == employeeCode
          ? _value.employeeCode
          : employeeCode // ignore: cast_nullable_to_non_nullable
              as String,
      holiday: null == holiday
          ? _value.holiday
          : holiday // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      holidayType: null == holidayType
          ? _value.holidayType
          : holidayType // ignore: cast_nullable_to_non_nullable
              as String,
      totalTime: null == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as String,
      attendaDay: null == attendaDay
          ? _value.attendaDay
          : attendaDay // ignore: cast_nullable_to_non_nullable
              as String,
      unitCode: null == unitCode
          ? _value.unitCode
          : unitCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoListModelImplCopyWith<$Res>
    implements $CoListModelCopyWith<$Res> {
  factory _$$CoListModelImplCopyWith(
          _$CoListModelImpl value, $Res Function(_$CoListModelImpl) then) =
      __$$CoListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "empmemb_emp_master_emp_number") String employeeCode,
      @JsonKey(name: "holiday") String holiday,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "holiday_type") String holidayType,
      @JsonKey(name: "tot_time") String totalTime,
      @JsonKey(name: "attend_day") String attendaDay,
      @JsonKey(name: "unit_cd") String unitCode});
}

/// @nodoc
class __$$CoListModelImplCopyWithImpl<$Res>
    extends _$CoListModelCopyWithImpl<$Res, _$CoListModelImpl>
    implements _$$CoListModelImplCopyWith<$Res> {
  __$$CoListModelImplCopyWithImpl(
      _$CoListModelImpl _value, $Res Function(_$CoListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeCode = null,
    Object? holiday = null,
    Object? description = null,
    Object? holidayType = null,
    Object? totalTime = null,
    Object? attendaDay = null,
    Object? unitCode = null,
  }) {
    return _then(_$CoListModelImpl(
      employeeCode: null == employeeCode
          ? _value.employeeCode
          : employeeCode // ignore: cast_nullable_to_non_nullable
              as String,
      holiday: null == holiday
          ? _value.holiday
          : holiday // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      holidayType: null == holidayType
          ? _value.holidayType
          : holidayType // ignore: cast_nullable_to_non_nullable
              as String,
      totalTime: null == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as String,
      attendaDay: null == attendaDay
          ? _value.attendaDay
          : attendaDay // ignore: cast_nullable_to_non_nullable
              as String,
      unitCode: null == unitCode
          ? _value.unitCode
          : unitCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoListModelImpl implements _CoListModel {
  const _$CoListModelImpl(
      {@JsonKey(name: "empmemb_emp_master_emp_number") this.employeeCode = "",
      @JsonKey(name: "holiday") this.holiday = "",
      @JsonKey(name: "description") this.description = "",
      @JsonKey(name: "holiday_type") this.holidayType = "",
      @JsonKey(name: "tot_time") this.totalTime = "",
      @JsonKey(name: "attend_day") this.attendaDay = "",
      @JsonKey(name: "unit_cd") this.unitCode = ""});

  factory _$CoListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoListModelImplFromJson(json);

  @override
  @JsonKey(name: "empmemb_emp_master_emp_number")
  final String employeeCode;
  @override
  @JsonKey(name: "holiday")
  final String holiday;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "holiday_type")
  final String holidayType;
  @override
  @JsonKey(name: "tot_time")
  final String totalTime;
  @override
  @JsonKey(name: "attend_day")
  final String attendaDay;
  @override
  @JsonKey(name: "unit_cd")
  final String unitCode;

  @override
  String toString() {
    return 'CoListModel(employeeCode: $employeeCode, holiday: $holiday, description: $description, holidayType: $holidayType, totalTime: $totalTime, attendaDay: $attendaDay, unitCode: $unitCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoListModelImpl &&
            (identical(other.employeeCode, employeeCode) ||
                other.employeeCode == employeeCode) &&
            (identical(other.holiday, holiday) || other.holiday == holiday) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.holidayType, holidayType) ||
                other.holidayType == holidayType) &&
            (identical(other.totalTime, totalTime) ||
                other.totalTime == totalTime) &&
            (identical(other.attendaDay, attendaDay) ||
                other.attendaDay == attendaDay) &&
            (identical(other.unitCode, unitCode) ||
                other.unitCode == unitCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, employeeCode, holiday,
      description, holidayType, totalTime, attendaDay, unitCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoListModelImplCopyWith<_$CoListModelImpl> get copyWith =>
      __$$CoListModelImplCopyWithImpl<_$CoListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoListModelImplToJson(
      this,
    );
  }
}

abstract class _CoListModel implements CoListModel {
  const factory _CoListModel(
      {@JsonKey(name: "empmemb_emp_master_emp_number")
      final String employeeCode,
      @JsonKey(name: "holiday") final String holiday,
      @JsonKey(name: "description") final String description,
      @JsonKey(name: "holiday_type") final String holidayType,
      @JsonKey(name: "tot_time") final String totalTime,
      @JsonKey(name: "attend_day") final String attendaDay,
      @JsonKey(name: "unit_cd") final String unitCode}) = _$CoListModelImpl;

  factory _CoListModel.fromJson(Map<String, dynamic> json) =
      _$CoListModelImpl.fromJson;

  @override
  @JsonKey(name: "empmemb_emp_master_emp_number")
  String get employeeCode;
  @override
  @JsonKey(name: "holiday")
  String get holiday;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "holiday_type")
  String get holidayType;
  @override
  @JsonKey(name: "tot_time")
  String get totalTime;
  @override
  @JsonKey(name: "attend_day")
  String get attendaDay;
  @override
  @JsonKey(name: "unit_cd")
  String get unitCode;
  @override
  @JsonKey(ignore: true)
  _$$CoListModelImplCopyWith<_$CoListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
