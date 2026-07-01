// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offdutyclientlist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OffdutyClientListModel _$OffdutyClientListModelFromJson(
    Map<String, dynamic> json) {
  return _OffdutyClientListModel.fromJson(json);
}

/// @nodoc
mixin _$OffdutyClientListModel {
  @JsonKey(name: "client_cd")
  String get clientCode => throw _privateConstructorUsedError;
  @JsonKey(name: "client_name")
  String get clientName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OffdutyClientListModelCopyWith<OffdutyClientListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffdutyClientListModelCopyWith<$Res> {
  factory $OffdutyClientListModelCopyWith(OffdutyClientListModel value,
          $Res Function(OffdutyClientListModel) then) =
      _$OffdutyClientListModelCopyWithImpl<$Res, OffdutyClientListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "client_cd") String clientCode,
      @JsonKey(name: "client_name") String clientName});
}

/// @nodoc
class _$OffdutyClientListModelCopyWithImpl<$Res,
        $Val extends OffdutyClientListModel>
    implements $OffdutyClientListModelCopyWith<$Res> {
  _$OffdutyClientListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientCode = null,
    Object? clientName = null,
  }) {
    return _then(_value.copyWith(
      clientCode: null == clientCode
          ? _value.clientCode
          : clientCode // ignore: cast_nullable_to_non_nullable
              as String,
      clientName: null == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OffdutyClientListModelImplCopyWith<$Res>
    implements $OffdutyClientListModelCopyWith<$Res> {
  factory _$$OffdutyClientListModelImplCopyWith(
          _$OffdutyClientListModelImpl value,
          $Res Function(_$OffdutyClientListModelImpl) then) =
      __$$OffdutyClientListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "client_cd") String clientCode,
      @JsonKey(name: "client_name") String clientName});
}

/// @nodoc
class __$$OffdutyClientListModelImplCopyWithImpl<$Res>
    extends _$OffdutyClientListModelCopyWithImpl<$Res,
        _$OffdutyClientListModelImpl>
    implements _$$OffdutyClientListModelImplCopyWith<$Res> {
  __$$OffdutyClientListModelImplCopyWithImpl(
      _$OffdutyClientListModelImpl _value,
      $Res Function(_$OffdutyClientListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientCode = null,
    Object? clientName = null,
  }) {
    return _then(_$OffdutyClientListModelImpl(
      clientCode: null == clientCode
          ? _value.clientCode
          : clientCode // ignore: cast_nullable_to_non_nullable
              as String,
      clientName: null == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OffdutyClientListModelImpl implements _OffdutyClientListModel {
  const _$OffdutyClientListModelImpl(
      {@JsonKey(name: "client_cd") this.clientCode = "",
      @JsonKey(name: "client_name") this.clientName = ""});

  factory _$OffdutyClientListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffdutyClientListModelImplFromJson(json);

  @override
  @JsonKey(name: "client_cd")
  final String clientCode;
  @override
  @JsonKey(name: "client_name")
  final String clientName;

  @override
  String toString() {
    return 'OffdutyClientListModel(clientCode: $clientCode, clientName: $clientName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffdutyClientListModelImpl &&
            (identical(other.clientCode, clientCode) ||
                other.clientCode == clientCode) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, clientCode, clientName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OffdutyClientListModelImplCopyWith<_$OffdutyClientListModelImpl>
      get copyWith => __$$OffdutyClientListModelImplCopyWithImpl<
          _$OffdutyClientListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OffdutyClientListModelImplToJson(
      this,
    );
  }
}

abstract class _OffdutyClientListModel implements OffdutyClientListModel {
  const factory _OffdutyClientListModel(
          {@JsonKey(name: "client_cd") final String clientCode,
          @JsonKey(name: "client_name") final String clientName}) =
      _$OffdutyClientListModelImpl;

  factory _OffdutyClientListModel.fromJson(Map<String, dynamic> json) =
      _$OffdutyClientListModelImpl.fromJson;

  @override
  @JsonKey(name: "client_cd")
  String get clientCode;
  @override
  @JsonKey(name: "client_name")
  String get clientName;
  @override
  @JsonKey(ignore: true)
  _$$OffdutyClientListModelImplCopyWith<_$OffdutyClientListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
