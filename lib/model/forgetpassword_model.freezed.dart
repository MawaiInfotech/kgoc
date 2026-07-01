// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgetpassword_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForgetpasswordModel _$ForgetpasswordModelFromJson(Map<String, dynamic> json) {
  return _ForgetpasswordModel.fromJson(json);
}

/// @nodoc
mixin _$ForgetpasswordModel {
  String get status => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgetpasswordModelCopyWith<ForgetpasswordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetpasswordModelCopyWith<$Res> {
  factory $ForgetpasswordModelCopyWith(
          ForgetpasswordModel value, $Res Function(ForgetpasswordModel) then) =
      _$ForgetpasswordModelCopyWithImpl<$Res, ForgetpasswordModel>;
  @useResult
  $Res call({String status, String msg, String data});
}

/// @nodoc
class _$ForgetpasswordModelCopyWithImpl<$Res, $Val extends ForgetpasswordModel>
    implements $ForgetpasswordModelCopyWith<$Res> {
  _$ForgetpasswordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? msg = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgetpasswordModelImplCopyWith<$Res>
    implements $ForgetpasswordModelCopyWith<$Res> {
  factory _$$ForgetpasswordModelImplCopyWith(_$ForgetpasswordModelImpl value,
          $Res Function(_$ForgetpasswordModelImpl) then) =
      __$$ForgetpasswordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String msg, String data});
}

/// @nodoc
class __$$ForgetpasswordModelImplCopyWithImpl<$Res>
    extends _$ForgetpasswordModelCopyWithImpl<$Res, _$ForgetpasswordModelImpl>
    implements _$$ForgetpasswordModelImplCopyWith<$Res> {
  __$$ForgetpasswordModelImplCopyWithImpl(_$ForgetpasswordModelImpl _value,
      $Res Function(_$ForgetpasswordModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? msg = null,
    Object? data = null,
  }) {
    return _then(_$ForgetpasswordModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgetpasswordModelImpl implements _ForgetpasswordModel {
  const _$ForgetpasswordModelImpl(
      {this.status = "", this.msg = "", this.data = ""});

  factory _$ForgetpasswordModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgetpasswordModelImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String msg;
  @override
  @JsonKey()
  final String data;

  @override
  String toString() {
    return 'ForgetpasswordModel(status: $status, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetpasswordModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, msg, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetpasswordModelImplCopyWith<_$ForgetpasswordModelImpl> get copyWith =>
      __$$ForgetpasswordModelImplCopyWithImpl<_$ForgetpasswordModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgetpasswordModelImplToJson(
      this,
    );
  }
}

abstract class _ForgetpasswordModel implements ForgetpasswordModel {
  const factory _ForgetpasswordModel(
      {final String status,
      final String msg,
      final String data}) = _$ForgetpasswordModelImpl;

  factory _ForgetpasswordModel.fromJson(Map<String, dynamic> json) =
      _$ForgetpasswordModelImpl.fromJson;

  @override
  String get status;
  @override
  String get msg;
  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$ForgetpasswordModelImplCopyWith<_$ForgetpasswordModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
