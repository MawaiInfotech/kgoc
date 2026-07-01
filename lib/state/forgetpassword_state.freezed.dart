// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgetpassword_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForgetpasswordState {
  ForgetpasswordModel get forgetpasswordModel =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ForgetpasswordModel forgetpasswordModel) loading,
    required TResult Function(ForgetpasswordModel forgetpasswordModel) content,
    required TResult Function(
            ForgetpasswordModel forgetpasswordModel, String? message)
        success,
    required TResult Function(
            ForgetpasswordModel forgetpasswordModel, String message)
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ForgetpasswordModel forgetpasswordModel)? loading,
    TResult? Function(ForgetpasswordModel forgetpasswordModel)? content,
    TResult? Function(ForgetpasswordModel forgetpasswordModel, String? message)?
        success,
    TResult? Function(ForgetpasswordModel forgetpasswordModel, String message)?
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ForgetpasswordModel forgetpasswordModel)? loading,
    TResult Function(ForgetpasswordModel forgetpasswordModel)? content,
    TResult Function(ForgetpasswordModel forgetpasswordModel, String? message)?
        success,
    TResult Function(ForgetpasswordModel forgetpasswordModel, String message)?
        failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Content value) content,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Content value)? content,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Content value)? content,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgetpasswordStateCopyWith<ForgetpasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetpasswordStateCopyWith<$Res> {
  factory $ForgetpasswordStateCopyWith(
          ForgetpasswordState value, $Res Function(ForgetpasswordState) then) =
      _$ForgetpasswordStateCopyWithImpl<$Res, ForgetpasswordState>;
  @useResult
  $Res call({ForgetpasswordModel forgetpasswordModel});

  $ForgetpasswordModelCopyWith<$Res> get forgetpasswordModel;
}

/// @nodoc
class _$ForgetpasswordStateCopyWithImpl<$Res, $Val extends ForgetpasswordState>
    implements $ForgetpasswordStateCopyWith<$Res> {
  _$ForgetpasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forgetpasswordModel = null,
  }) {
    return _then(_value.copyWith(
      forgetpasswordModel: null == forgetpasswordModel
          ? _value.forgetpasswordModel
          : forgetpasswordModel // ignore: cast_nullable_to_non_nullable
              as ForgetpasswordModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ForgetpasswordModelCopyWith<$Res> get forgetpasswordModel {
    return $ForgetpasswordModelCopyWith<$Res>(_value.forgetpasswordModel,
        (value) {
      return _then(_value.copyWith(forgetpasswordModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $ForgetpasswordStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ForgetpasswordModel forgetpasswordModel});

  @override
  $ForgetpasswordModelCopyWith<$Res> get forgetpasswordModel;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ForgetpasswordStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forgetpasswordModel = null,
  }) {
    return _then(_$LoadingImpl(
      null == forgetpasswordModel
          ? _value.forgetpasswordModel
          : forgetpasswordModel // ignore: cast_nullable_to_non_nullable
              as ForgetpasswordModel,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(this.forgetpasswordModel);

  @override
  final ForgetpasswordModel forgetpasswordModel;

  @override
  String toString() {
    return 'ForgetpasswordState.loading(forgetpasswordModel: $forgetpasswordModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.forgetpasswordModel, forgetpasswordModel) ||
                other.forgetpasswordModel == forgetpasswordModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forgetpasswordModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ForgetpasswordModel forgetpasswordModel) loading,
    required TResult Function(ForgetpasswordModel forgetpasswordModel) content,
    required TResult Function(
            ForgetpasswordModel forgetpasswordModel, String? message)
        success,
    required TResult Function(
            ForgetpasswordModel forgetpasswordModel, String message)
        failed,
  }) {
    return loading(forgetpasswordModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ForgetpasswordModel forgetpasswordModel)? loading,
    TResult? Function(ForgetpasswordModel forgetpasswordModel)? content,
    TResult? Function(ForgetpasswordModel forgetpasswordModel, String? message)?
        success,
    TResult? Function(ForgetpasswordModel forgetpasswordModel, String message)?
        failed,
  }) {
    return loading?.call(forgetpasswordModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ForgetpasswordModel forgetpasswordModel)? loading,
    TResult Function(ForgetpasswordModel forgetpasswordModel)? content,
    TResult Function(ForgetpasswordModel forgetpasswordModel, String? message)?
        success,
    TResult Function(ForgetpasswordModel forgetpasswordModel, String message)?
        failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(forgetpasswordModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Content value) content,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Content value)? content,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Content value)? content,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ForgetpasswordState {
  const factory _Loading(final ForgetpasswordModel forgetpasswordModel) =
      _$LoadingImpl;

  @override
  ForgetpasswordModel get forgetpasswordModel;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res>
    implements $ForgetpasswordStateCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ForgetpasswordModel forgetpasswordModel});

  @override
  $ForgetpasswordModelCopyWith<$Res> get forgetpasswordModel;
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$ForgetpasswordStateCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forgetpasswordModel = null,
  }) {
    return _then(_$ContentImpl(
      null == forgetpasswordModel
          ? _value.forgetpasswordModel
          : forgetpasswordModel // ignore: cast_nullable_to_non_nullable
              as ForgetpasswordModel,
    ));
  }
}

/// @nodoc

class _$ContentImpl implements _Content {
  const _$ContentImpl(this.forgetpasswordModel);

  @override
  final ForgetpasswordModel forgetpasswordModel;

  @override
  String toString() {
    return 'ForgetpasswordState.content(forgetpasswordModel: $forgetpasswordModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            (identical(other.forgetpasswordModel, forgetpasswordModel) ||
                other.forgetpasswordModel == forgetpasswordModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forgetpasswordModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ForgetpasswordModel forgetpasswordModel) loading,
    required TResult Function(ForgetpasswordModel forgetpasswordModel) content,
    required TResult Function(
            ForgetpasswordModel forgetpasswordModel, String? message)
        success,
    required TResult Function(
            ForgetpasswordModel forgetpasswordModel, String message)
        failed,
  }) {
    return content(forgetpasswordModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ForgetpasswordModel forgetpasswordModel)? loading,
    TResult? Function(ForgetpasswordModel forgetpasswordModel)? content,
    TResult? Function(ForgetpasswordModel forgetpasswordModel, String? message)?
        success,
    TResult? Function(ForgetpasswordModel forgetpasswordModel, String message)?
        failed,
  }) {
    return content?.call(forgetpasswordModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ForgetpasswordModel forgetpasswordModel)? loading,
    TResult Function(ForgetpasswordModel forgetpasswordModel)? content,
    TResult Function(ForgetpasswordModel forgetpasswordModel, String? message)?
        success,
    TResult Function(ForgetpasswordModel forgetpasswordModel, String message)?
        failed,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(forgetpasswordModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Content value) content,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Content value)? content,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return content?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Content value)? content,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class _Content implements ForgetpasswordState {
  const factory _Content(final ForgetpasswordModel forgetpasswordModel) =
      _$ContentImpl;

  @override
  ForgetpasswordModel get forgetpasswordModel;
  @override
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $ForgetpasswordStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ForgetpasswordModel forgetpasswordModel, String? message});

  @override
  $ForgetpasswordModelCopyWith<$Res> get forgetpasswordModel;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ForgetpasswordStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forgetpasswordModel = null,
    Object? message = freezed,
  }) {
    return _then(_$SuccessImpl(
      null == forgetpasswordModel
          ? _value.forgetpasswordModel
          : forgetpasswordModel // ignore: cast_nullable_to_non_nullable
              as ForgetpasswordModel,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.forgetpasswordModel, this.message);

  @override
  final ForgetpasswordModel forgetpasswordModel;
  @override
  final String? message;

  @override
  String toString() {
    return 'ForgetpasswordState.success(forgetpasswordModel: $forgetpasswordModel, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.forgetpasswordModel, forgetpasswordModel) ||
                other.forgetpasswordModel == forgetpasswordModel) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forgetpasswordModel, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ForgetpasswordModel forgetpasswordModel) loading,
    required TResult Function(ForgetpasswordModel forgetpasswordModel) content,
    required TResult Function(
            ForgetpasswordModel forgetpasswordModel, String? message)
        success,
    required TResult Function(
            ForgetpasswordModel forgetpasswordModel, String message)
        failed,
  }) {
    return success(forgetpasswordModel, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ForgetpasswordModel forgetpasswordModel)? loading,
    TResult? Function(ForgetpasswordModel forgetpasswordModel)? content,
    TResult? Function(ForgetpasswordModel forgetpasswordModel, String? message)?
        success,
    TResult? Function(ForgetpasswordModel forgetpasswordModel, String message)?
        failed,
  }) {
    return success?.call(forgetpasswordModel, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ForgetpasswordModel forgetpasswordModel)? loading,
    TResult Function(ForgetpasswordModel forgetpasswordModel)? content,
    TResult Function(ForgetpasswordModel forgetpasswordModel, String? message)?
        success,
    TResult Function(ForgetpasswordModel forgetpasswordModel, String message)?
        failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(forgetpasswordModel, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Content value) content,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Content value)? content,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Content value)? content,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ForgetpasswordState {
  const factory _Success(final ForgetpasswordModel forgetpasswordModel,
      final String? message) = _$SuccessImpl;

  @override
  ForgetpasswordModel get forgetpasswordModel;
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res>
    implements $ForgetpasswordStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ForgetpasswordModel forgetpasswordModel, String message});

  @override
  $ForgetpasswordModelCopyWith<$Res> get forgetpasswordModel;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$ForgetpasswordStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forgetpasswordModel = null,
    Object? message = null,
  }) {
    return _then(_$FailedImpl(
      null == forgetpasswordModel
          ? _value.forgetpasswordModel
          : forgetpasswordModel // ignore: cast_nullable_to_non_nullable
              as ForgetpasswordModel,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.forgetpasswordModel, this.message);

  @override
  final ForgetpasswordModel forgetpasswordModel;
  @override
  final String message;

  @override
  String toString() {
    return 'ForgetpasswordState.failed(forgetpasswordModel: $forgetpasswordModel, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.forgetpasswordModel, forgetpasswordModel) ||
                other.forgetpasswordModel == forgetpasswordModel) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forgetpasswordModel, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ForgetpasswordModel forgetpasswordModel) loading,
    required TResult Function(ForgetpasswordModel forgetpasswordModel) content,
    required TResult Function(
            ForgetpasswordModel forgetpasswordModel, String? message)
        success,
    required TResult Function(
            ForgetpasswordModel forgetpasswordModel, String message)
        failed,
  }) {
    return failed(forgetpasswordModel, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ForgetpasswordModel forgetpasswordModel)? loading,
    TResult? Function(ForgetpasswordModel forgetpasswordModel)? content,
    TResult? Function(ForgetpasswordModel forgetpasswordModel, String? message)?
        success,
    TResult? Function(ForgetpasswordModel forgetpasswordModel, String message)?
        failed,
  }) {
    return failed?.call(forgetpasswordModel, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ForgetpasswordModel forgetpasswordModel)? loading,
    TResult Function(ForgetpasswordModel forgetpasswordModel)? content,
    TResult Function(ForgetpasswordModel forgetpasswordModel, String? message)?
        success,
    TResult Function(ForgetpasswordModel forgetpasswordModel, String message)?
        failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(forgetpasswordModel, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Content value) content,
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Content value)? content,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Content value)? content,
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements ForgetpasswordState {
  const factory _Failed(
          final ForgetpasswordModel forgetpasswordModel, final String message) =
      _$FailedImpl;

  @override
  ForgetpasswordModel get forgetpasswordModel;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
