// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'applyleave_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApplyyLeaveModel _$ApplyyLeaveModelFromJson(Map<String, dynamic> json) {
  return _ApplyyLeaveModel.fromJson(json);
}

/// @nodoc
mixin _$ApplyyLeaveModel {
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplyyLeaveModelCopyWith<ApplyyLeaveModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplyyLeaveModelCopyWith<$Res> {
  factory $ApplyyLeaveModelCopyWith(
          ApplyyLeaveModel value, $Res Function(ApplyyLeaveModel) then) =
      _$ApplyyLeaveModelCopyWithImpl<$Res, ApplyyLeaveModel>;
  @useResult
  $Res call({String status, String message});
}

/// @nodoc
class _$ApplyyLeaveModelCopyWithImpl<$Res, $Val extends ApplyyLeaveModel>
    implements $ApplyyLeaveModelCopyWith<$Res> {
  _$ApplyyLeaveModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ApplyyLeaveModelImplCopyWith<$Res>
    implements $ApplyyLeaveModelCopyWith<$Res> {
  factory _$$ApplyyLeaveModelImplCopyWith(_$ApplyyLeaveModelImpl value,
          $Res Function(_$ApplyyLeaveModelImpl) then) =
      __$$ApplyyLeaveModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String message});
}

/// @nodoc
class __$$ApplyyLeaveModelImplCopyWithImpl<$Res>
    extends _$ApplyyLeaveModelCopyWithImpl<$Res, _$ApplyyLeaveModelImpl>
    implements _$$ApplyyLeaveModelImplCopyWith<$Res> {
  __$$ApplyyLeaveModelImplCopyWithImpl(_$ApplyyLeaveModelImpl _value,
      $Res Function(_$ApplyyLeaveModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$ApplyyLeaveModelImpl(
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
class _$ApplyyLeaveModelImpl implements _ApplyyLeaveModel {
  const _$ApplyyLeaveModelImpl({this.status = "", this.message = ""});

  factory _$ApplyyLeaveModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApplyyLeaveModelImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ApplyyLeaveModel(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplyyLeaveModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplyyLeaveModelImplCopyWith<_$ApplyyLeaveModelImpl> get copyWith =>
      __$$ApplyyLeaveModelImplCopyWithImpl<_$ApplyyLeaveModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApplyyLeaveModelImplToJson(
      this,
    );
  }
}

abstract class _ApplyyLeaveModel implements ApplyyLeaveModel {
  const factory _ApplyyLeaveModel({final String status, final String message}) =
      _$ApplyyLeaveModelImpl;

  factory _ApplyyLeaveModel.fromJson(Map<String, dynamic> json) =
      _$ApplyyLeaveModelImpl.fromJson;

  @override
  String get status;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ApplyyLeaveModelImplCopyWith<_$ApplyyLeaveModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
