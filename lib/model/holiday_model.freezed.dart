// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'holiday_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HolidayModel _$HolidayModelFromJson(Map<String, dynamic> json) {
  return _HolidayModel.fromJson(json);
}

/// @nodoc
mixin _$HolidayModel {
  @JsonKey(name: "holiday_date")
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "holiday_type")
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "religion_type")
  String get religionType => throw _privateConstructorUsedError;
  @JsonKey(name: "day")
  String get day => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HolidayModelCopyWith<HolidayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HolidayModelCopyWith<$Res> {
  factory $HolidayModelCopyWith(
          HolidayModel value, $Res Function(HolidayModel) then) =
      _$HolidayModelCopyWithImpl<$Res, HolidayModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "holiday_date") String date,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "holiday_type") String type,
      @JsonKey(name: "religion_type") String religionType,
      @JsonKey(name: "day") String day});
}

/// @nodoc
class _$HolidayModelCopyWithImpl<$Res, $Val extends HolidayModel>
    implements $HolidayModelCopyWith<$Res> {
  _$HolidayModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? description = null,
    Object? type = null,
    Object? religionType = null,
    Object? day = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      religionType: null == religionType
          ? _value.religionType
          : religionType // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HolidayModelImplCopyWith<$Res>
    implements $HolidayModelCopyWith<$Res> {
  factory _$$HolidayModelImplCopyWith(
          _$HolidayModelImpl value, $Res Function(_$HolidayModelImpl) then) =
      __$$HolidayModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "holiday_date") String date,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "holiday_type") String type,
      @JsonKey(name: "religion_type") String religionType,
      @JsonKey(name: "day") String day});
}

/// @nodoc
class __$$HolidayModelImplCopyWithImpl<$Res>
    extends _$HolidayModelCopyWithImpl<$Res, _$HolidayModelImpl>
    implements _$$HolidayModelImplCopyWith<$Res> {
  __$$HolidayModelImplCopyWithImpl(
      _$HolidayModelImpl _value, $Res Function(_$HolidayModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? description = null,
    Object? type = null,
    Object? religionType = null,
    Object? day = null,
  }) {
    return _then(_$HolidayModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      religionType: null == religionType
          ? _value.religionType
          : religionType // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HolidayModelImpl implements _HolidayModel {
  const _$HolidayModelImpl(
      {@JsonKey(name: "holiday_date") this.date = "",
      @JsonKey(name: "description") this.description = "",
      @JsonKey(name: "holiday_type") this.type = "",
      @JsonKey(name: "religion_type") this.religionType = "",
      @JsonKey(name: "day") this.day = ""});

  factory _$HolidayModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HolidayModelImplFromJson(json);

  @override
  @JsonKey(name: "holiday_date")
  final String date;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "holiday_type")
  final String type;
  @override
  @JsonKey(name: "religion_type")
  final String religionType;
  @override
  @JsonKey(name: "day")
  final String day;

  @override
  String toString() {
    return 'HolidayModel(date: $date, description: $description, type: $type, religionType: $religionType, day: $day)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HolidayModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.religionType, religionType) ||
                other.religionType == religionType) &&
            (identical(other.day, day) || other.day == day));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, description, type, religionType, day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HolidayModelImplCopyWith<_$HolidayModelImpl> get copyWith =>
      __$$HolidayModelImplCopyWithImpl<_$HolidayModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HolidayModelImplToJson(
      this,
    );
  }
}

abstract class _HolidayModel implements HolidayModel {
  const factory _HolidayModel(
      {@JsonKey(name: "holiday_date") final String date,
      @JsonKey(name: "description") final String description,
      @JsonKey(name: "holiday_type") final String type,
      @JsonKey(name: "religion_type") final String religionType,
      @JsonKey(name: "day") final String day}) = _$HolidayModelImpl;

  factory _HolidayModel.fromJson(Map<String, dynamic> json) =
      _$HolidayModelImpl.fromJson;

  @override
  @JsonKey(name: "holiday_date")
  String get date;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "holiday_type")
  String get type;
  @override
  @JsonKey(name: "religion_type")
  String get religionType;
  @override
  @JsonKey(name: "day")
  String get day;
  @override
  @JsonKey(ignore: true)
  _$$HolidayModelImplCopyWith<_$HolidayModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
