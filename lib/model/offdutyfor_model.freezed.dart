// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offdutyfor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OffdutyForModel _$OffdutyForModelFromJson(Map<String, dynamic> json) {
  return _OffdutyForModel.fromJson(json);
}

/// @nodoc
mixin _$OffdutyForModel {
  @JsonKey(name: "code")
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "desc")
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OffdutyForModelCopyWith<OffdutyForModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffdutyForModelCopyWith<$Res> {
  factory $OffdutyForModelCopyWith(
          OffdutyForModel value, $Res Function(OffdutyForModel) then) =
      _$OffdutyForModelCopyWithImpl<$Res, OffdutyForModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String code,
      @JsonKey(name: "desc") String description});
}

/// @nodoc
class _$OffdutyForModelCopyWithImpl<$Res, $Val extends OffdutyForModel>
    implements $OffdutyForModelCopyWith<$Res> {
  _$OffdutyForModelCopyWithImpl(this._value, this._then);

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
abstract class _$$OffdutyForModelImplCopyWith<$Res>
    implements $OffdutyForModelCopyWith<$Res> {
  factory _$$OffdutyForModelImplCopyWith(_$OffdutyForModelImpl value,
          $Res Function(_$OffdutyForModelImpl) then) =
      __$$OffdutyForModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") String code,
      @JsonKey(name: "desc") String description});
}

/// @nodoc
class __$$OffdutyForModelImplCopyWithImpl<$Res>
    extends _$OffdutyForModelCopyWithImpl<$Res, _$OffdutyForModelImpl>
    implements _$$OffdutyForModelImplCopyWith<$Res> {
  __$$OffdutyForModelImplCopyWithImpl(
      _$OffdutyForModelImpl _value, $Res Function(_$OffdutyForModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? description = null,
  }) {
    return _then(_$OffdutyForModelImpl(
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
class _$OffdutyForModelImpl implements _OffdutyForModel {
  const _$OffdutyForModelImpl(
      {@JsonKey(name: "code") this.code = "",
      @JsonKey(name: "desc") this.description = ""});

  factory _$OffdutyForModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffdutyForModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final String code;
  @override
  @JsonKey(name: "desc")
  final String description;

  @override
  String toString() {
    return 'OffdutyForModel(code: $code, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffdutyForModelImpl &&
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
  _$$OffdutyForModelImplCopyWith<_$OffdutyForModelImpl> get copyWith =>
      __$$OffdutyForModelImplCopyWithImpl<_$OffdutyForModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OffdutyForModelImplToJson(
      this,
    );
  }
}

abstract class _OffdutyForModel implements OffdutyForModel {
  const factory _OffdutyForModel(
      {@JsonKey(name: "code") final String code,
      @JsonKey(name: "desc") final String description}) = _$OffdutyForModelImpl;

  factory _OffdutyForModel.fromJson(Map<String, dynamic> json) =
      _$OffdutyForModelImpl.fromJson;

  @override
  @JsonKey(name: "code")
  String get code;
  @override
  @JsonKey(name: "desc")
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$OffdutyForModelImplCopyWith<_$OffdutyForModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
