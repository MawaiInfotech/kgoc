// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workfromhometype.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkfromHomeTypeModel _$WorkfromHomeTypeModelFromJson(
    Map<String, dynamic> json) {
  return _WorkfromHomeTypeModel.fromJson(json);
}

/// @nodoc
mixin _$WorkfromHomeTypeModel {
  @JsonKey(name: "control_code")
  String get controlCode => throw _privateConstructorUsedError;
  @JsonKey(name: "meaning")
  String get meaning => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkfromHomeTypeModelCopyWith<WorkfromHomeTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkfromHomeTypeModelCopyWith<$Res> {
  factory $WorkfromHomeTypeModelCopyWith(WorkfromHomeTypeModel value,
          $Res Function(WorkfromHomeTypeModel) then) =
      _$WorkfromHomeTypeModelCopyWithImpl<$Res, WorkfromHomeTypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "control_code") String controlCode,
      @JsonKey(name: "meaning") String meaning});
}

/// @nodoc
class _$WorkfromHomeTypeModelCopyWithImpl<$Res,
        $Val extends WorkfromHomeTypeModel>
    implements $WorkfromHomeTypeModelCopyWith<$Res> {
  _$WorkfromHomeTypeModelCopyWithImpl(this._value, this._then);

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
abstract class _$$WorkfromHomeTypeModelImplCopyWith<$Res>
    implements $WorkfromHomeTypeModelCopyWith<$Res> {
  factory _$$WorkfromHomeTypeModelImplCopyWith(
          _$WorkfromHomeTypeModelImpl value,
          $Res Function(_$WorkfromHomeTypeModelImpl) then) =
      __$$WorkfromHomeTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "control_code") String controlCode,
      @JsonKey(name: "meaning") String meaning});
}

/// @nodoc
class __$$WorkfromHomeTypeModelImplCopyWithImpl<$Res>
    extends _$WorkfromHomeTypeModelCopyWithImpl<$Res,
        _$WorkfromHomeTypeModelImpl>
    implements _$$WorkfromHomeTypeModelImplCopyWith<$Res> {
  __$$WorkfromHomeTypeModelImplCopyWithImpl(_$WorkfromHomeTypeModelImpl _value,
      $Res Function(_$WorkfromHomeTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controlCode = null,
    Object? meaning = null,
  }) {
    return _then(_$WorkfromHomeTypeModelImpl(
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
class _$WorkfromHomeTypeModelImpl implements _WorkfromHomeTypeModel {
  const _$WorkfromHomeTypeModelImpl(
      {@JsonKey(name: "control_code") this.controlCode = "",
      @JsonKey(name: "meaning") this.meaning = ""});

  factory _$WorkfromHomeTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkfromHomeTypeModelImplFromJson(json);

  @override
  @JsonKey(name: "control_code")
  final String controlCode;
  @override
  @JsonKey(name: "meaning")
  final String meaning;

  @override
  String toString() {
    return 'WorkfromHomeTypeModel(controlCode: $controlCode, meaning: $meaning)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkfromHomeTypeModelImpl &&
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
  _$$WorkfromHomeTypeModelImplCopyWith<_$WorkfromHomeTypeModelImpl>
      get copyWith => __$$WorkfromHomeTypeModelImplCopyWithImpl<
          _$WorkfromHomeTypeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkfromHomeTypeModelImplToJson(
      this,
    );
  }
}

abstract class _WorkfromHomeTypeModel implements WorkfromHomeTypeModel {
  const factory _WorkfromHomeTypeModel(
          {@JsonKey(name: "control_code") final String controlCode,
          @JsonKey(name: "meaning") final String meaning}) =
      _$WorkfromHomeTypeModelImpl;

  factory _WorkfromHomeTypeModel.fromJson(Map<String, dynamic> json) =
      _$WorkfromHomeTypeModelImpl.fromJson;

  @override
  @JsonKey(name: "control_code")
  String get controlCode;
  @override
  @JsonKey(name: "meaning")
  String get meaning;
  @override
  @JsonKey(ignore: true)
  _$$WorkfromHomeTypeModelImplCopyWith<_$WorkfromHomeTypeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
