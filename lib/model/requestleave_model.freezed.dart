// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'requestleave_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestLeaveModel _$RequestLeaveModelFromJson(Map<String, dynamic> json) {
  return _RequestLeaveModel.fromJson(json);
}

/// @nodoc
mixin _$RequestLeaveModel {
  List<LeavetypeModel> get leave_type => throw _privateConstructorUsedError;
  List<CClistModel> get cc_list => throw _privateConstructorUsedError;
  List<EmployeeDetailModel> get emp_dtl => throw _privateConstructorUsedError;
  List<LeavelistModel> get leave_list => throw _privateConstructorUsedError;
  List<ReportingtoModel> get reporting_to => throw _privateConstructorUsedError;
  List<CoListModel> get co_list => throw _privateConstructorUsedError;
  @JsonKey(name: "co_parameter")
  String get coParameter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestLeaveModelCopyWith<RequestLeaveModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestLeaveModelCopyWith<$Res> {
  factory $RequestLeaveModelCopyWith(
          RequestLeaveModel value, $Res Function(RequestLeaveModel) then) =
      _$RequestLeaveModelCopyWithImpl<$Res, RequestLeaveModel>;
  @useResult
  $Res call(
      {List<LeavetypeModel> leave_type,
      List<CClistModel> cc_list,
      List<EmployeeDetailModel> emp_dtl,
      List<LeavelistModel> leave_list,
      List<ReportingtoModel> reporting_to,
      List<CoListModel> co_list,
      @JsonKey(name: "co_parameter") String coParameter});
}

/// @nodoc
class _$RequestLeaveModelCopyWithImpl<$Res, $Val extends RequestLeaveModel>
    implements $RequestLeaveModelCopyWith<$Res> {
  _$RequestLeaveModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leave_type = null,
    Object? cc_list = null,
    Object? emp_dtl = null,
    Object? leave_list = null,
    Object? reporting_to = null,
    Object? co_list = null,
    Object? coParameter = null,
  }) {
    return _then(_value.copyWith(
      leave_type: null == leave_type
          ? _value.leave_type
          : leave_type // ignore: cast_nullable_to_non_nullable
              as List<LeavetypeModel>,
      cc_list: null == cc_list
          ? _value.cc_list
          : cc_list // ignore: cast_nullable_to_non_nullable
              as List<CClistModel>,
      emp_dtl: null == emp_dtl
          ? _value.emp_dtl
          : emp_dtl // ignore: cast_nullable_to_non_nullable
              as List<EmployeeDetailModel>,
      leave_list: null == leave_list
          ? _value.leave_list
          : leave_list // ignore: cast_nullable_to_non_nullable
              as List<LeavelistModel>,
      reporting_to: null == reporting_to
          ? _value.reporting_to
          : reporting_to // ignore: cast_nullable_to_non_nullable
              as List<ReportingtoModel>,
      co_list: null == co_list
          ? _value.co_list
          : co_list // ignore: cast_nullable_to_non_nullable
              as List<CoListModel>,
      coParameter: null == coParameter
          ? _value.coParameter
          : coParameter // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestLeaveModelImplCopyWith<$Res>
    implements $RequestLeaveModelCopyWith<$Res> {
  factory _$$RequestLeaveModelImplCopyWith(_$RequestLeaveModelImpl value,
          $Res Function(_$RequestLeaveModelImpl) then) =
      __$$RequestLeaveModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<LeavetypeModel> leave_type,
      List<CClistModel> cc_list,
      List<EmployeeDetailModel> emp_dtl,
      List<LeavelistModel> leave_list,
      List<ReportingtoModel> reporting_to,
      List<CoListModel> co_list,
      @JsonKey(name: "co_parameter") String coParameter});
}

/// @nodoc
class __$$RequestLeaveModelImplCopyWithImpl<$Res>
    extends _$RequestLeaveModelCopyWithImpl<$Res, _$RequestLeaveModelImpl>
    implements _$$RequestLeaveModelImplCopyWith<$Res> {
  __$$RequestLeaveModelImplCopyWithImpl(_$RequestLeaveModelImpl _value,
      $Res Function(_$RequestLeaveModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leave_type = null,
    Object? cc_list = null,
    Object? emp_dtl = null,
    Object? leave_list = null,
    Object? reporting_to = null,
    Object? co_list = null,
    Object? coParameter = null,
  }) {
    return _then(_$RequestLeaveModelImpl(
      leave_type: null == leave_type
          ? _value._leave_type
          : leave_type // ignore: cast_nullable_to_non_nullable
              as List<LeavetypeModel>,
      cc_list: null == cc_list
          ? _value._cc_list
          : cc_list // ignore: cast_nullable_to_non_nullable
              as List<CClistModel>,
      emp_dtl: null == emp_dtl
          ? _value._emp_dtl
          : emp_dtl // ignore: cast_nullable_to_non_nullable
              as List<EmployeeDetailModel>,
      leave_list: null == leave_list
          ? _value._leave_list
          : leave_list // ignore: cast_nullable_to_non_nullable
              as List<LeavelistModel>,
      reporting_to: null == reporting_to
          ? _value._reporting_to
          : reporting_to // ignore: cast_nullable_to_non_nullable
              as List<ReportingtoModel>,
      co_list: null == co_list
          ? _value._co_list
          : co_list // ignore: cast_nullable_to_non_nullable
              as List<CoListModel>,
      coParameter: null == coParameter
          ? _value.coParameter
          : coParameter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestLeaveModelImpl implements _RequestLeaveModel {
  const _$RequestLeaveModelImpl(
      {final List<LeavetypeModel> leave_type = const <LeavetypeModel>[],
      final List<CClistModel> cc_list = const <CClistModel>[],
      final List<EmployeeDetailModel> emp_dtl = const <EmployeeDetailModel>[],
      final List<LeavelistModel> leave_list = const <LeavelistModel>[],
      final List<ReportingtoModel> reporting_to = const <ReportingtoModel>[],
      final List<CoListModel> co_list = const <CoListModel>[],
      @JsonKey(name: "co_parameter") this.coParameter = ""})
      : _leave_type = leave_type,
        _cc_list = cc_list,
        _emp_dtl = emp_dtl,
        _leave_list = leave_list,
        _reporting_to = reporting_to,
        _co_list = co_list;

  factory _$RequestLeaveModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestLeaveModelImplFromJson(json);

  final List<LeavetypeModel> _leave_type;
  @override
  @JsonKey()
  List<LeavetypeModel> get leave_type {
    if (_leave_type is EqualUnmodifiableListView) return _leave_type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leave_type);
  }

  final List<CClistModel> _cc_list;
  @override
  @JsonKey()
  List<CClistModel> get cc_list {
    if (_cc_list is EqualUnmodifiableListView) return _cc_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cc_list);
  }

  final List<EmployeeDetailModel> _emp_dtl;
  @override
  @JsonKey()
  List<EmployeeDetailModel> get emp_dtl {
    if (_emp_dtl is EqualUnmodifiableListView) return _emp_dtl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emp_dtl);
  }

  final List<LeavelistModel> _leave_list;
  @override
  @JsonKey()
  List<LeavelistModel> get leave_list {
    if (_leave_list is EqualUnmodifiableListView) return _leave_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leave_list);
  }

  final List<ReportingtoModel> _reporting_to;
  @override
  @JsonKey()
  List<ReportingtoModel> get reporting_to {
    if (_reporting_to is EqualUnmodifiableListView) return _reporting_to;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reporting_to);
  }

  final List<CoListModel> _co_list;
  @override
  @JsonKey()
  List<CoListModel> get co_list {
    if (_co_list is EqualUnmodifiableListView) return _co_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_co_list);
  }

  @override
  @JsonKey(name: "co_parameter")
  final String coParameter;

  @override
  String toString() {
    return 'RequestLeaveModel(leave_type: $leave_type, cc_list: $cc_list, emp_dtl: $emp_dtl, leave_list: $leave_list, reporting_to: $reporting_to, co_list: $co_list, coParameter: $coParameter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestLeaveModelImpl &&
            const DeepCollectionEquality()
                .equals(other._leave_type, _leave_type) &&
            const DeepCollectionEquality().equals(other._cc_list, _cc_list) &&
            const DeepCollectionEquality().equals(other._emp_dtl, _emp_dtl) &&
            const DeepCollectionEquality()
                .equals(other._leave_list, _leave_list) &&
            const DeepCollectionEquality()
                .equals(other._reporting_to, _reporting_to) &&
            const DeepCollectionEquality().equals(other._co_list, _co_list) &&
            (identical(other.coParameter, coParameter) ||
                other.coParameter == coParameter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_leave_type),
      const DeepCollectionEquality().hash(_cc_list),
      const DeepCollectionEquality().hash(_emp_dtl),
      const DeepCollectionEquality().hash(_leave_list),
      const DeepCollectionEquality().hash(_reporting_to),
      const DeepCollectionEquality().hash(_co_list),
      coParameter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestLeaveModelImplCopyWith<_$RequestLeaveModelImpl> get copyWith =>
      __$$RequestLeaveModelImplCopyWithImpl<_$RequestLeaveModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestLeaveModelImplToJson(
      this,
    );
  }
}

abstract class _RequestLeaveModel implements RequestLeaveModel {
  const factory _RequestLeaveModel(
          {final List<LeavetypeModel> leave_type,
          final List<CClistModel> cc_list,
          final List<EmployeeDetailModel> emp_dtl,
          final List<LeavelistModel> leave_list,
          final List<ReportingtoModel> reporting_to,
          final List<CoListModel> co_list,
          @JsonKey(name: "co_parameter") final String coParameter}) =
      _$RequestLeaveModelImpl;

  factory _RequestLeaveModel.fromJson(Map<String, dynamic> json) =
      _$RequestLeaveModelImpl.fromJson;

  @override
  List<LeavetypeModel> get leave_type;
  @override
  List<CClistModel> get cc_list;
  @override
  List<EmployeeDetailModel> get emp_dtl;
  @override
  List<LeavelistModel> get leave_list;
  @override
  List<ReportingtoModel> get reporting_to;
  @override
  List<CoListModel> get co_list;
  @override
  @JsonKey(name: "co_parameter")
  String get coParameter;
  @override
  @JsonKey(ignore: true)
  _$$RequestLeaveModelImplCopyWith<_$RequestLeaveModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
