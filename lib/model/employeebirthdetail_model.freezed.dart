// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employeebirthdetail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmployeeBirthDetailModel _$EmployeeBirthDetailModelFromJson(
    Map<String, dynamic> json) {
  return _EmployeeBirthDetailModel.fromJson(json);
}

/// @nodoc
mixin _$EmployeeBirthDetailModel {
  List<NewJoineeModel> get emp_newjoins => throw _privateConstructorUsedError;
  List<BirthdayModel> get emp_births => throw _privateConstructorUsedError;
  List<WorkAnniversaryModel> get emp_workanniversary =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeBirthDetailModelCopyWith<EmployeeBirthDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeBirthDetailModelCopyWith<$Res> {
  factory $EmployeeBirthDetailModelCopyWith(EmployeeBirthDetailModel value,
          $Res Function(EmployeeBirthDetailModel) then) =
      _$EmployeeBirthDetailModelCopyWithImpl<$Res, EmployeeBirthDetailModel>;
  @useResult
  $Res call(
      {List<NewJoineeModel> emp_newjoins,
      List<BirthdayModel> emp_births,
      List<WorkAnniversaryModel> emp_workanniversary});
}

/// @nodoc
class _$EmployeeBirthDetailModelCopyWithImpl<$Res,
        $Val extends EmployeeBirthDetailModel>
    implements $EmployeeBirthDetailModelCopyWith<$Res> {
  _$EmployeeBirthDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emp_newjoins = null,
    Object? emp_births = null,
    Object? emp_workanniversary = null,
  }) {
    return _then(_value.copyWith(
      emp_newjoins: null == emp_newjoins
          ? _value.emp_newjoins
          : emp_newjoins // ignore: cast_nullable_to_non_nullable
              as List<NewJoineeModel>,
      emp_births: null == emp_births
          ? _value.emp_births
          : emp_births // ignore: cast_nullable_to_non_nullable
              as List<BirthdayModel>,
      emp_workanniversary: null == emp_workanniversary
          ? _value.emp_workanniversary
          : emp_workanniversary // ignore: cast_nullable_to_non_nullable
              as List<WorkAnniversaryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeeBirthDetailModelImplCopyWith<$Res>
    implements $EmployeeBirthDetailModelCopyWith<$Res> {
  factory _$$EmployeeBirthDetailModelImplCopyWith(
          _$EmployeeBirthDetailModelImpl value,
          $Res Function(_$EmployeeBirthDetailModelImpl) then) =
      __$$EmployeeBirthDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NewJoineeModel> emp_newjoins,
      List<BirthdayModel> emp_births,
      List<WorkAnniversaryModel> emp_workanniversary});
}

/// @nodoc
class __$$EmployeeBirthDetailModelImplCopyWithImpl<$Res>
    extends _$EmployeeBirthDetailModelCopyWithImpl<$Res,
        _$EmployeeBirthDetailModelImpl>
    implements _$$EmployeeBirthDetailModelImplCopyWith<$Res> {
  __$$EmployeeBirthDetailModelImplCopyWithImpl(
      _$EmployeeBirthDetailModelImpl _value,
      $Res Function(_$EmployeeBirthDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emp_newjoins = null,
    Object? emp_births = null,
    Object? emp_workanniversary = null,
  }) {
    return _then(_$EmployeeBirthDetailModelImpl(
      emp_newjoins: null == emp_newjoins
          ? _value._emp_newjoins
          : emp_newjoins // ignore: cast_nullable_to_non_nullable
              as List<NewJoineeModel>,
      emp_births: null == emp_births
          ? _value._emp_births
          : emp_births // ignore: cast_nullable_to_non_nullable
              as List<BirthdayModel>,
      emp_workanniversary: null == emp_workanniversary
          ? _value._emp_workanniversary
          : emp_workanniversary // ignore: cast_nullable_to_non_nullable
              as List<WorkAnniversaryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeeBirthDetailModelImpl implements _EmployeeBirthDetailModel {
  const _$EmployeeBirthDetailModelImpl(
      {final List<NewJoineeModel> emp_newjoins = const <NewJoineeModel>[],
      final List<BirthdayModel> emp_births = const <BirthdayModel>[],
      final List<WorkAnniversaryModel> emp_workanniversary =
          const <WorkAnniversaryModel>[]})
      : _emp_newjoins = emp_newjoins,
        _emp_births = emp_births,
        _emp_workanniversary = emp_workanniversary;

  factory _$EmployeeBirthDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeBirthDetailModelImplFromJson(json);

  final List<NewJoineeModel> _emp_newjoins;
  @override
  @JsonKey()
  List<NewJoineeModel> get emp_newjoins {
    if (_emp_newjoins is EqualUnmodifiableListView) return _emp_newjoins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emp_newjoins);
  }

  final List<BirthdayModel> _emp_births;
  @override
  @JsonKey()
  List<BirthdayModel> get emp_births {
    if (_emp_births is EqualUnmodifiableListView) return _emp_births;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emp_births);
  }

  final List<WorkAnniversaryModel> _emp_workanniversary;
  @override
  @JsonKey()
  List<WorkAnniversaryModel> get emp_workanniversary {
    if (_emp_workanniversary is EqualUnmodifiableListView)
      return _emp_workanniversary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emp_workanniversary);
  }

  @override
  String toString() {
    return 'EmployeeBirthDetailModel(emp_newjoins: $emp_newjoins, emp_births: $emp_births, emp_workanniversary: $emp_workanniversary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeBirthDetailModelImpl &&
            const DeepCollectionEquality()
                .equals(other._emp_newjoins, _emp_newjoins) &&
            const DeepCollectionEquality()
                .equals(other._emp_births, _emp_births) &&
            const DeepCollectionEquality()
                .equals(other._emp_workanniversary, _emp_workanniversary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_emp_newjoins),
      const DeepCollectionEquality().hash(_emp_births),
      const DeepCollectionEquality().hash(_emp_workanniversary));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeBirthDetailModelImplCopyWith<_$EmployeeBirthDetailModelImpl>
      get copyWith => __$$EmployeeBirthDetailModelImplCopyWithImpl<
          _$EmployeeBirthDetailModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeBirthDetailModelImplToJson(
      this,
    );
  }
}

abstract class _EmployeeBirthDetailModel implements EmployeeBirthDetailModel {
  const factory _EmployeeBirthDetailModel(
          {final List<NewJoineeModel> emp_newjoins,
          final List<BirthdayModel> emp_births,
          final List<WorkAnniversaryModel> emp_workanniversary}) =
      _$EmployeeBirthDetailModelImpl;

  factory _EmployeeBirthDetailModel.fromJson(Map<String, dynamic> json) =
      _$EmployeeBirthDetailModelImpl.fromJson;

  @override
  List<NewJoineeModel> get emp_newjoins;
  @override
  List<BirthdayModel> get emp_births;
  @override
  List<WorkAnniversaryModel> get emp_workanniversary;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeBirthDetailModelImplCopyWith<_$EmployeeBirthDetailModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
