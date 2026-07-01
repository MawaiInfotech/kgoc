// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dummysignup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DummySignupState {
  DummySignupModel get dummySignupModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DummySignupModel dummySignupModel) loading,
    required TResult Function(DummySignupModel dummySignupModel) content,
    required TResult Function(
            DummySignupModel dummySignupModel, String? message)
        success,
    required TResult Function(DummySignupModel dummySignupModel, String message)
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DummySignupModel dummySignupModel)? loading,
    TResult? Function(DummySignupModel dummySignupModel)? content,
    TResult? Function(DummySignupModel dummySignupModel, String? message)?
        success,
    TResult? Function(DummySignupModel dummySignupModel, String message)?
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DummySignupModel dummySignupModel)? loading,
    TResult Function(DummySignupModel dummySignupModel)? content,
    TResult Function(DummySignupModel dummySignupModel, String? message)?
        success,
    TResult Function(DummySignupModel dummySignupModel, String message)? failed,
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
  $DummySignupStateCopyWith<DummySignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DummySignupStateCopyWith<$Res> {
  factory $DummySignupStateCopyWith(
          DummySignupState value, $Res Function(DummySignupState) then) =
      _$DummySignupStateCopyWithImpl<$Res, DummySignupState>;
  @useResult
  $Res call({DummySignupModel dummySignupModel});

  $DummySignupModelCopyWith<$Res> get dummySignupModel;
}

/// @nodoc
class _$DummySignupStateCopyWithImpl<$Res, $Val extends DummySignupState>
    implements $DummySignupStateCopyWith<$Res> {
  _$DummySignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dummySignupModel = null,
  }) {
    return _then(_value.copyWith(
      dummySignupModel: null == dummySignupModel
          ? _value.dummySignupModel
          : dummySignupModel // ignore: cast_nullable_to_non_nullable
              as DummySignupModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DummySignupModelCopyWith<$Res> get dummySignupModel {
    return $DummySignupModelCopyWith<$Res>(_value.dummySignupModel, (value) {
      return _then(_value.copyWith(dummySignupModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $DummySignupStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DummySignupModel dummySignupModel});

  @override
  $DummySignupModelCopyWith<$Res> get dummySignupModel;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$DummySignupStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dummySignupModel = null,
  }) {
    return _then(_$LoadingImpl(
      null == dummySignupModel
          ? _value.dummySignupModel
          : dummySignupModel // ignore: cast_nullable_to_non_nullable
              as DummySignupModel,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(this.dummySignupModel);

  @override
  final DummySignupModel dummySignupModel;

  @override
  String toString() {
    return 'DummySignupState.loading(dummySignupModel: $dummySignupModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.dummySignupModel, dummySignupModel) ||
                other.dummySignupModel == dummySignupModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dummySignupModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DummySignupModel dummySignupModel) loading,
    required TResult Function(DummySignupModel dummySignupModel) content,
    required TResult Function(
            DummySignupModel dummySignupModel, String? message)
        success,
    required TResult Function(DummySignupModel dummySignupModel, String message)
        failed,
  }) {
    return loading(dummySignupModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DummySignupModel dummySignupModel)? loading,
    TResult? Function(DummySignupModel dummySignupModel)? content,
    TResult? Function(DummySignupModel dummySignupModel, String? message)?
        success,
    TResult? Function(DummySignupModel dummySignupModel, String message)?
        failed,
  }) {
    return loading?.call(dummySignupModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DummySignupModel dummySignupModel)? loading,
    TResult Function(DummySignupModel dummySignupModel)? content,
    TResult Function(DummySignupModel dummySignupModel, String? message)?
        success,
    TResult Function(DummySignupModel dummySignupModel, String message)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(dummySignupModel);
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

abstract class _Loading implements DummySignupState {
  const factory _Loading(final DummySignupModel dummySignupModel) =
      _$LoadingImpl;

  @override
  DummySignupModel get dummySignupModel;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res>
    implements $DummySignupStateCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DummySignupModel dummySignupModel});

  @override
  $DummySignupModelCopyWith<$Res> get dummySignupModel;
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$DummySignupStateCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dummySignupModel = null,
  }) {
    return _then(_$ContentImpl(
      null == dummySignupModel
          ? _value.dummySignupModel
          : dummySignupModel // ignore: cast_nullable_to_non_nullable
              as DummySignupModel,
    ));
  }
}

/// @nodoc

class _$ContentImpl implements _Content {
  const _$ContentImpl(this.dummySignupModel);

  @override
  final DummySignupModel dummySignupModel;

  @override
  String toString() {
    return 'DummySignupState.content(dummySignupModel: $dummySignupModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            (identical(other.dummySignupModel, dummySignupModel) ||
                other.dummySignupModel == dummySignupModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dummySignupModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DummySignupModel dummySignupModel) loading,
    required TResult Function(DummySignupModel dummySignupModel) content,
    required TResult Function(
            DummySignupModel dummySignupModel, String? message)
        success,
    required TResult Function(DummySignupModel dummySignupModel, String message)
        failed,
  }) {
    return content(dummySignupModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DummySignupModel dummySignupModel)? loading,
    TResult? Function(DummySignupModel dummySignupModel)? content,
    TResult? Function(DummySignupModel dummySignupModel, String? message)?
        success,
    TResult? Function(DummySignupModel dummySignupModel, String message)?
        failed,
  }) {
    return content?.call(dummySignupModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DummySignupModel dummySignupModel)? loading,
    TResult Function(DummySignupModel dummySignupModel)? content,
    TResult Function(DummySignupModel dummySignupModel, String? message)?
        success,
    TResult Function(DummySignupModel dummySignupModel, String message)? failed,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(dummySignupModel);
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

abstract class _Content implements DummySignupState {
  const factory _Content(final DummySignupModel dummySignupModel) =
      _$ContentImpl;

  @override
  DummySignupModel get dummySignupModel;
  @override
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $DummySignupStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DummySignupModel dummySignupModel, String? message});

  @override
  $DummySignupModelCopyWith<$Res> get dummySignupModel;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$DummySignupStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dummySignupModel = null,
    Object? message = freezed,
  }) {
    return _then(_$SuccessImpl(
      null == dummySignupModel
          ? _value.dummySignupModel
          : dummySignupModel // ignore: cast_nullable_to_non_nullable
              as DummySignupModel,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.dummySignupModel, this.message);

  @override
  final DummySignupModel dummySignupModel;
  @override
  final String? message;

  @override
  String toString() {
    return 'DummySignupState.success(dummySignupModel: $dummySignupModel, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.dummySignupModel, dummySignupModel) ||
                other.dummySignupModel == dummySignupModel) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dummySignupModel, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DummySignupModel dummySignupModel) loading,
    required TResult Function(DummySignupModel dummySignupModel) content,
    required TResult Function(
            DummySignupModel dummySignupModel, String? message)
        success,
    required TResult Function(DummySignupModel dummySignupModel, String message)
        failed,
  }) {
    return success(dummySignupModel, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DummySignupModel dummySignupModel)? loading,
    TResult? Function(DummySignupModel dummySignupModel)? content,
    TResult? Function(DummySignupModel dummySignupModel, String? message)?
        success,
    TResult? Function(DummySignupModel dummySignupModel, String message)?
        failed,
  }) {
    return success?.call(dummySignupModel, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DummySignupModel dummySignupModel)? loading,
    TResult Function(DummySignupModel dummySignupModel)? content,
    TResult Function(DummySignupModel dummySignupModel, String? message)?
        success,
    TResult Function(DummySignupModel dummySignupModel, String message)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(dummySignupModel, message);
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

abstract class _Success implements DummySignupState {
  const factory _Success(
          final DummySignupModel dummySignupModel, final String? message) =
      _$SuccessImpl;

  @override
  DummySignupModel get dummySignupModel;
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res>
    implements $DummySignupStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DummySignupModel dummySignupModel, String message});

  @override
  $DummySignupModelCopyWith<$Res> get dummySignupModel;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$DummySignupStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dummySignupModel = null,
    Object? message = null,
  }) {
    return _then(_$FailedImpl(
      null == dummySignupModel
          ? _value.dummySignupModel
          : dummySignupModel // ignore: cast_nullable_to_non_nullable
              as DummySignupModel,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.dummySignupModel, this.message);

  @override
  final DummySignupModel dummySignupModel;
  @override
  final String message;

  @override
  String toString() {
    return 'DummySignupState.failed(dummySignupModel: $dummySignupModel, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.dummySignupModel, dummySignupModel) ||
                other.dummySignupModel == dummySignupModel) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dummySignupModel, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DummySignupModel dummySignupModel) loading,
    required TResult Function(DummySignupModel dummySignupModel) content,
    required TResult Function(
            DummySignupModel dummySignupModel, String? message)
        success,
    required TResult Function(DummySignupModel dummySignupModel, String message)
        failed,
  }) {
    return failed(dummySignupModel, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DummySignupModel dummySignupModel)? loading,
    TResult? Function(DummySignupModel dummySignupModel)? content,
    TResult? Function(DummySignupModel dummySignupModel, String? message)?
        success,
    TResult? Function(DummySignupModel dummySignupModel, String message)?
        failed,
  }) {
    return failed?.call(dummySignupModel, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DummySignupModel dummySignupModel)? loading,
    TResult Function(DummySignupModel dummySignupModel)? content,
    TResult Function(DummySignupModel dummySignupModel, String? message)?
        success,
    TResult Function(DummySignupModel dummySignupModel, String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(dummySignupModel, message);
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

abstract class _Failed implements DummySignupState {
  const factory _Failed(
          final DummySignupModel dummySignupModel, final String message) =
      _$FailedImpl;

  @override
  DummySignupModel get dummySignupModel;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
