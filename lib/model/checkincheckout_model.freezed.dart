// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkincheckout_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckinCheckoutModel _$CheckinCheckoutModelFromJson(Map<String, dynamic> json) {
  return _CheckinCheckoutModel.fromJson(json);
}

/// @nodoc
mixin _$CheckinCheckoutModel {
  String get address => throw _privateConstructorUsedError;
  String get punchin => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckinCheckoutModelCopyWith<CheckinCheckoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckinCheckoutModelCopyWith<$Res> {
  factory $CheckinCheckoutModelCopyWith(CheckinCheckoutModel value,
          $Res Function(CheckinCheckoutModel) then) =
      _$CheckinCheckoutModelCopyWithImpl<$Res, CheckinCheckoutModel>;
  @useResult
  $Res call({String address, String punchin, String message});
}

/// @nodoc
class _$CheckinCheckoutModelCopyWithImpl<$Res,
        $Val extends CheckinCheckoutModel>
    implements $CheckinCheckoutModelCopyWith<$Res> {
  _$CheckinCheckoutModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? punchin = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      punchin: null == punchin
          ? _value.punchin
          : punchin // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckinCheckoutModelImplCopyWith<$Res>
    implements $CheckinCheckoutModelCopyWith<$Res> {
  factory _$$CheckinCheckoutModelImplCopyWith(_$CheckinCheckoutModelImpl value,
          $Res Function(_$CheckinCheckoutModelImpl) then) =
      __$$CheckinCheckoutModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, String punchin, String message});
}

/// @nodoc
class __$$CheckinCheckoutModelImplCopyWithImpl<$Res>
    extends _$CheckinCheckoutModelCopyWithImpl<$Res, _$CheckinCheckoutModelImpl>
    implements _$$CheckinCheckoutModelImplCopyWith<$Res> {
  __$$CheckinCheckoutModelImplCopyWithImpl(_$CheckinCheckoutModelImpl _value,
      $Res Function(_$CheckinCheckoutModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? punchin = null,
    Object? message = null,
  }) {
    return _then(_$CheckinCheckoutModelImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      punchin: null == punchin
          ? _value.punchin
          : punchin // ignore: cast_nullable_to_non_nullable
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
class _$CheckinCheckoutModelImpl implements _CheckinCheckoutModel {
  const _$CheckinCheckoutModelImpl(
      {this.address = '', this.punchin = '', this.message = ''});

  factory _$CheckinCheckoutModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckinCheckoutModelImplFromJson(json);

  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String punchin;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'CheckinCheckoutModel(address: $address, punchin: $punchin, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckinCheckoutModelImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.punchin, punchin) || other.punchin == punchin) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, punchin, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckinCheckoutModelImplCopyWith<_$CheckinCheckoutModelImpl>
      get copyWith =>
          __$$CheckinCheckoutModelImplCopyWithImpl<_$CheckinCheckoutModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckinCheckoutModelImplToJson(
      this,
    );
  }
}

abstract class _CheckinCheckoutModel implements CheckinCheckoutModel {
  const factory _CheckinCheckoutModel(
      {final String address,
      final String punchin,
      final String message}) = _$CheckinCheckoutModelImpl;

  factory _CheckinCheckoutModel.fromJson(Map<String, dynamic> json) =
      _$CheckinCheckoutModelImpl.fromJson;

  @override
  String get address;
  @override
  String get punchin;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$CheckinCheckoutModelImplCopyWith<_$CheckinCheckoutModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
