// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dummyattendancemark_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DummyAttendanceModel _$DummyAttendanceModelFromJson(Map<String, dynamic> json) {
  return _DummyAttendanceModel.fromJson(json);
}

/// @nodoc
mixin _$DummyAttendanceModel {
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get punchin => throw _privateConstructorUsedError;
  String get punchout => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DummyAttendanceModelCopyWith<DummyAttendanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DummyAttendanceModelCopyWith<$Res> {
  factory $DummyAttendanceModelCopyWith(DummyAttendanceModel value,
          $Res Function(DummyAttendanceModel) then) =
      _$DummyAttendanceModelCopyWithImpl<$Res, DummyAttendanceModel>;
  @useResult
  $Res call(
      {String status,
      String message,
      String address,
      String punchin,
      String punchout});
}

/// @nodoc
class _$DummyAttendanceModelCopyWithImpl<$Res,
        $Val extends DummyAttendanceModel>
    implements $DummyAttendanceModelCopyWith<$Res> {
  _$DummyAttendanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? address = null,
    Object? punchin = null,
    Object? punchout = null,
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
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      punchin: null == punchin
          ? _value.punchin
          : punchin // ignore: cast_nullable_to_non_nullable
              as String,
      punchout: null == punchout
          ? _value.punchout
          : punchout // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DummyAttendanceModelImplCopyWith<$Res>
    implements $DummyAttendanceModelCopyWith<$Res> {
  factory _$$DummyAttendanceModelImplCopyWith(_$DummyAttendanceModelImpl value,
          $Res Function(_$DummyAttendanceModelImpl) then) =
      __$$DummyAttendanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status,
      String message,
      String address,
      String punchin,
      String punchout});
}

/// @nodoc
class __$$DummyAttendanceModelImplCopyWithImpl<$Res>
    extends _$DummyAttendanceModelCopyWithImpl<$Res, _$DummyAttendanceModelImpl>
    implements _$$DummyAttendanceModelImplCopyWith<$Res> {
  __$$DummyAttendanceModelImplCopyWithImpl(_$DummyAttendanceModelImpl _value,
      $Res Function(_$DummyAttendanceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? address = null,
    Object? punchin = null,
    Object? punchout = null,
  }) {
    return _then(_$DummyAttendanceModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      punchin: null == punchin
          ? _value.punchin
          : punchin // ignore: cast_nullable_to_non_nullable
              as String,
      punchout: null == punchout
          ? _value.punchout
          : punchout // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DummyAttendanceModelImpl implements _DummyAttendanceModel {
  const _$DummyAttendanceModelImpl(
      {this.status = "",
      this.message = "",
      this.address = "",
      this.punchin = "",
      this.punchout = ""});

  factory _$DummyAttendanceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DummyAttendanceModelImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String punchin;
  @override
  @JsonKey()
  final String punchout;

  @override
  String toString() {
    return 'DummyAttendanceModel(status: $status, message: $message, address: $address, punchin: $punchin, punchout: $punchout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DummyAttendanceModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.punchin, punchin) || other.punchin == punchin) &&
            (identical(other.punchout, punchout) ||
                other.punchout == punchout));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, message, address, punchin, punchout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DummyAttendanceModelImplCopyWith<_$DummyAttendanceModelImpl>
      get copyWith =>
          __$$DummyAttendanceModelImplCopyWithImpl<_$DummyAttendanceModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DummyAttendanceModelImplToJson(
      this,
    );
  }
}

abstract class _DummyAttendanceModel implements DummyAttendanceModel {
  const factory _DummyAttendanceModel(
      {final String status,
      final String message,
      final String address,
      final String punchin,
      final String punchout}) = _$DummyAttendanceModelImpl;

  factory _DummyAttendanceModel.fromJson(Map<String, dynamic> json) =
      _$DummyAttendanceModelImpl.fromJson;

  @override
  String get status;
  @override
  String get message;
  @override
  String get address;
  @override
  String get punchin;
  @override
  String get punchout;
  @override
  @JsonKey(ignore: true)
  _$$DummyAttendanceModelImplCopyWith<_$DummyAttendanceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
