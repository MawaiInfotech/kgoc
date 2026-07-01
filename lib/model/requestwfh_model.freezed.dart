// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'requestwfh_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestWfhModel _$RequestWfhModelFromJson(Map<String, dynamic> json) {
  return _RequestWfhModel.fromJson(json);
}

/// @nodoc
mixin _$RequestWfhModel {
  List<WfhTypeModel> get wfh_day_type => throw _privateConstructorUsedError;
  List<WfhConditionModel> get wfh_condition =>
      throw _privateConstructorUsedError;
  List<WfhCcListModel> get cc_list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestWfhModelCopyWith<RequestWfhModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestWfhModelCopyWith<$Res> {
  factory $RequestWfhModelCopyWith(
          RequestWfhModel value, $Res Function(RequestWfhModel) then) =
      _$RequestWfhModelCopyWithImpl<$Res, RequestWfhModel>;
  @useResult
  $Res call(
      {List<WfhTypeModel> wfh_day_type,
      List<WfhConditionModel> wfh_condition,
      List<WfhCcListModel> cc_list});
}

/// @nodoc
class _$RequestWfhModelCopyWithImpl<$Res, $Val extends RequestWfhModel>
    implements $RequestWfhModelCopyWith<$Res> {
  _$RequestWfhModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wfh_day_type = null,
    Object? wfh_condition = null,
    Object? cc_list = null,
  }) {
    return _then(_value.copyWith(
      wfh_day_type: null == wfh_day_type
          ? _value.wfh_day_type
          : wfh_day_type // ignore: cast_nullable_to_non_nullable
              as List<WfhTypeModel>,
      wfh_condition: null == wfh_condition
          ? _value.wfh_condition
          : wfh_condition // ignore: cast_nullable_to_non_nullable
              as List<WfhConditionModel>,
      cc_list: null == cc_list
          ? _value.cc_list
          : cc_list // ignore: cast_nullable_to_non_nullable
              as List<WfhCcListModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestWfhModelImplCopyWith<$Res>
    implements $RequestWfhModelCopyWith<$Res> {
  factory _$$RequestWfhModelImplCopyWith(_$RequestWfhModelImpl value,
          $Res Function(_$RequestWfhModelImpl) then) =
      __$$RequestWfhModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<WfhTypeModel> wfh_day_type,
      List<WfhConditionModel> wfh_condition,
      List<WfhCcListModel> cc_list});
}

/// @nodoc
class __$$RequestWfhModelImplCopyWithImpl<$Res>
    extends _$RequestWfhModelCopyWithImpl<$Res, _$RequestWfhModelImpl>
    implements _$$RequestWfhModelImplCopyWith<$Res> {
  __$$RequestWfhModelImplCopyWithImpl(
      _$RequestWfhModelImpl _value, $Res Function(_$RequestWfhModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wfh_day_type = null,
    Object? wfh_condition = null,
    Object? cc_list = null,
  }) {
    return _then(_$RequestWfhModelImpl(
      wfh_day_type: null == wfh_day_type
          ? _value._wfh_day_type
          : wfh_day_type // ignore: cast_nullable_to_non_nullable
              as List<WfhTypeModel>,
      wfh_condition: null == wfh_condition
          ? _value._wfh_condition
          : wfh_condition // ignore: cast_nullable_to_non_nullable
              as List<WfhConditionModel>,
      cc_list: null == cc_list
          ? _value._cc_list
          : cc_list // ignore: cast_nullable_to_non_nullable
              as List<WfhCcListModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestWfhModelImpl implements _RequestWfhModel {
  const _$RequestWfhModelImpl(
      {final List<WfhTypeModel> wfh_day_type = const <WfhTypeModel>[],
      final List<WfhConditionModel> wfh_condition = const <WfhConditionModel>[],
      final List<WfhCcListModel> cc_list = const <WfhCcListModel>[]})
      : _wfh_day_type = wfh_day_type,
        _wfh_condition = wfh_condition,
        _cc_list = cc_list;

  factory _$RequestWfhModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestWfhModelImplFromJson(json);

  final List<WfhTypeModel> _wfh_day_type;
  @override
  @JsonKey()
  List<WfhTypeModel> get wfh_day_type {
    if (_wfh_day_type is EqualUnmodifiableListView) return _wfh_day_type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wfh_day_type);
  }

  final List<WfhConditionModel> _wfh_condition;
  @override
  @JsonKey()
  List<WfhConditionModel> get wfh_condition {
    if (_wfh_condition is EqualUnmodifiableListView) return _wfh_condition;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wfh_condition);
  }

  final List<WfhCcListModel> _cc_list;
  @override
  @JsonKey()
  List<WfhCcListModel> get cc_list {
    if (_cc_list is EqualUnmodifiableListView) return _cc_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cc_list);
  }

  @override
  String toString() {
    return 'RequestWfhModel(wfh_day_type: $wfh_day_type, wfh_condition: $wfh_condition, cc_list: $cc_list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestWfhModelImpl &&
            const DeepCollectionEquality()
                .equals(other._wfh_day_type, _wfh_day_type) &&
            const DeepCollectionEquality()
                .equals(other._wfh_condition, _wfh_condition) &&
            const DeepCollectionEquality().equals(other._cc_list, _cc_list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_wfh_day_type),
      const DeepCollectionEquality().hash(_wfh_condition),
      const DeepCollectionEquality().hash(_cc_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestWfhModelImplCopyWith<_$RequestWfhModelImpl> get copyWith =>
      __$$RequestWfhModelImplCopyWithImpl<_$RequestWfhModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestWfhModelImplToJson(
      this,
    );
  }
}

abstract class _RequestWfhModel implements RequestWfhModel {
  const factory _RequestWfhModel(
      {final List<WfhTypeModel> wfh_day_type,
      final List<WfhConditionModel> wfh_condition,
      final List<WfhCcListModel> cc_list}) = _$RequestWfhModelImpl;

  factory _RequestWfhModel.fromJson(Map<String, dynamic> json) =
      _$RequestWfhModelImpl.fromJson;

  @override
  List<WfhTypeModel> get wfh_day_type;
  @override
  List<WfhConditionModel> get wfh_condition;
  @override
  List<WfhCcListModel> get cc_list;
  @override
  @JsonKey(ignore: true)
  _$$RequestWfhModelImplCopyWith<_$RequestWfhModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
