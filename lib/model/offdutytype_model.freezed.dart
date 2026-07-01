// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offdutytype_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OffdutyTypeModel _$OffdutyTypeModelFromJson(Map<String, dynamic> json) {
  return _OffdutyTypeModel.fromJson(json);
}

/// @nodoc
mixin _$OffdutyTypeModel {
  @JsonKey(name: "control_code")
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OffdutyTypeModelCopyWith<OffdutyTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffdutyTypeModelCopyWith<$Res> {
  factory $OffdutyTypeModelCopyWith(
          OffdutyTypeModel value, $Res Function(OffdutyTypeModel) then) =
      _$OffdutyTypeModelCopyWithImpl<$Res, OffdutyTypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "control_code") String code,
      @JsonKey(name: "description") String description});
}

/// @nodoc
class _$OffdutyTypeModelCopyWithImpl<$Res, $Val extends OffdutyTypeModel>
    implements $OffdutyTypeModelCopyWith<$Res> {
  _$OffdutyTypeModelCopyWithImpl(this._value, this._then);

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
abstract class _$$OffdutyTypeModelImplCopyWith<$Res>
    implements $OffdutyTypeModelCopyWith<$Res> {
  factory _$$OffdutyTypeModelImplCopyWith(_$OffdutyTypeModelImpl value,
          $Res Function(_$OffdutyTypeModelImpl) then) =
      __$$OffdutyTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "control_code") String code,
      @JsonKey(name: "description") String description});
}

/// @nodoc
class __$$OffdutyTypeModelImplCopyWithImpl<$Res>
    extends _$OffdutyTypeModelCopyWithImpl<$Res, _$OffdutyTypeModelImpl>
    implements _$$OffdutyTypeModelImplCopyWith<$Res> {
  __$$OffdutyTypeModelImplCopyWithImpl(_$OffdutyTypeModelImpl _value,
      $Res Function(_$OffdutyTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? description = null,
  }) {
    return _then(_$OffdutyTypeModelImpl(
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
class _$OffdutyTypeModelImpl implements _OffdutyTypeModel {
  const _$OffdutyTypeModelImpl(
      {@JsonKey(name: "control_code") this.code = "",
      @JsonKey(name: "description") this.description = ""});

  factory _$OffdutyTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffdutyTypeModelImplFromJson(json);

  @override
  @JsonKey(name: "control_code")
  final String code;
  @override
  @JsonKey(name: "description")
  final String description;

  @override
  String toString() {
    return 'OffdutyTypeModel(code: $code, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffdutyTypeModelImpl &&
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
  _$$OffdutyTypeModelImplCopyWith<_$OffdutyTypeModelImpl> get copyWith =>
      __$$OffdutyTypeModelImplCopyWithImpl<_$OffdutyTypeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OffdutyTypeModelImplToJson(
      this,
    );
  }
}

abstract class _OffdutyTypeModel implements OffdutyTypeModel {
  const factory _OffdutyTypeModel(
          {@JsonKey(name: "control_code") final String code,
          @JsonKey(name: "description") final String description}) =
      _$OffdutyTypeModelImpl;

  factory _OffdutyTypeModel.fromJson(Map<String, dynamic> json) =
      _$OffdutyTypeModelImpl.fromJson;

  @override
  @JsonKey(name: "control_code")
  String get code;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$OffdutyTypeModelImplCopyWith<_$OffdutyTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
