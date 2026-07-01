// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employeeleavetype_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmployeeLeavetypeModel _$EmployeeLeavetypeModelFromJson(
    Map<String, dynamic> json) {
  return _EmployeeLeavetypeModel.fromJson(json);
}

/// @nodoc
mixin _$EmployeeLeavetypeModel {
  @JsonKey(name: "balance_leave")
  double get balanceLeave => throw _privateConstructorUsedError;
  @JsonKey(name: "leave_taken")
  double get leaveTaken => throw _privateConstructorUsedError;
  List<EmployeeLeaveModel> get emp_leave_list =>
      throw _privateConstructorUsedError;
  List<EmployeeleaveListModel> get leave_list =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeLeavetypeModelCopyWith<EmployeeLeavetypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeLeavetypeModelCopyWith<$Res> {
  factory $EmployeeLeavetypeModelCopyWith(EmployeeLeavetypeModel value,
          $Res Function(EmployeeLeavetypeModel) then) =
      _$EmployeeLeavetypeModelCopyWithImpl<$Res, EmployeeLeavetypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "balance_leave") double balanceLeave,
      @JsonKey(name: "leave_taken") double leaveTaken,
      List<EmployeeLeaveModel> emp_leave_list,
      List<EmployeeleaveListModel> leave_list});
}

/// @nodoc
class _$EmployeeLeavetypeModelCopyWithImpl<$Res,
        $Val extends EmployeeLeavetypeModel>
    implements $EmployeeLeavetypeModelCopyWith<$Res> {
  _$EmployeeLeavetypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balanceLeave = null,
    Object? leaveTaken = null,
    Object? emp_leave_list = null,
    Object? leave_list = null,
  }) {
    return _then(_value.copyWith(
      balanceLeave: null == balanceLeave
          ? _value.balanceLeave
          : balanceLeave // ignore: cast_nullable_to_non_nullable
              as double,
      leaveTaken: null == leaveTaken
          ? _value.leaveTaken
          : leaveTaken // ignore: cast_nullable_to_non_nullable
              as double,
      emp_leave_list: null == emp_leave_list
          ? _value.emp_leave_list
          : emp_leave_list // ignore: cast_nullable_to_non_nullable
              as List<EmployeeLeaveModel>,
      leave_list: null == leave_list
          ? _value.leave_list
          : leave_list // ignore: cast_nullable_to_non_nullable
              as List<EmployeeleaveListModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeeLeavetypeModelImplCopyWith<$Res>
    implements $EmployeeLeavetypeModelCopyWith<$Res> {
  factory _$$EmployeeLeavetypeModelImplCopyWith(
          _$EmployeeLeavetypeModelImpl value,
          $Res Function(_$EmployeeLeavetypeModelImpl) then) =
      __$$EmployeeLeavetypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "balance_leave") double balanceLeave,
      @JsonKey(name: "leave_taken") double leaveTaken,
      List<EmployeeLeaveModel> emp_leave_list,
      List<EmployeeleaveListModel> leave_list});
}

/// @nodoc
class __$$EmployeeLeavetypeModelImplCopyWithImpl<$Res>
    extends _$EmployeeLeavetypeModelCopyWithImpl<$Res,
        _$EmployeeLeavetypeModelImpl>
    implements _$$EmployeeLeavetypeModelImplCopyWith<$Res> {
  __$$EmployeeLeavetypeModelImplCopyWithImpl(
      _$EmployeeLeavetypeModelImpl _value,
      $Res Function(_$EmployeeLeavetypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balanceLeave = null,
    Object? leaveTaken = null,
    Object? emp_leave_list = null,
    Object? leave_list = null,
  }) {
    return _then(_$EmployeeLeavetypeModelImpl(
      balanceLeave: null == balanceLeave
          ? _value.balanceLeave
          : balanceLeave // ignore: cast_nullable_to_non_nullable
              as double,
      leaveTaken: null == leaveTaken
          ? _value.leaveTaken
          : leaveTaken // ignore: cast_nullable_to_non_nullable
              as double,
      emp_leave_list: null == emp_leave_list
          ? _value._emp_leave_list
          : emp_leave_list // ignore: cast_nullable_to_non_nullable
              as List<EmployeeLeaveModel>,
      leave_list: null == leave_list
          ? _value._leave_list
          : leave_list // ignore: cast_nullable_to_non_nullable
              as List<EmployeeleaveListModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeeLeavetypeModelImpl implements _EmployeeLeavetypeModel {
  const _$EmployeeLeavetypeModelImpl(
      {@JsonKey(name: "balance_leave") this.balanceLeave = 0.0,
      @JsonKey(name: "leave_taken") this.leaveTaken = 0.0,
      final List<EmployeeLeaveModel> emp_leave_list =
          const <EmployeeLeaveModel>[],
      final List<EmployeeleaveListModel> leave_list =
          const <EmployeeleaveListModel>[]})
      : _emp_leave_list = emp_leave_list,
        _leave_list = leave_list;

  factory _$EmployeeLeavetypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeLeavetypeModelImplFromJson(json);

  @override
  @JsonKey(name: "balance_leave")
  final double balanceLeave;
  @override
  @JsonKey(name: "leave_taken")
  final double leaveTaken;
  final List<EmployeeLeaveModel> _emp_leave_list;
  @override
  @JsonKey()
  List<EmployeeLeaveModel> get emp_leave_list {
    if (_emp_leave_list is EqualUnmodifiableListView) return _emp_leave_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emp_leave_list);
  }

  final List<EmployeeleaveListModel> _leave_list;
  @override
  @JsonKey()
  List<EmployeeleaveListModel> get leave_list {
    if (_leave_list is EqualUnmodifiableListView) return _leave_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leave_list);
  }

  @override
  String toString() {
    return 'EmployeeLeavetypeModel(balanceLeave: $balanceLeave, leaveTaken: $leaveTaken, emp_leave_list: $emp_leave_list, leave_list: $leave_list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeLeavetypeModelImpl &&
            (identical(other.balanceLeave, balanceLeave) ||
                other.balanceLeave == balanceLeave) &&
            (identical(other.leaveTaken, leaveTaken) ||
                other.leaveTaken == leaveTaken) &&
            const DeepCollectionEquality()
                .equals(other._emp_leave_list, _emp_leave_list) &&
            const DeepCollectionEquality()
                .equals(other._leave_list, _leave_list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      balanceLeave,
      leaveTaken,
      const DeepCollectionEquality().hash(_emp_leave_list),
      const DeepCollectionEquality().hash(_leave_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeLeavetypeModelImplCopyWith<_$EmployeeLeavetypeModelImpl>
      get copyWith => __$$EmployeeLeavetypeModelImplCopyWithImpl<
          _$EmployeeLeavetypeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeLeavetypeModelImplToJson(
      this,
    );
  }
}

abstract class _EmployeeLeavetypeModel implements EmployeeLeavetypeModel {
  const factory _EmployeeLeavetypeModel(
          {@JsonKey(name: "balance_leave") final double balanceLeave,
          @JsonKey(name: "leave_taken") final double leaveTaken,
          final List<EmployeeLeaveModel> emp_leave_list,
          final List<EmployeeleaveListModel> leave_list}) =
      _$EmployeeLeavetypeModelImpl;

  factory _EmployeeLeavetypeModel.fromJson(Map<String, dynamic> json) =
      _$EmployeeLeavetypeModelImpl.fromJson;

  @override
  @JsonKey(name: "balance_leave")
  double get balanceLeave;
  @override
  @JsonKey(name: "leave_taken")
  double get leaveTaken;
  @override
  List<EmployeeLeaveModel> get emp_leave_list;
  @override
  List<EmployeeleaveListModel> get leave_list;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeLeavetypeModelImplCopyWith<_$EmployeeLeavetypeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
