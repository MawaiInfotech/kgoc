// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offduty_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OffdutyDataModel _$OffdutyDataModelFromJson(Map<String, dynamic> json) {
  return _OffdutyDataModel.fromJson(json);
}

/// @nodoc
mixin _$OffdutyDataModel {
  @JsonKey(name: "code")
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "desc")
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OffdutyDataModelCopyWith<OffdutyDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffdutyDataModelCopyWith<$Res> {
  factory $OffdutyDataModelCopyWith(
          OffdutyDataModel value, $Res Function(OffdutyDataModel) then) =
      _$OffdutyDataModelCopyWithImpl<$Res, OffdutyDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String code,
      @JsonKey(name: "desc") String description});
}

/// @nodoc
class _$OffdutyDataModelCopyWithImpl<$Res, $Val extends OffdutyDataModel>
    implements $OffdutyDataModelCopyWith<$Res> {
  _$OffdutyDataModelCopyWithImpl(this._value, this._then);

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
abstract class _$$OffdutyDataModelImplCopyWith<$Res>
    implements $OffdutyDataModelCopyWith<$Res> {
  factory _$$OffdutyDataModelImplCopyWith(_$OffdutyDataModelImpl value,
          $Res Function(_$OffdutyDataModelImpl) then) =
      __$$OffdutyDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") String code,
      @JsonKey(name: "desc") String description});
}

/// @nodoc
class __$$OffdutyDataModelImplCopyWithImpl<$Res>
    extends _$OffdutyDataModelCopyWithImpl<$Res, _$OffdutyDataModelImpl>
    implements _$$OffdutyDataModelImplCopyWith<$Res> {
  __$$OffdutyDataModelImplCopyWithImpl(_$OffdutyDataModelImpl _value,
      $Res Function(_$OffdutyDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? description = null,
  }) {
    return _then(_$OffdutyDataModelImpl(
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
class _$OffdutyDataModelImpl implements _OffdutyDataModel {
  const _$OffdutyDataModelImpl(
      {@JsonKey(name: "code") this.code = "",
      @JsonKey(name: "desc") this.description = ""});

  factory _$OffdutyDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffdutyDataModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final String code;
  @override
  @JsonKey(name: "desc")
  final String description;

  @override
  String toString() {
    return 'OffdutyDataModel(code: $code, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffdutyDataModelImpl &&
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
  _$$OffdutyDataModelImplCopyWith<_$OffdutyDataModelImpl> get copyWith =>
      __$$OffdutyDataModelImplCopyWithImpl<_$OffdutyDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OffdutyDataModelImplToJson(
      this,
    );
  }
}

abstract class _OffdutyDataModel implements OffdutyDataModel {
  const factory _OffdutyDataModel(
          {@JsonKey(name: "code") final String code,
          @JsonKey(name: "desc") final String description}) =
      _$OffdutyDataModelImpl;

  factory _OffdutyDataModel.fromJson(Map<String, dynamic> json) =
      _$OffdutyDataModelImpl.fromJson;

  @override
  @JsonKey(name: "code")
  String get code;
  @override
  @JsonKey(name: "desc")
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$OffdutyDataModelImplCopyWith<_$OffdutyDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
