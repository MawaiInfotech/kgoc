// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeavetypeModel _$LeavetypeModelFromJson(Map<String, dynamic> json) {
  return _LeavetypeModel.fromJson(json);
}

/// @nodoc
mixin _$LeavetypeModel {
  @JsonKey(name: "control_code")
  String get controlCode => throw _privateConstructorUsedError;
  @JsonKey(name: "meaning")
  String get meaning => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeavetypeModelCopyWith<LeavetypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeavetypeModelCopyWith<$Res> {
  factory $LeavetypeModelCopyWith(
          LeavetypeModel value, $Res Function(LeavetypeModel) then) =
      _$LeavetypeModelCopyWithImpl<$Res, LeavetypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "control_code") String controlCode,
      @JsonKey(name: "meaning") String meaning});
}

/// @nodoc
class _$LeavetypeModelCopyWithImpl<$Res, $Val extends LeavetypeModel>
    implements $LeavetypeModelCopyWith<$Res> {
  _$LeavetypeModelCopyWithImpl(this._value, this._then);

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
abstract class _$$LeavetypeModelImplCopyWith<$Res>
    implements $LeavetypeModelCopyWith<$Res> {
  factory _$$LeavetypeModelImplCopyWith(_$LeavetypeModelImpl value,
          $Res Function(_$LeavetypeModelImpl) then) =
      __$$LeavetypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "control_code") String controlCode,
      @JsonKey(name: "meaning") String meaning});
}

/// @nodoc
class __$$LeavetypeModelImplCopyWithImpl<$Res>
    extends _$LeavetypeModelCopyWithImpl<$Res, _$LeavetypeModelImpl>
    implements _$$LeavetypeModelImplCopyWith<$Res> {
  __$$LeavetypeModelImplCopyWithImpl(
      _$LeavetypeModelImpl _value, $Res Function(_$LeavetypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controlCode = null,
    Object? meaning = null,
  }) {
    return _then(_$LeavetypeModelImpl(
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
class _$LeavetypeModelImpl implements _LeavetypeModel {
  const _$LeavetypeModelImpl(
      {@JsonKey(name: "control_code") this.controlCode = "",
      @JsonKey(name: "meaning") this.meaning = ""});

  factory _$LeavetypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeavetypeModelImplFromJson(json);

  @override
  @JsonKey(name: "control_code")
  final String controlCode;
  @override
  @JsonKey(name: "meaning")
  final String meaning;

  @override
  String toString() {
    return 'LeavetypeModel(controlCode: $controlCode, meaning: $meaning)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeavetypeModelImpl &&
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
  _$$LeavetypeModelImplCopyWith<_$LeavetypeModelImpl> get copyWith =>
      __$$LeavetypeModelImplCopyWithImpl<_$LeavetypeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeavetypeModelImplToJson(
      this,
    );
  }
}

abstract class _LeavetypeModel implements LeavetypeModel {
  const factory _LeavetypeModel(
      {@JsonKey(name: "control_code") final String controlCode,
      @JsonKey(name: "meaning") final String meaning}) = _$LeavetypeModelImpl;

  factory _LeavetypeModel.fromJson(Map<String, dynamic> json) =
      _$LeavetypeModelImpl.fromJson;

  @override
  @JsonKey(name: "control_code")
  String get controlCode;
  @override
  @JsonKey(name: "meaning")
  String get meaning;
  @override
  @JsonKey(ignore: true)
  _$$LeavetypeModelImplCopyWith<_$LeavetypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
