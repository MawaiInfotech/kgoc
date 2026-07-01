// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offdutystatus_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OffdutyStatusModel _$OffdutyStatusModelFromJson(Map<String, dynamic> json) {
  return _OffdutyStatusModel.fromJson(json);
}

/// @nodoc
mixin _$OffdutyStatusModel {
  @JsonKey(name: "code")
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "desc")
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OffdutyStatusModelCopyWith<OffdutyStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffdutyStatusModelCopyWith<$Res> {
  factory $OffdutyStatusModelCopyWith(
          OffdutyStatusModel value, $Res Function(OffdutyStatusModel) then) =
      _$OffdutyStatusModelCopyWithImpl<$Res, OffdutyStatusModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String code,
      @JsonKey(name: "desc") String description});
}

/// @nodoc
class _$OffdutyStatusModelCopyWithImpl<$Res, $Val extends OffdutyStatusModel>
    implements $OffdutyStatusModelCopyWith<$Res> {
  _$OffdutyStatusModelCopyWithImpl(this._value, this._then);

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
abstract class _$$OffdutyStatusModelImplCopyWith<$Res>
    implements $OffdutyStatusModelCopyWith<$Res> {
  factory _$$OffdutyStatusModelImplCopyWith(_$OffdutyStatusModelImpl value,
          $Res Function(_$OffdutyStatusModelImpl) then) =
      __$$OffdutyStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") String code,
      @JsonKey(name: "desc") String description});
}

/// @nodoc
class __$$OffdutyStatusModelImplCopyWithImpl<$Res>
    extends _$OffdutyStatusModelCopyWithImpl<$Res, _$OffdutyStatusModelImpl>
    implements _$$OffdutyStatusModelImplCopyWith<$Res> {
  __$$OffdutyStatusModelImplCopyWithImpl(_$OffdutyStatusModelImpl _value,
      $Res Function(_$OffdutyStatusModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? description = null,
  }) {
    return _then(_$OffdutyStatusModelImpl(
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
class _$OffdutyStatusModelImpl implements _OffdutyStatusModel {
  const _$OffdutyStatusModelImpl(
      {@JsonKey(name: "code") this.code = "",
      @JsonKey(name: "desc") this.description = ""});

  factory _$OffdutyStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffdutyStatusModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final String code;
  @override
  @JsonKey(name: "desc")
  final String description;

  @override
  String toString() {
    return 'OffdutyStatusModel(code: $code, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffdutyStatusModelImpl &&
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
  _$$OffdutyStatusModelImplCopyWith<_$OffdutyStatusModelImpl> get copyWith =>
      __$$OffdutyStatusModelImplCopyWithImpl<_$OffdutyStatusModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OffdutyStatusModelImplToJson(
      this,
    );
  }
}

abstract class _OffdutyStatusModel implements OffdutyStatusModel {
  const factory _OffdutyStatusModel(
          {@JsonKey(name: "code") final String code,
          @JsonKey(name: "desc") final String description}) =
      _$OffdutyStatusModelImpl;

  factory _OffdutyStatusModel.fromJson(Map<String, dynamic> json) =
      _$OffdutyStatusModelImpl.fromJson;

  @override
  @JsonKey(name: "code")
  String get code;
  @override
  @JsonKey(name: "desc")
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$OffdutyStatusModelImplCopyWith<_$OffdutyStatusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
