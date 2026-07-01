// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'approvewfh_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApproveWfhModel _$ApproveWfhModelFromJson(Map<String, dynamic> json) {
  return _ApproveWfhModel.fromJson(json);
}

/// @nodoc
mixin _$ApproveWfhModel {
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApproveWfhModelCopyWith<ApproveWfhModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApproveWfhModelCopyWith<$Res> {
  factory $ApproveWfhModelCopyWith(
          ApproveWfhModel value, $Res Function(ApproveWfhModel) then) =
      _$ApproveWfhModelCopyWithImpl<$Res, ApproveWfhModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String status,
      @JsonKey(name: "message") String message});
}

/// @nodoc
class _$ApproveWfhModelCopyWithImpl<$Res, $Val extends ApproveWfhModel>
    implements $ApproveWfhModelCopyWith<$Res> {
  _$ApproveWfhModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ApproveWfhModelImplCopyWith<$Res>
    implements $ApproveWfhModelCopyWith<$Res> {
  factory _$$ApproveWfhModelImplCopyWith(_$ApproveWfhModelImpl value,
          $Res Function(_$ApproveWfhModelImpl) then) =
      __$$ApproveWfhModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String status,
      @JsonKey(name: "message") String message});
}

/// @nodoc
class __$$ApproveWfhModelImplCopyWithImpl<$Res>
    extends _$ApproveWfhModelCopyWithImpl<$Res, _$ApproveWfhModelImpl>
    implements _$$ApproveWfhModelImplCopyWith<$Res> {
  __$$ApproveWfhModelImplCopyWithImpl(
      _$ApproveWfhModelImpl _value, $Res Function(_$ApproveWfhModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$ApproveWfhModelImpl(
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
class _$ApproveWfhModelImpl implements _ApproveWfhModel {
  const _$ApproveWfhModelImpl(
      {@JsonKey(name: "status") this.status = "",
      @JsonKey(name: "message") this.message = ""});

  factory _$ApproveWfhModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApproveWfhModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "message")
  final String message;

  @override
  String toString() {
    return 'ApproveWfhModel(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproveWfhModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApproveWfhModelImplCopyWith<_$ApproveWfhModelImpl> get copyWith =>
      __$$ApproveWfhModelImplCopyWithImpl<_$ApproveWfhModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApproveWfhModelImplToJson(
      this,
    );
  }
}

abstract class _ApproveWfhModel implements ApproveWfhModel {
  const factory _ApproveWfhModel(
      {@JsonKey(name: "status") final String status,
      @JsonKey(name: "message") final String message}) = _$ApproveWfhModelImpl;

  factory _ApproveWfhModel.fromJson(Map<String, dynamic> json) =
      _$ApproveWfhModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ApproveWfhModelImplCopyWith<_$ApproveWfhModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
