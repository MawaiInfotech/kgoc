// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wfhcondition_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WfhConditionModel _$WfhConditionModelFromJson(Map<String, dynamic> json) {
  return _WfhConditionModel.fromJson(json);
}

/// @nodoc
mixin _$WfhConditionModel {
  @JsonKey(name: "control_code")
  String get controlCode => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get meaning => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WfhConditionModelCopyWith<WfhConditionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WfhConditionModelCopyWith<$Res> {
  factory $WfhConditionModelCopyWith(
          WfhConditionModel value, $Res Function(WfhConditionModel) then) =
      _$WfhConditionModelCopyWithImpl<$Res, WfhConditionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "control_code") String controlCode,
      @JsonKey(name: "description") String meaning});
}

/// @nodoc
class _$WfhConditionModelCopyWithImpl<$Res, $Val extends WfhConditionModel>
    implements $WfhConditionModelCopyWith<$Res> {
  _$WfhConditionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controlCode = null,
    Object? meaning = null,
  }) {
    return _then(_value.copyWith(
      controlCode: null == controlCode
          ? _value.controlCode
          : controlCode // ignore: cast_nullable_to_non_nullable
              as String,
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WfhConditionModelImplCopyWith<$Res>
    implements $WfhConditionModelCopyWith<$Res> {
  factory _$$WfhConditionModelImplCopyWith(_$WfhConditionModelImpl value,
          $Res Function(_$WfhConditionModelImpl) then) =
      __$$WfhConditionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "control_code") String controlCode,
      @JsonKey(name: "description") String meaning});
}

/// @nodoc
class __$$WfhConditionModelImplCopyWithImpl<$Res>
    extends _$WfhConditionModelCopyWithImpl<$Res, _$WfhConditionModelImpl>
    implements _$$WfhConditionModelImplCopyWith<$Res> {
  __$$WfhConditionModelImplCopyWithImpl(_$WfhConditionModelImpl _value,
      $Res Function(_$WfhConditionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controlCode = null,
    Object? meaning = null,
  }) {
    return _then(_$WfhConditionModelImpl(
      controlCode: null == controlCode
          ? _value.controlCode
          : controlCode // ignore: cast_nullable_to_non_nullable
              as String,
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WfhConditionModelImpl implements _WfhConditionModel {
  const _$WfhConditionModelImpl(
      {@JsonKey(name: "control_code") this.controlCode = "",
      @JsonKey(name: "description") this.meaning = ""});

  factory _$WfhConditionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WfhConditionModelImplFromJson(json);

  @override
  @JsonKey(name: "control_code")
  final String controlCode;
  @override
  @JsonKey(name: "description")
  final String meaning;

  @override
  String toString() {
    return 'WfhConditionModel(controlCode: $controlCode, meaning: $meaning)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WfhConditionModelImpl &&
            (identical(other.controlCode, controlCode) ||
                other.controlCode == controlCode) &&
            (identical(other.meaning, meaning) || other.meaning == meaning));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, controlCode, meaning);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WfhConditionModelImplCopyWith<_$WfhConditionModelImpl> get copyWith =>
      __$$WfhConditionModelImplCopyWithImpl<_$WfhConditionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WfhConditionModelImplToJson(
      this,
    );
  }
}

abstract class _WfhConditionModel implements WfhConditionModel {
  const factory _WfhConditionModel(
          {@JsonKey(name: "control_code") final String controlCode,
          @JsonKey(name: "description") final String meaning}) =
      _$WfhConditionModelImpl;

  factory _WfhConditionModel.fromJson(Map<String, dynamic> json) =
      _$WfhConditionModelImpl.fromJson;

  @override
  @JsonKey(name: "control_code")
  String get controlCode;
  @override
  @JsonKey(name: "description")
  String get meaning;
  @override
  @JsonKey(ignore: true)
  _$$WfhConditionModelImplCopyWith<_$WfhConditionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
