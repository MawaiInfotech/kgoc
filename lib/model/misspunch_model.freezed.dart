// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'misspunch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MisspunchModel _$MisspunchModelFromJson(Map<String, dynamic> json) {
  return _MisspunchModel.fromJson(json);
}

/// @nodoc
mixin _$MisspunchModel {
  @JsonKey(name: "punch_in_dt")
  String get punchDate => throw _privateConstructorUsedError;
  @JsonKey(name: "in_time")
  String get inTime => throw _privateConstructorUsedError;
  @JsonKey(name: "out_time")
  String get outTime => throw _privateConstructorUsedError;
  @JsonKey(name: "reason")
  String get reason => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MisspunchModelCopyWith<MisspunchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MisspunchModelCopyWith<$Res> {
  factory $MisspunchModelCopyWith(
          MisspunchModel value, $Res Function(MisspunchModel) then) =
      _$MisspunchModelCopyWithImpl<$Res, MisspunchModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "punch_in_dt") String punchDate,
      @JsonKey(name: "in_time") String inTime,
      @JsonKey(name: "out_time") String outTime,
      @JsonKey(name: "reason") String reason,
      @JsonKey(name: "status") String status});
}

/// @nodoc
class _$MisspunchModelCopyWithImpl<$Res, $Val extends MisspunchModel>
    implements $MisspunchModelCopyWith<$Res> {
  _$MisspunchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? punchDate = null,
    Object? inTime = null,
    Object? outTime = null,
    Object? reason = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      punchDate: null == punchDate
          ? _value.punchDate
          : punchDate // ignore: cast_nullable_to_non_nullable
              as String,
      inTime: null == inTime
          ? _value.inTime
          : inTime // ignore: cast_nullable_to_non_nullable
              as String,
      outTime: null == outTime
          ? _value.outTime
          : outTime // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MisspunchModelImplCopyWith<$Res>
    implements $MisspunchModelCopyWith<$Res> {
  factory _$$MisspunchModelImplCopyWith(_$MisspunchModelImpl value,
          $Res Function(_$MisspunchModelImpl) then) =
      __$$MisspunchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "punch_in_dt") String punchDate,
      @JsonKey(name: "in_time") String inTime,
      @JsonKey(name: "out_time") String outTime,
      @JsonKey(name: "reason") String reason,
      @JsonKey(name: "status") String status});
}

/// @nodoc
class __$$MisspunchModelImplCopyWithImpl<$Res>
    extends _$MisspunchModelCopyWithImpl<$Res, _$MisspunchModelImpl>
    implements _$$MisspunchModelImplCopyWith<$Res> {
  __$$MisspunchModelImplCopyWithImpl(
      _$MisspunchModelImpl _value, $Res Function(_$MisspunchModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? punchDate = null,
    Object? inTime = null,
    Object? outTime = null,
    Object? reason = null,
    Object? status = null,
  }) {
    return _then(_$MisspunchModelImpl(
      punchDate: null == punchDate
          ? _value.punchDate
          : punchDate // ignore: cast_nullable_to_non_nullable
              as String,
      inTime: null == inTime
          ? _value.inTime
          : inTime // ignore: cast_nullable_to_non_nullable
              as String,
      outTime: null == outTime
          ? _value.outTime
          : outTime // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MisspunchModelImpl implements _MisspunchModel {
  const _$MisspunchModelImpl(
      {@JsonKey(name: "punch_in_dt") this.punchDate = "",
      @JsonKey(name: "in_time") this.inTime = "",
      @JsonKey(name: "out_time") this.outTime = "",
      @JsonKey(name: "reason") this.reason = "",
      @JsonKey(name: "status") this.status = ""});

  factory _$MisspunchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MisspunchModelImplFromJson(json);

  @override
  @JsonKey(name: "punch_in_dt")
  final String punchDate;
  @override
  @JsonKey(name: "in_time")
  final String inTime;
  @override
  @JsonKey(name: "out_time")
  final String outTime;
  @override
  @JsonKey(name: "reason")
  final String reason;
  @override
  @JsonKey(name: "status")
  final String status;

  @override
  String toString() {
    return 'MisspunchModel(punchDate: $punchDate, inTime: $inTime, outTime: $outTime, reason: $reason, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MisspunchModelImpl &&
            (identical(other.punchDate, punchDate) ||
                other.punchDate == punchDate) &&
            (identical(other.inTime, inTime) || other.inTime == inTime) &&
            (identical(other.outTime, outTime) || other.outTime == outTime) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, punchDate, inTime, outTime, reason, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MisspunchModelImplCopyWith<_$MisspunchModelImpl> get copyWith =>
      __$$MisspunchModelImplCopyWithImpl<_$MisspunchModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MisspunchModelImplToJson(
      this,
    );
  }
}

abstract class _MisspunchModel implements MisspunchModel {
  const factory _MisspunchModel(
      {@JsonKey(name: "punch_in_dt") final String punchDate,
      @JsonKey(name: "in_time") final String inTime,
      @JsonKey(name: "out_time") final String outTime,
      @JsonKey(name: "reason") final String reason,
      @JsonKey(name: "status") final String status}) = _$MisspunchModelImpl;

  factory _MisspunchModel.fromJson(Map<String, dynamic> json) =
      _$MisspunchModelImpl.fromJson;

  @override
  @JsonKey(name: "punch_in_dt")
  String get punchDate;
  @override
  @JsonKey(name: "in_time")
  String get inTime;
  @override
  @JsonKey(name: "out_time")
  String get outTime;
  @override
  @JsonKey(name: "reason")
  String get reason;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$MisspunchModelImplCopyWith<_$MisspunchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
