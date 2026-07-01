// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sendwishes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendwishesModel _$SendwishesModelFromJson(Map<String, dynamic> json) {
  return _SendwishesModel.fromJson(json);
}

/// @nodoc
mixin _$SendwishesModel {
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendwishesModelCopyWith<SendwishesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendwishesModelCopyWith<$Res> {
  factory $SendwishesModelCopyWith(
          SendwishesModel value, $Res Function(SendwishesModel) then) =
      _$SendwishesModelCopyWithImpl<$Res, SendwishesModel>;
  @useResult
  $Res call({String status, String message});
}

/// @nodoc
class _$SendwishesModelCopyWithImpl<$Res, $Val extends SendwishesModel>
    implements $SendwishesModelCopyWith<$Res> {
  _$SendwishesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendwishesModelImplCopyWith<$Res>
    implements $SendwishesModelCopyWith<$Res> {
  factory _$$SendwishesModelImplCopyWith(_$SendwishesModelImpl value,
          $Res Function(_$SendwishesModelImpl) then) =
      __$$SendwishesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String message});
}

/// @nodoc
class __$$SendwishesModelImplCopyWithImpl<$Res>
    extends _$SendwishesModelCopyWithImpl<$Res, _$SendwishesModelImpl>
    implements _$$SendwishesModelImplCopyWith<$Res> {
  __$$SendwishesModelImplCopyWithImpl(
      _$SendwishesModelImpl _value, $Res Function(_$SendwishesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$SendwishesModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendwishesModelImpl implements _SendwishesModel {
  const _$SendwishesModelImpl({this.status = "", this.message = ""});

  factory _$SendwishesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendwishesModelImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'SendwishesModel(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendwishesModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendwishesModelImplCopyWith<_$SendwishesModelImpl> get copyWith =>
      __$$SendwishesModelImplCopyWithImpl<_$SendwishesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendwishesModelImplToJson(
      this,
    );
  }
}

abstract class _SendwishesModel implements SendwishesModel {
  const factory _SendwishesModel({final String status, final String message}) =
      _$SendwishesModelImpl;

  factory _SendwishesModel.fromJson(Map<String, dynamic> json) =
      _$SendwishesModelImpl.fromJson;

  @override
  String get status;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SendwishesModelImplCopyWith<_$SendwishesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
