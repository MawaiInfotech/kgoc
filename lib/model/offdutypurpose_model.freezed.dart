// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offdutypurpose_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OffdutyPurposeModel _$OffdutyPurposeModelFromJson(Map<String, dynamic> json) {
  return _OffdutyPurposeModel.fromJson(json);
}

/// @nodoc
mixin _$OffdutyPurposeModel {
  @JsonKey(name: "code")
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "desc")
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OffdutyPurposeModelCopyWith<OffdutyPurposeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffdutyPurposeModelCopyWith<$Res> {
  factory $OffdutyPurposeModelCopyWith(
          OffdutyPurposeModel value, $Res Function(OffdutyPurposeModel) then) =
      _$OffdutyPurposeModelCopyWithImpl<$Res, OffdutyPurposeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String code,
      @JsonKey(name: "desc") String description});
}

/// @nodoc
class _$OffdutyPurposeModelCopyWithImpl<$Res, $Val extends OffdutyPurposeModel>
    implements $OffdutyPurposeModelCopyWith<$Res> {
  _$OffdutyPurposeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OffdutyPurposeModelImplCopyWith<$Res>
    implements $OffdutyPurposeModelCopyWith<$Res> {
  factory _$$OffdutyPurposeModelImplCopyWith(_$OffdutyPurposeModelImpl value,
          $Res Function(_$OffdutyPurposeModelImpl) then) =
      __$$OffdutyPurposeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") String code,
      @JsonKey(name: "desc") String description});
}

/// @nodoc
class __$$OffdutyPurposeModelImplCopyWithImpl<$Res>
    extends _$OffdutyPurposeModelCopyWithImpl<$Res, _$OffdutyPurposeModelImpl>
    implements _$$OffdutyPurposeModelImplCopyWith<$Res> {
  __$$OffdutyPurposeModelImplCopyWithImpl(_$OffdutyPurposeModelImpl _value,
      $Res Function(_$OffdutyPurposeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? description = null,
  }) {
    return _then(_$OffdutyPurposeModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OffdutyPurposeModelImpl implements _OffdutyPurposeModel {
  const _$OffdutyPurposeModelImpl(
      {@JsonKey(name: "code") this.code = "",
      @JsonKey(name: "desc") this.description = ""});

  factory _$OffdutyPurposeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffdutyPurposeModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final String code;
  @override
  @JsonKey(name: "desc")
  final String description;

  @override
  String toString() {
    return 'OffdutyPurposeModel(code: $code, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffdutyPurposeModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OffdutyPurposeModelImplCopyWith<_$OffdutyPurposeModelImpl> get copyWith =>
      __$$OffdutyPurposeModelImplCopyWithImpl<_$OffdutyPurposeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OffdutyPurposeModelImplToJson(
      this,
    );
  }
}

abstract class _OffdutyPurposeModel implements OffdutyPurposeModel {
  const factory _OffdutyPurposeModel(
          {@JsonKey(name: "code") final String code,
          @JsonKey(name: "desc") final String description}) =
      _$OffdutyPurposeModelImpl;

  factory _OffdutyPurposeModel.fromJson(Map<String, dynamic> json) =
      _$OffdutyPurposeModelImpl.fromJson;

  @override
  @JsonKey(name: "code")
  String get code;
  @override
  @JsonKey(name: "desc")
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$OffdutyPurposeModelImplCopyWith<_$OffdutyPurposeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
