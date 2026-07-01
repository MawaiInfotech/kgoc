// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dummysignup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DummySignupModel _$DummySignupModelFromJson(Map<String, dynamic> json) {
  return _DummySignupModel.fromJson(json);
}

/// @nodoc
mixin _$DummySignupModel {
  String get status => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DummySignupModelCopyWith<DummySignupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DummySignupModelCopyWith<$Res> {
  factory $DummySignupModelCopyWith(
          DummySignupModel value, $Res Function(DummySignupModel) then) =
      _$DummySignupModelCopyWithImpl<$Res, DummySignupModel>;
  @useResult
  $Res call({String status, String msg, String user});
}

/// @nodoc
class _$DummySignupModelCopyWithImpl<$Res, $Val extends DummySignupModel>
    implements $DummySignupModelCopyWith<$Res> {
  _$DummySignupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? msg = null,
    Object? user = null,
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
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DummySignupModelImplCopyWith<$Res>
    implements $DummySignupModelCopyWith<$Res> {
  factory _$$DummySignupModelImplCopyWith(_$DummySignupModelImpl value,
          $Res Function(_$DummySignupModelImpl) then) =
      __$$DummySignupModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String msg, String user});
}

/// @nodoc
class __$$DummySignupModelImplCopyWithImpl<$Res>
    extends _$DummySignupModelCopyWithImpl<$Res, _$DummySignupModelImpl>
    implements _$$DummySignupModelImplCopyWith<$Res> {
  __$$DummySignupModelImplCopyWithImpl(_$DummySignupModelImpl _value,
      $Res Function(_$DummySignupModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? msg = null,
    Object? user = null,
  }) {
    return _then(_$DummySignupModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DummySignupModelImpl implements _DummySignupModel {
  const _$DummySignupModelImpl(
      {this.status = "", this.msg = "", this.user = ""});

  factory _$DummySignupModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DummySignupModelImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String msg;
  @override
  @JsonKey()
  final String user;

  @override
  String toString() {
    return 'DummySignupModel(status: $status, msg: $msg, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DummySignupModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, msg, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DummySignupModelImplCopyWith<_$DummySignupModelImpl> get copyWith =>
      __$$DummySignupModelImplCopyWithImpl<_$DummySignupModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DummySignupModelImplToJson(
      this,
    );
  }
}

abstract class _DummySignupModel implements DummySignupModel {
  const factory _DummySignupModel(
      {final String status,
      final String msg,
      final String user}) = _$DummySignupModelImpl;

  factory _DummySignupModel.fromJson(Map<String, dynamic> json) =
      _$DummySignupModelImpl.fromJson;

  @override
  String get status;
  @override
  String get msg;
  @override
  String get user;
  @override
  @JsonKey(ignore: true)
  _$$DummySignupModelImplCopyWith<_$DummySignupModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
