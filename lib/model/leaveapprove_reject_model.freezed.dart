// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaveapprove_reject_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeaveApproveRejectModel _$LeaveApproveRejectModelFromJson(
    Map<String, dynamic> json) {
  return _LeaveApproveRejectModel.fromJson(json);
}

/// @nodoc
mixin _$LeaveApproveRejectModel {
  @JsonKey(name: "status")
  dynamic get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  dynamic get message => throw _privateConstructorUsedError;
  @JsonKey(name: "result")
  dynamic get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaveApproveRejectModelCopyWith<LeaveApproveRejectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveApproveRejectModelCopyWith<$Res> {
  factory $LeaveApproveRejectModelCopyWith(LeaveApproveRejectModel value,
          $Res Function(LeaveApproveRejectModel) then) =
      _$LeaveApproveRejectModelCopyWithImpl<$Res, LeaveApproveRejectModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") dynamic status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "result") dynamic result});
}

/// @nodoc
class _$LeaveApproveRejectModelCopyWithImpl<$Res,
        $Val extends LeaveApproveRejectModel>
    implements $LeaveApproveRejectModelCopyWith<$Res> {
  _$LeaveApproveRejectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaveApproveRejectModelImplCopyWith<$Res>
    implements $LeaveApproveRejectModelCopyWith<$Res> {
  factory _$$LeaveApproveRejectModelImplCopyWith(
          _$LeaveApproveRejectModelImpl value,
          $Res Function(_$LeaveApproveRejectModelImpl) then) =
      __$$LeaveApproveRejectModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") dynamic status,
      @JsonKey(name: "message") dynamic message,
      @JsonKey(name: "result") dynamic result});
}

/// @nodoc
class __$$LeaveApproveRejectModelImplCopyWithImpl<$Res>
    extends _$LeaveApproveRejectModelCopyWithImpl<$Res,
        _$LeaveApproveRejectModelImpl>
    implements _$$LeaveApproveRejectModelImplCopyWith<$Res> {
  __$$LeaveApproveRejectModelImplCopyWithImpl(
      _$LeaveApproveRejectModelImpl _value,
      $Res Function(_$LeaveApproveRejectModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? result = freezed,
  }) {
    return _then(_$LeaveApproveRejectModelImpl(
      status: freezed == status ? _value.status! : status,
      message: freezed == message ? _value.message! : message,
      result: freezed == result ? _value.result! : result,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveApproveRejectModelImpl implements _LeaveApproveRejectModel {
  const _$LeaveApproveRejectModelImpl(
      {@JsonKey(name: "status") this.status = "",
      @JsonKey(name: "message") this.message = "",
      @JsonKey(name: "result") this.result = ""});

  factory _$LeaveApproveRejectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveApproveRejectModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final dynamic status;
  @override
  @JsonKey(name: "message")
  final dynamic message;
  @override
  @JsonKey(name: "result")
  final dynamic result;

  @override
  String toString() {
    return 'LeaveApproveRejectModel(status: $status, message: $message, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveApproveRejectModelImpl &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveApproveRejectModelImplCopyWith<_$LeaveApproveRejectModelImpl>
      get copyWith => __$$LeaveApproveRejectModelImplCopyWithImpl<
          _$LeaveApproveRejectModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveApproveRejectModelImplToJson(
      this,
    );
  }
}

abstract class _LeaveApproveRejectModel implements LeaveApproveRejectModel {
  const factory _LeaveApproveRejectModel(
          {@JsonKey(name: "status") final dynamic status,
          @JsonKey(name: "message") final dynamic message,
          @JsonKey(name: "result") final dynamic result}) =
      _$LeaveApproveRejectModelImpl;

  factory _LeaveApproveRejectModel.fromJson(Map<String, dynamic> json) =
      _$LeaveApproveRejectModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  dynamic get status;
  @override
  @JsonKey(name: "message")
  dynamic get message;
  @override
  @JsonKey(name: "result")
  dynamic get result;
  @override
  @JsonKey(ignore: true)
  _$$LeaveApproveRejectModelImplCopyWith<_$LeaveApproveRejectModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
