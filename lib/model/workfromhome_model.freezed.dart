// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workfromhome_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkfromHomeModel _$WorkfromHomeModelFromJson(Map<String, dynamic> json) {
  return _WorkfromHomeModel.fromJson(json);
}

/// @nodoc
mixin _$WorkfromHomeModel {
  List<WorkfromHomeTypeModel> get day_type =>
      throw _privateConstructorUsedError;
  List<WorkfromHomeCClistModel> get cc_list =>
      throw _privateConstructorUsedError;
  List<WFHEmployeeDetailModel> get emp_dtl =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkfromHomeModelCopyWith<WorkfromHomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkfromHomeModelCopyWith<$Res> {
  factory $WorkfromHomeModelCopyWith(
          WorkfromHomeModel value, $Res Function(WorkfromHomeModel) then) =
      _$WorkfromHomeModelCopyWithImpl<$Res, WorkfromHomeModel>;
  @useResult
  $Res call(
      {List<WorkfromHomeTypeModel> day_type,
      List<WorkfromHomeCClistModel> cc_list,
      List<WFHEmployeeDetailModel> emp_dtl});
}

/// @nodoc
class _$WorkfromHomeModelCopyWithImpl<$Res, $Val extends WorkfromHomeModel>
    implements $WorkfromHomeModelCopyWith<$Res> {
  _$WorkfromHomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day_type = null,
    Object? cc_list = null,
    Object? emp_dtl = null,
  }) {
    return _then(_value.copyWith(
      day_type: null == day_type
          ? _value.day_type
          : day_type // ignore: cast_nullable_to_non_nullable
              as List<WorkfromHomeTypeModel>,
      cc_list: null == cc_list
          ? _value.cc_list
          : cc_list // ignore: cast_nullable_to_non_nullable
              as List<WorkfromHomeCClistModel>,
      emp_dtl: null == emp_dtl
          ? _value.emp_dtl
          : emp_dtl // ignore: cast_nullable_to_non_nullable
              as List<WFHEmployeeDetailModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkfromHomeModelImplCopyWith<$Res>
    implements $WorkfromHomeModelCopyWith<$Res> {
  factory _$$WorkfromHomeModelImplCopyWith(_$WorkfromHomeModelImpl value,
          $Res Function(_$WorkfromHomeModelImpl) then) =
      __$$WorkfromHomeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<WorkfromHomeTypeModel> day_type,
      List<WorkfromHomeCClistModel> cc_list,
      List<WFHEmployeeDetailModel> emp_dtl});
}

/// @nodoc
class __$$WorkfromHomeModelImplCopyWithImpl<$Res>
    extends _$WorkfromHomeModelCopyWithImpl<$Res, _$WorkfromHomeModelImpl>
    implements _$$WorkfromHomeModelImplCopyWith<$Res> {
  __$$WorkfromHomeModelImplCopyWithImpl(_$WorkfromHomeModelImpl _value,
      $Res Function(_$WorkfromHomeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day_type = null,
    Object? cc_list = null,
    Object? emp_dtl = null,
  }) {
    return _then(_$WorkfromHomeModelImpl(
      day_type: null == day_type
          ? _value._day_type
          : day_type // ignore: cast_nullable_to_non_nullable
              as List<WorkfromHomeTypeModel>,
      cc_list: null == cc_list
          ? _value._cc_list
          : cc_list // ignore: cast_nullable_to_non_nullable
              as List<WorkfromHomeCClistModel>,
      emp_dtl: null == emp_dtl
          ? _value._emp_dtl
          : emp_dtl // ignore: cast_nullable_to_non_nullable
              as List<WFHEmployeeDetailModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkfromHomeModelImpl implements _WorkfromHomeModel {
  const _$WorkfromHomeModelImpl(
      {final List<WorkfromHomeTypeModel> day_type =
          const <WorkfromHomeTypeModel>[],
      final List<WorkfromHomeCClistModel> cc_list =
          const <WorkfromHomeCClistModel>[],
      final List<WFHEmployeeDetailModel> emp_dtl =
          const <WFHEmployeeDetailModel>[]})
      : _day_type = day_type,
        _cc_list = cc_list,
        _emp_dtl = emp_dtl;

  factory _$WorkfromHomeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkfromHomeModelImplFromJson(json);

  final List<WorkfromHomeTypeModel> _day_type;
  @override
  @JsonKey()
  List<WorkfromHomeTypeModel> get day_type {
    if (_day_type is EqualUnmodifiableListView) return _day_type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_day_type);
  }

  final List<WorkfromHomeCClistModel> _cc_list;
  @override
  @JsonKey()
  List<WorkfromHomeCClistModel> get cc_list {
    if (_cc_list is EqualUnmodifiableListView) return _cc_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cc_list);
  }

  final List<WFHEmployeeDetailModel> _emp_dtl;
  @override
  @JsonKey()
  List<WFHEmployeeDetailModel> get emp_dtl {
    if (_emp_dtl is EqualUnmodifiableListView) return _emp_dtl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emp_dtl);
  }

  @override
  String toString() {
    return 'WorkfromHomeModel(day_type: $day_type, cc_list: $cc_list, emp_dtl: $emp_dtl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkfromHomeModelImpl &&
            const DeepCollectionEquality().equals(other._day_type, _day_type) &&
            const DeepCollectionEquality().equals(other._cc_list, _cc_list) &&
            const DeepCollectionEquality().equals(other._emp_dtl, _emp_dtl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_day_type),
      const DeepCollectionEquality().hash(_cc_list),
      const DeepCollectionEquality().hash(_emp_dtl));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkfromHomeModelImplCopyWith<_$WorkfromHomeModelImpl> get copyWith =>
      __$$WorkfromHomeModelImplCopyWithImpl<_$WorkfromHomeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkfromHomeModelImplToJson(
      this,
    );
  }
}

abstract class _WorkfromHomeModel implements WorkfromHomeModel {
  const factory _WorkfromHomeModel(
      {final List<WorkfromHomeTypeModel> day_type,
      final List<WorkfromHomeCClistModel> cc_list,
      final List<WFHEmployeeDetailModel> emp_dtl}) = _$WorkfromHomeModelImpl;

  factory _WorkfromHomeModel.fromJson(Map<String, dynamic> json) =
      _$WorkfromHomeModelImpl.fromJson;

  @override
  List<WorkfromHomeTypeModel> get day_type;
  @override
  List<WorkfromHomeCClistModel> get cc_list;
  @override
  List<WFHEmployeeDetailModel> get emp_dtl;
  @override
  @JsonKey(ignore: true)
  _$$WorkfromHomeModelImplCopyWith<_$WorkfromHomeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
