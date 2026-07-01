// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wfhtype_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WfhTypeModel _$WfhTypeModelFromJson(Map<String, dynamic> json) {
  return _WfhTypeModel.fromJson(json);
}

/// @nodoc
mixin _$WfhTypeModel {
  @JsonKey(name: "control_code")
  String get controlCode => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get meaning => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WfhTypeModelCopyWith<WfhTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WfhTypeModelCopyWith<$Res> {
  factory $WfhTypeModelCopyWith(
          WfhTypeModel value, $Res Function(WfhTypeModel) then) =
      _$WfhTypeModelCopyWithImpl<$Res, WfhTypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "control_code") String controlCode,
      @JsonKey(name: "description") String meaning});
}

/// @nodoc
class _$WfhTypeModelCopyWithImpl<$Res, $Val extends WfhTypeModel>
    implements $WfhTypeModelCopyWith<$Res> {
  _$WfhTypeModelCopyWithImpl(this._value, this._then);

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
abstract class _$$WfhTypeModelImplCopyWith<$Res>
    implements $WfhTypeModelCopyWith<$Res> {
  factory _$$WfhTypeModelImplCopyWith(
          _$WfhTypeModelImpl value, $Res Function(_$WfhTypeModelImpl) then) =
      __$$WfhTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "control_code") String controlCode,
      @JsonKey(name: "description") String meaning});
}

/// @nodoc
class __$$WfhTypeModelImplCopyWithImpl<$Res>
    extends _$WfhTypeModelCopyWithImpl<$Res, _$WfhTypeModelImpl>
    implements _$$WfhTypeModelImplCopyWith<$Res> {
  __$$WfhTypeModelImplCopyWithImpl(
      _$WfhTypeModelImpl _value, $Res Function(_$WfhTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controlCode = null,
    Object? meaning = null,
  }) {
    return _then(_$WfhTypeModelImpl(
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
class _$WfhTypeModelImpl implements _WfhTypeModel {
  const _$WfhTypeModelImpl(
      {@JsonKey(name: "control_code") this.controlCode = "",
      @JsonKey(name: "description") this.meaning = ""});

  factory _$WfhTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WfhTypeModelImplFromJson(json);

  @override
  @JsonKey(name: "control_code")
  final String controlCode;
  @override
  @JsonKey(name: "description")
  final String meaning;

  @override
  String toString() {
    return 'WfhTypeModel(controlCode: $controlCode, meaning: $meaning)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WfhTypeModelImpl &&
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
  _$$WfhTypeModelImplCopyWith<_$WfhTypeModelImpl> get copyWith =>
      __$$WfhTypeModelImplCopyWithImpl<_$WfhTypeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WfhTypeModelImplToJson(
      this,
    );
  }
}

abstract class _WfhTypeModel implements WfhTypeModel {
  const factory _WfhTypeModel(
      {@JsonKey(name: "control_code") final String controlCode,
      @JsonKey(name: "description") final String meaning}) = _$WfhTypeModelImpl;

  factory _WfhTypeModel.fromJson(Map<String, dynamic> json) =
      _$WfhTypeModelImpl.fromJson;

  @override
  @JsonKey(name: "control_code")
  String get controlCode;
  @override
  @JsonKey(name: "description")
  String get meaning;
  @override
  @JsonKey(ignore: true)
  _$$WfhTypeModelImplCopyWith<_$WfhTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
