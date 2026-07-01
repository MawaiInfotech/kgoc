// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teamleader_leaveApprove_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamLeaderLeaveApproveRejectModel _$TeamLeaderLeaveApproveRejectModelFromJson(
    Map<String, dynamic> json) {
  return _TeamLeaderLeaveApproveRejectModel.fromJson(json);
}

/// @nodoc
mixin _$TeamLeaderLeaveApproveRejectModel {
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamLeaderLeaveApproveRejectModelCopyWith<TeamLeaderLeaveApproveRejectModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamLeaderLeaveApproveRejectModelCopyWith<$Res> {
  factory $TeamLeaderLeaveApproveRejectModelCopyWith(
          TeamLeaderLeaveApproveRejectModel value,
          $Res Function(TeamLeaderLeaveApproveRejectModel) then) =
      _$TeamLeaderLeaveApproveRejectModelCopyWithImpl<$Res,
          TeamLeaderLeaveApproveRejectModel>;
  @useResult
  $Res call({String status, String message});
}

/// @nodoc
class _$TeamLeaderLeaveApproveRejectModelCopyWithImpl<$Res,
        $Val extends TeamLeaderLeaveApproveRejectModel>
    implements $TeamLeaderLeaveApproveRejectModelCopyWith<$Res> {
  _$TeamLeaderLeaveApproveRejectModelCopyWithImpl(this._value, this._then);

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
abstract class _$$TeamLeaderLeaveApproveRejectModelImplCopyWith<$Res>
    implements $TeamLeaderLeaveApproveRejectModelCopyWith<$Res> {
  factory _$$TeamLeaderLeaveApproveRejectModelImplCopyWith(
          _$TeamLeaderLeaveApproveRejectModelImpl value,
          $Res Function(_$TeamLeaderLeaveApproveRejectModelImpl) then) =
      __$$TeamLeaderLeaveApproveRejectModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String message});
}

/// @nodoc
class __$$TeamLeaderLeaveApproveRejectModelImplCopyWithImpl<$Res>
    extends _$TeamLeaderLeaveApproveRejectModelCopyWithImpl<$Res,
        _$TeamLeaderLeaveApproveRejectModelImpl>
    implements _$$TeamLeaderLeaveApproveRejectModelImplCopyWith<$Res> {
  __$$TeamLeaderLeaveApproveRejectModelImplCopyWithImpl(
      _$TeamLeaderLeaveApproveRejectModelImpl _value,
      $Res Function(_$TeamLeaderLeaveApproveRejectModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$TeamLeaderLeaveApproveRejectModelImpl(
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
class _$TeamLeaderLeaveApproveRejectModelImpl
    implements _TeamLeaderLeaveApproveRejectModel {
  const _$TeamLeaderLeaveApproveRejectModelImpl(
      {this.status = "", this.message = ""});

  factory _$TeamLeaderLeaveApproveRejectModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TeamLeaderLeaveApproveRejectModelImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'TeamLeaderLeaveApproveRejectModel(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamLeaderLeaveApproveRejectModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamLeaderLeaveApproveRejectModelImplCopyWith<
          _$TeamLeaderLeaveApproveRejectModelImpl>
      get copyWith => __$$TeamLeaderLeaveApproveRejectModelImplCopyWithImpl<
          _$TeamLeaderLeaveApproveRejectModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamLeaderLeaveApproveRejectModelImplToJson(
      this,
    );
  }
}

abstract class _TeamLeaderLeaveApproveRejectModel
    implements TeamLeaderLeaveApproveRejectModel {
  const factory _TeamLeaderLeaveApproveRejectModel(
      {final String status,
      final String message}) = _$TeamLeaderLeaveApproveRejectModelImpl;

  factory _TeamLeaderLeaveApproveRejectModel.fromJson(
          Map<String, dynamic> json) =
      _$TeamLeaderLeaveApproveRejectModelImpl.fromJson;

  @override
  String get status;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$TeamLeaderLeaveApproveRejectModelImplCopyWith<
          _$TeamLeaderLeaveApproveRejectModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
