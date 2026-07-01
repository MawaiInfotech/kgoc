// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sendwishes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SendwishesState {
  SendwishesModel get sendwishesModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SendwishesModel sendwishesModel) loading,
    required TResult Function(SendwishesModel sendwishesModel) content,
    required TResult Function(SendwishesModel sendwishesModel, String? message)
        success,
    required TResult Function(SendwishesModel sendwishesModel, String message)
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SendwishesModel sendwishesModel)? loading,
    TResult? Function(SendwishesModel sendwishesModel)? content,
    TResult? Function(SendwishesModel sendwishesModel, String? message)?
        success,
    TResult? Function(SendwishesModel sendwishesModel, String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SendwishesModel sendwishesModel)? loading,
    TResult Function(SendwishesModel sendwishesModel)? content,
    TResult Function(SendwishesModel sendwishesModel, String? message)? success,
    TResult Function(SendwishesModel sendwishesModel, String message)? failed,
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
  $SendwishesStateCopyWith<SendwishesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendwishesStateCopyWith<$Res> {
  factory $SendwishesStateCopyWith(
          SendwishesState value, $Res Function(SendwishesState) then) =
      _$SendwishesStateCopyWithImpl<$Res, SendwishesState>;
  @useResult
  $Res call({SendwishesModel sendwishesModel});

  $SendwishesModelCopyWith<$Res> get sendwishesModel;
}

/// @nodoc
class _$SendwishesStateCopyWithImpl<$Res, $Val extends SendwishesState>
    implements $SendwishesStateCopyWith<$Res> {
  _$SendwishesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendwishesModel = null,
  }) {
    return _then(_value.copyWith(
      sendwishesModel: null == sendwishesModel
          ? _value.sendwishesModel
          : sendwishesModel // ignore: cast_nullable_to_non_nullable
              as SendwishesModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SendwishesModelCopyWith<$Res> get sendwishesModel {
    return $SendwishesModelCopyWith<$Res>(_value.sendwishesModel, (value) {
      return _then(_value.copyWith(sendwishesModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $SendwishesStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SendwishesModel sendwishesModel});

  @override
  $SendwishesModelCopyWith<$Res> get sendwishesModel;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SendwishesStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendwishesModel = null,
  }) {
    return _then(_$LoadingImpl(
      null == sendwishesModel
          ? _value.sendwishesModel
          : sendwishesModel // ignore: cast_nullable_to_non_nullable
              as SendwishesModel,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(this.sendwishesModel);

  @override
  final SendwishesModel sendwishesModel;

  @override
  String toString() {
    return 'SendwishesState.loading(sendwishesModel: $sendwishesModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.sendwishesModel, sendwishesModel) ||
                other.sendwishesModel == sendwishesModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sendwishesModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SendwishesModel sendwishesModel) loading,
    required TResult Function(SendwishesModel sendwishesModel) content,
    required TResult Function(SendwishesModel sendwishesModel, String? message)
        success,
    required TResult Function(SendwishesModel sendwishesModel, String message)
        failed,
  }) {
    return loading(sendwishesModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SendwishesModel sendwishesModel)? loading,
    TResult? Function(SendwishesModel sendwishesModel)? content,
    TResult? Function(SendwishesModel sendwishesModel, String? message)?
        success,
    TResult? Function(SendwishesModel sendwishesModel, String message)? failed,
  }) {
    return loading?.call(sendwishesModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SendwishesModel sendwishesModel)? loading,
    TResult Function(SendwishesModel sendwishesModel)? content,
    TResult Function(SendwishesModel sendwishesModel, String? message)? success,
    TResult Function(SendwishesModel sendwishesModel, String message)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(sendwishesModel);
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

abstract class _Loading implements SendwishesState {
  const factory _Loading(final SendwishesModel sendwishesModel) = _$LoadingImpl;

  @override
  SendwishesModel get sendwishesModel;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res>
    implements $SendwishesStateCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SendwishesModel sendwishesModel});

  @override
  $SendwishesModelCopyWith<$Res> get sendwishesModel;
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$SendwishesStateCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendwishesModel = null,
  }) {
    return _then(_$ContentImpl(
      null == sendwishesModel
          ? _value.sendwishesModel
          : sendwishesModel // ignore: cast_nullable_to_non_nullable
              as SendwishesModel,
    ));
  }
}

/// @nodoc

class _$ContentImpl implements _Content {
  const _$ContentImpl(this.sendwishesModel);

  @override
  final SendwishesModel sendwishesModel;

  @override
  String toString() {
    return 'SendwishesState.content(sendwishesModel: $sendwishesModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            (identical(other.sendwishesModel, sendwishesModel) ||
                other.sendwishesModel == sendwishesModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sendwishesModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SendwishesModel sendwishesModel) loading,
    required TResult Function(SendwishesModel sendwishesModel) content,
    required TResult Function(SendwishesModel sendwishesModel, String? message)
        success,
    required TResult Function(SendwishesModel sendwishesModel, String message)
        failed,
  }) {
    return content(sendwishesModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SendwishesModel sendwishesModel)? loading,
    TResult? Function(SendwishesModel sendwishesModel)? content,
    TResult? Function(SendwishesModel sendwishesModel, String? message)?
        success,
    TResult? Function(SendwishesModel sendwishesModel, String message)? failed,
  }) {
    return content?.call(sendwishesModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SendwishesModel sendwishesModel)? loading,
    TResult Function(SendwishesModel sendwishesModel)? content,
    TResult Function(SendwishesModel sendwishesModel, String? message)? success,
    TResult Function(SendwishesModel sendwishesModel, String message)? failed,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(sendwishesModel);
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

abstract class _Content implements SendwishesState {
  const factory _Content(final SendwishesModel sendwishesModel) = _$ContentImpl;

  @override
  SendwishesModel get sendwishesModel;
  @override
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $SendwishesStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SendwishesModel sendwishesModel, String? message});

  @override
  $SendwishesModelCopyWith<$Res> get sendwishesModel;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$SendwishesStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendwishesModel = null,
    Object? message = freezed,
  }) {
    return _then(_$SuccessImpl(
      null == sendwishesModel
          ? _value.sendwishesModel
          : sendwishesModel // ignore: cast_nullable_to_non_nullable
              as SendwishesModel,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.sendwishesModel, this.message);

  @override
  final SendwishesModel sendwishesModel;
  @override
  final String? message;

  @override
  String toString() {
    return 'SendwishesState.success(sendwishesModel: $sendwishesModel, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.sendwishesModel, sendwishesModel) ||
                other.sendwishesModel == sendwishesModel) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sendwishesModel, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SendwishesModel sendwishesModel) loading,
    required TResult Function(SendwishesModel sendwishesModel) content,
    required TResult Function(SendwishesModel sendwishesModel, String? message)
        success,
    required TResult Function(SendwishesModel sendwishesModel, String message)
        failed,
  }) {
    return success(sendwishesModel, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SendwishesModel sendwishesModel)? loading,
    TResult? Function(SendwishesModel sendwishesModel)? content,
    TResult? Function(SendwishesModel sendwishesModel, String? message)?
        success,
    TResult? Function(SendwishesModel sendwishesModel, String message)? failed,
  }) {
    return success?.call(sendwishesModel, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SendwishesModel sendwishesModel)? loading,
    TResult Function(SendwishesModel sendwishesModel)? content,
    TResult Function(SendwishesModel sendwishesModel, String? message)? success,
    TResult Function(SendwishesModel sendwishesModel, String message)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(sendwishesModel, message);
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

abstract class _Success implements SendwishesState {
  const factory _Success(
          final SendwishesModel sendwishesModel, final String? message) =
      _$SuccessImpl;

  @override
  SendwishesModel get sendwishesModel;
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res>
    implements $SendwishesStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SendwishesModel sendwishesModel, String message});

  @override
  $SendwishesModelCopyWith<$Res> get sendwishesModel;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$SendwishesStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendwishesModel = null,
    Object? message = null,
  }) {
    return _then(_$FailedImpl(
      null == sendwishesModel
          ? _value.sendwishesModel
          : sendwishesModel // ignore: cast_nullable_to_non_nullable
              as SendwishesModel,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.sendwishesModel, this.message);

  @override
  final SendwishesModel sendwishesModel;
  @override
  final String message;

  @override
  String toString() {
    return 'SendwishesState.failed(sendwishesModel: $sendwishesModel, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.sendwishesModel, sendwishesModel) ||
                other.sendwishesModel == sendwishesModel) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sendwishesModel, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SendwishesModel sendwishesModel) loading,
    required TResult Function(SendwishesModel sendwishesModel) content,
    required TResult Function(SendwishesModel sendwishesModel, String? message)
        success,
    required TResult Function(SendwishesModel sendwishesModel, String message)
        failed,
  }) {
    return failed(sendwishesModel, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SendwishesModel sendwishesModel)? loading,
    TResult? Function(SendwishesModel sendwishesModel)? content,
    TResult? Function(SendwishesModel sendwishesModel, String? message)?
        success,
    TResult? Function(SendwishesModel sendwishesModel, String message)? failed,
  }) {
    return failed?.call(sendwishesModel, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SendwishesModel sendwishesModel)? loading,
    TResult Function(SendwishesModel sendwishesModel)? content,
    TResult Function(SendwishesModel sendwishesModel, String? message)? success,
    TResult Function(SendwishesModel sendwishesModel, String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(sendwishesModel, message);
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

abstract class _Failed implements SendwishesState {
  const factory _Failed(
          final SendwishesModel sendwishesModel, final String message) =
      _$FailedImpl;

  @override
  SendwishesModel get sendwishesModel;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
