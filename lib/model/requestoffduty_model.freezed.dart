// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'requestoffduty_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestoffdutyModel _$RequestoffdutyModelFromJson(Map<String, dynamic> json) {
  return _RequestoffdutyModel.fromJson(json);
}

/// @nodoc
mixin _$RequestoffdutyModel {
  List<OffdutyDataModel> get od_data => throw _privateConstructorUsedError;
  List<OffdutyTypeModel> get od_list => throw _privateConstructorUsedError;
  List<OffdutyStatusModel> get gp_od_status =>
      throw _privateConstructorUsedError;
  List<OffdutyForModel> get od_for => throw _privateConstructorUsedError;
  List<OffdutyPurposeModel> get purpose => throw _privateConstructorUsedError;
  List<OffdutyEmployeeModel> get emp_lov => throw _privateConstructorUsedError;
  List<OffdutyClientListModel> get org_list =>
      throw _privateConstructorUsedError;
  AppliedToModel get applied_to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestoffdutyModelCopyWith<RequestoffdutyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestoffdutyModelCopyWith<$Res> {
  factory $RequestoffdutyModelCopyWith(
          RequestoffdutyModel value, $Res Function(RequestoffdutyModel) then) =
      _$RequestoffdutyModelCopyWithImpl<$Res, RequestoffdutyModel>;
  @useResult
  $Res call(
      {List<OffdutyDataModel> od_data,
      List<OffdutyTypeModel> od_list,
      List<OffdutyStatusModel> gp_od_status,
      List<OffdutyForModel> od_for,
      List<OffdutyPurposeModel> purpose,
      List<OffdutyEmployeeModel> emp_lov,
      List<OffdutyClientListModel> org_list,
      AppliedToModel applied_to});

  $AppliedToModelCopyWith<$Res> get applied_to;
}

/// @nodoc
class _$RequestoffdutyModelCopyWithImpl<$Res, $Val extends RequestoffdutyModel>
    implements $RequestoffdutyModelCopyWith<$Res> {
  _$RequestoffdutyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? od_data = null,
    Object? od_list = null,
    Object? gp_od_status = null,
    Object? od_for = null,
    Object? purpose = null,
    Object? emp_lov = null,
    Object? org_list = null,
    Object? applied_to = null,
  }) {
    return _then(_value.copyWith(
      od_data: null == od_data
          ? _value.od_data
          : od_data // ignore: cast_nullable_to_non_nullable
              as List<OffdutyDataModel>,
      od_list: null == od_list
          ? _value.od_list
          : od_list // ignore: cast_nullable_to_non_nullable
              as List<OffdutyTypeModel>,
      gp_od_status: null == gp_od_status
          ? _value.gp_od_status
          : gp_od_status // ignore: cast_nullable_to_non_nullable
              as List<OffdutyStatusModel>,
      od_for: null == od_for
          ? _value.od_for
          : od_for // ignore: cast_nullable_to_non_nullable
              as List<OffdutyForModel>,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as List<OffdutyPurposeModel>,
      emp_lov: null == emp_lov
          ? _value.emp_lov
          : emp_lov // ignore: cast_nullable_to_non_nullable
              as List<OffdutyEmployeeModel>,
      org_list: null == org_list
          ? _value.org_list
          : org_list // ignore: cast_nullable_to_non_nullable
              as List<OffdutyClientListModel>,
      applied_to: null == applied_to
          ? _value.applied_to
          : applied_to // ignore: cast_nullable_to_non_nullable
              as AppliedToModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppliedToModelCopyWith<$Res> get applied_to {
    return $AppliedToModelCopyWith<$Res>(_value.applied_to, (value) {
      return _then(_value.copyWith(applied_to: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RequestoffdutyModelImplCopyWith<$Res>
    implements $RequestoffdutyModelCopyWith<$Res> {
  factory _$$RequestoffdutyModelImplCopyWith(_$RequestoffdutyModelImpl value,
          $Res Function(_$RequestoffdutyModelImpl) then) =
      __$$RequestoffdutyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<OffdutyDataModel> od_data,
      List<OffdutyTypeModel> od_list,
      List<OffdutyStatusModel> gp_od_status,
      List<OffdutyForModel> od_for,
      List<OffdutyPurposeModel> purpose,
      List<OffdutyEmployeeModel> emp_lov,
      List<OffdutyClientListModel> org_list,
      AppliedToModel applied_to});

  @override
  $AppliedToModelCopyWith<$Res> get applied_to;
}

/// @nodoc
class __$$RequestoffdutyModelImplCopyWithImpl<$Res>
    extends _$RequestoffdutyModelCopyWithImpl<$Res, _$RequestoffdutyModelImpl>
    implements _$$RequestoffdutyModelImplCopyWith<$Res> {
  __$$RequestoffdutyModelImplCopyWithImpl(_$RequestoffdutyModelImpl _value,
      $Res Function(_$RequestoffdutyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? od_data = null,
    Object? od_list = null,
    Object? gp_od_status = null,
    Object? od_for = null,
    Object? purpose = null,
    Object? emp_lov = null,
    Object? org_list = null,
    Object? applied_to = null,
  }) {
    return _then(_$RequestoffdutyModelImpl(
      od_data: null == od_data
          ? _value._od_data
          : od_data // ignore: cast_nullable_to_non_nullable
              as List<OffdutyDataModel>,
      od_list: null == od_list
          ? _value._od_list
          : od_list // ignore: cast_nullable_to_non_nullable
              as List<OffdutyTypeModel>,
      gp_od_status: null == gp_od_status
          ? _value._gp_od_status
          : gp_od_status // ignore: cast_nullable_to_non_nullable
              as List<OffdutyStatusModel>,
      od_for: null == od_for
          ? _value._od_for
          : od_for // ignore: cast_nullable_to_non_nullable
              as List<OffdutyForModel>,
      purpose: null == purpose
          ? _value._purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as List<OffdutyPurposeModel>,
      emp_lov: null == emp_lov
          ? _value._emp_lov
          : emp_lov // ignore: cast_nullable_to_non_nullable
              as List<OffdutyEmployeeModel>,
      org_list: null == org_list
          ? _value._org_list
          : org_list // ignore: cast_nullable_to_non_nullable
              as List<OffdutyClientListModel>,
      applied_to: null == applied_to
          ? _value.applied_to
          : applied_to // ignore: cast_nullable_to_non_nullable
              as AppliedToModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestoffdutyModelImpl implements _RequestoffdutyModel {
  const _$RequestoffdutyModelImpl(
      {final List<OffdutyDataModel> od_data = const <OffdutyDataModel>[],
      final List<OffdutyTypeModel> od_list = const <OffdutyTypeModel>[],
      final List<OffdutyStatusModel> gp_od_status =
          const <OffdutyStatusModel>[],
      final List<OffdutyForModel> od_for = const <OffdutyForModel>[],
      final List<OffdutyPurposeModel> purpose = const <OffdutyPurposeModel>[],
      final List<OffdutyEmployeeModel> emp_lov = const <OffdutyEmployeeModel>[],
      final List<OffdutyClientListModel> org_list =
          const <OffdutyClientListModel>[],
      this.applied_to = const AppliedToModel()})
      : _od_data = od_data,
        _od_list = od_list,
        _gp_od_status = gp_od_status,
        _od_for = od_for,
        _purpose = purpose,
        _emp_lov = emp_lov,
        _org_list = org_list;

  factory _$RequestoffdutyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestoffdutyModelImplFromJson(json);

  final List<OffdutyDataModel> _od_data;
  @override
  @JsonKey()
  List<OffdutyDataModel> get od_data {
    if (_od_data is EqualUnmodifiableListView) return _od_data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_od_data);
  }

  final List<OffdutyTypeModel> _od_list;
  @override
  @JsonKey()
  List<OffdutyTypeModel> get od_list {
    if (_od_list is EqualUnmodifiableListView) return _od_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_od_list);
  }

  final List<OffdutyStatusModel> _gp_od_status;
  @override
  @JsonKey()
  List<OffdutyStatusModel> get gp_od_status {
    if (_gp_od_status is EqualUnmodifiableListView) return _gp_od_status;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gp_od_status);
  }

  final List<OffdutyForModel> _od_for;
  @override
  @JsonKey()
  List<OffdutyForModel> get od_for {
    if (_od_for is EqualUnmodifiableListView) return _od_for;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_od_for);
  }

  final List<OffdutyPurposeModel> _purpose;
  @override
  @JsonKey()
  List<OffdutyPurposeModel> get purpose {
    if (_purpose is EqualUnmodifiableListView) return _purpose;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_purpose);
  }

  final List<OffdutyEmployeeModel> _emp_lov;
  @override
  @JsonKey()
  List<OffdutyEmployeeModel> get emp_lov {
    if (_emp_lov is EqualUnmodifiableListView) return _emp_lov;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emp_lov);
  }

  final List<OffdutyClientListModel> _org_list;
  @override
  @JsonKey()
  List<OffdutyClientListModel> get org_list {
    if (_org_list is EqualUnmodifiableListView) return _org_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_org_list);
  }

  @override
  @JsonKey()
  final AppliedToModel applied_to;

  @override
  String toString() {
    return 'RequestoffdutyModel(od_data: $od_data, od_list: $od_list, gp_od_status: $gp_od_status, od_for: $od_for, purpose: $purpose, emp_lov: $emp_lov, org_list: $org_list, applied_to: $applied_to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestoffdutyModelImpl &&
            const DeepCollectionEquality().equals(other._od_data, _od_data) &&
            const DeepCollectionEquality().equals(other._od_list, _od_list) &&
            const DeepCollectionEquality()
                .equals(other._gp_od_status, _gp_od_status) &&
            const DeepCollectionEquality().equals(other._od_for, _od_for) &&
            const DeepCollectionEquality().equals(other._purpose, _purpose) &&
            const DeepCollectionEquality().equals(other._emp_lov, _emp_lov) &&
            const DeepCollectionEquality().equals(other._org_list, _org_list) &&
            (identical(other.applied_to, applied_to) ||
                other.applied_to == applied_to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_od_data),
      const DeepCollectionEquality().hash(_od_list),
      const DeepCollectionEquality().hash(_gp_od_status),
      const DeepCollectionEquality().hash(_od_for),
      const DeepCollectionEquality().hash(_purpose),
      const DeepCollectionEquality().hash(_emp_lov),
      const DeepCollectionEquality().hash(_org_list),
      applied_to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestoffdutyModelImplCopyWith<_$RequestoffdutyModelImpl> get copyWith =>
      __$$RequestoffdutyModelImplCopyWithImpl<_$RequestoffdutyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestoffdutyModelImplToJson(
      this,
    );
  }
}

abstract class _RequestoffdutyModel implements RequestoffdutyModel {
  const factory _RequestoffdutyModel(
      {final List<OffdutyDataModel> od_data,
      final List<OffdutyTypeModel> od_list,
      final List<OffdutyStatusModel> gp_od_status,
      final List<OffdutyForModel> od_for,
      final List<OffdutyPurposeModel> purpose,
      final List<OffdutyEmployeeModel> emp_lov,
      final List<OffdutyClientListModel> org_list,
      final AppliedToModel applied_to}) = _$RequestoffdutyModelImpl;

  factory _RequestoffdutyModel.fromJson(Map<String, dynamic> json) =
      _$RequestoffdutyModelImpl.fromJson;

  @override
  List<OffdutyDataModel> get od_data;
  @override
  List<OffdutyTypeModel> get od_list;
  @override
  List<OffdutyStatusModel> get gp_od_status;
  @override
  List<OffdutyForModel> get od_for;
  @override
  List<OffdutyPurposeModel> get purpose;
  @override
  List<OffdutyEmployeeModel> get emp_lov;
  @override
  List<OffdutyClientListModel> get org_list;
  @override
  AppliedToModel get applied_to;
  @override
  @JsonKey(ignore: true)
  _$$RequestoffdutyModelImplCopyWith<_$RequestoffdutyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
