// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teamattendance_supp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamAttendanceSuppModel _$TeamAttendanceSuppModelFromJson(
    Map<String, dynamic> json) {
  return _TeamAttendanceSuppModel.fromJson(json);
}

/// @nodoc
mixin _$TeamAttendanceSuppModel {
  List<TeamAttendanceModel> get team_atten =>
      throw _privateConstructorUsedError;
  List<TeamEmployeeListModel> get employee =>
      throw _privateConstructorUsedError;
  List<String> get month => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamAttendanceSuppModelCopyWith<TeamAttendanceSuppModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamAttendanceSuppModelCopyWith<$Res> {
  factory $TeamAttendanceSuppModelCopyWith(TeamAttendanceSuppModel value,
          $Res Function(TeamAttendanceSuppModel) then) =
      _$TeamAttendanceSuppModelCopyWithImpl<$Res, TeamAttendanceSuppModel>;
  @useResult
  $Res call(
      {List<TeamAttendanceModel> team_atten,
      List<TeamEmployeeListModel> employee,
      List<String> month});
}

/// @nodoc
class _$TeamAttendanceSuppModelCopyWithImpl<$Res,
        $Val extends TeamAttendanceSuppModel>
    implements $TeamAttendanceSuppModelCopyWith<$Res> {
  _$TeamAttendanceSuppModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team_atten = null,
    Object? employee = null,
    Object? month = null,
  }) {
    return _then(_value.copyWith(
      team_atten: null == team_atten
          ? _value.team_atten
          : team_atten // ignore: cast_nullable_to_non_nullable
              as List<TeamAttendanceModel>,
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as List<TeamEmployeeListModel>,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeamAttendanceSuppModelImplCopyWith<$Res>
    implements $TeamAttendanceSuppModelCopyWith<$Res> {
  factory _$$TeamAttendanceSuppModelImplCopyWith(
          _$TeamAttendanceSuppModelImpl value,
          $Res Function(_$TeamAttendanceSuppModelImpl) then) =
      __$$TeamAttendanceSuppModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TeamAttendanceModel> team_atten,
      List<TeamEmployeeListModel> employee,
      List<String> month});
}

/// @nodoc
class __$$TeamAttendanceSuppModelImplCopyWithImpl<$Res>
    extends _$TeamAttendanceSuppModelCopyWithImpl<$Res,
        _$TeamAttendanceSuppModelImpl>
    implements _$$TeamAttendanceSuppModelImplCopyWith<$Res> {
  __$$TeamAttendanceSuppModelImplCopyWithImpl(
      _$TeamAttendanceSuppModelImpl _value,
      $Res Function(_$TeamAttendanceSuppModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team_atten = null,
    Object? employee = null,
    Object? month = null,
  }) {
    return _then(_$TeamAttendanceSuppModelImpl(
      team_atten: null == team_atten
          ? _value._team_atten
          : team_atten // ignore: cast_nullable_to_non_nullable
              as List<TeamAttendanceModel>,
      employee: null == employee
          ? _value._employee
          : employee // ignore: cast_nullable_to_non_nullable
              as List<TeamEmployeeListModel>,
      month: null == month
          ? _value._month
          : month // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamAttendanceSuppModelImpl implements _TeamAttendanceSuppModel {
  const _$TeamAttendanceSuppModelImpl(
      {final List<TeamAttendanceModel> team_atten =
          const <TeamAttendanceModel>[],
      final List<TeamEmployeeListModel> employee =
          const <TeamEmployeeListModel>[],
      final List<String> month = const <String>[]})
      : _team_atten = team_atten,
        _employee = employee,
        _month = month;

  factory _$TeamAttendanceSuppModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamAttendanceSuppModelImplFromJson(json);

  final List<TeamAttendanceModel> _team_atten;
  @override
  @JsonKey()
  List<TeamAttendanceModel> get team_atten {
    if (_team_atten is EqualUnmodifiableListView) return _team_atten;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_team_atten);
  }

  final List<TeamEmployeeListModel> _employee;
  @override
  @JsonKey()
  List<TeamEmployeeListModel> get employee {
    if (_employee is EqualUnmodifiableListView) return _employee;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employee);
  }

  final List<String> _month;
  @override
  @JsonKey()
  List<String> get month {
    if (_month is EqualUnmodifiableListView) return _month;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_month);
  }

  @override
  String toString() {
    return 'TeamAttendanceSuppModel(team_atten: $team_atten, employee: $employee, month: $month)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamAttendanceSuppModelImpl &&
            const DeepCollectionEquality()
                .equals(other._team_atten, _team_atten) &&
            const DeepCollectionEquality().equals(other._employee, _employee) &&
            const DeepCollectionEquality().equals(other._month, _month));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_team_atten),
      const DeepCollectionEquality().hash(_employee),
      const DeepCollectionEquality().hash(_month));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamAttendanceSuppModelImplCopyWith<_$TeamAttendanceSuppModelImpl>
      get copyWith => __$$TeamAttendanceSuppModelImplCopyWithImpl<
          _$TeamAttendanceSuppModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamAttendanceSuppModelImplToJson(
      this,
    );
  }
}

abstract class _TeamAttendanceSuppModel implements TeamAttendanceSuppModel {
  const factory _TeamAttendanceSuppModel(
      {final List<TeamAttendanceModel> team_atten,
      final List<TeamEmployeeListModel> employee,
      final List<String> month}) = _$TeamAttendanceSuppModelImpl;

  factory _TeamAttendanceSuppModel.fromJson(Map<String, dynamic> json) =
      _$TeamAttendanceSuppModelImpl.fromJson;

  @override
  List<TeamAttendanceModel> get team_atten;
  @override
  List<TeamEmployeeListModel> get employee;
  @override
  List<String> get month;
  @override
  @JsonKey(ignore: true)
  _$$TeamAttendanceSuppModelImplCopyWith<_$TeamAttendanceSuppModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
