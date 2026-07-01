// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'requestoffduty_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequestoffdutyState {
  RequestoffdutyModel get requestoffdutyModel =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestoffdutyModel requestoffdutyModel) loading,
    required TResult Function(RequestoffdutyModel requestoffdutyModel) content,
    required TResult Function(RequestoffdutyModel requestoffdutyModel) success,
    required TResult Function(
            RequestoffdutyModel requestoffdutyModel, String message)
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestoffdutyModel requestoffdutyModel)? loading,
    TResult? Function(RequestoffdutyModel requestoffdutyModel)? content,
    TResult? Function(RequestoffdutyModel requestoffdutyModel)? success,
    TResult? Function(RequestoffdutyModel requestoffdutyModel, String message)?
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestoffdutyModel requestoffdutyModel)? loading,
    TResult Function(RequestoffdutyModel requestoffdutyModel)? content,
    TResult Function(RequestoffdutyModel requestoffdutyModel)? success,
    TResult Function(RequestoffdutyModel requestoffdutyModel, String message)?
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
  $RequestoffdutyStateCopyWith<RequestoffdutyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestoffdutyStateCopyWith<$Res> {
  factory $RequestoffdutyStateCopyWith(
          RequestoffdutyState value, $Res Function(RequestoffdutyState) then) =
      _$RequestoffdutyStateCopyWithImpl<$Res, RequestoffdutyState>;
  @useResult
  $Res call({RequestoffdutyModel requestoffdutyModel});

  $RequestoffdutyModelCopyWith<$Res> get requestoffdutyModel;
}

/// @nodoc
class _$RequestoffdutyStateCopyWithImpl<$Res, $Val extends RequestoffdutyState>
    implements $RequestoffdutyStateCopyWith<$Res> {
  _$RequestoffdutyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestoffdutyModel = null,
  }) {
    return _then(_value.copyWith(
      requestoffdutyModel: null == requestoffdutyModel
          ? _value.requestoffdutyModel
          : requestoffdutyModel // ignore: cast_nullable_to_non_nullable
              as RequestoffdutyModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestoffdutyModelCopyWith<$Res> get requestoffdutyModel {
    return $RequestoffdutyModelCopyWith<$Res>(_value.requestoffdutyModel,
        (value) {
      return _then(_value.copyWith(requestoffdutyModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $RequestoffdutyStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestoffdutyModel requestoffdutyModel});

  @override
  $RequestoffdutyModelCopyWith<$Res> get requestoffdutyModel;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$RequestoffdutyStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestoffdutyModel = null,
  }) {
    return _then(_$LoadingImpl(
      null == requestoffdutyModel
          ? _value.requestoffdutyModel
          : requestoffdutyModel // ignore: cast_nullable_to_non_nullable
              as RequestoffdutyModel,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(this.requestoffdutyModel);

  @override
  final RequestoffdutyModel requestoffdutyModel;

  @override
  String toString() {
    return 'RequestoffdutyState.loading(requestoffdutyModel: $requestoffdutyModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.requestoffdutyModel, requestoffdutyModel) ||
                other.requestoffdutyModel == requestoffdutyModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestoffdutyModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestoffdutyModel requestoffdutyModel) loading,
    required TResult Function(RequestoffdutyModel requestoffdutyModel) content,
    required TResult Function(RequestoffdutyModel requestoffdutyModel) success,
    required TResult Function(
            RequestoffdutyModel requestoffdutyModel, String message)
        failed,
  }) {
    return loading(requestoffdutyModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestoffdutyModel requestoffdutyModel)? loading,
    TResult? Function(RequestoffdutyModel requestoffdutyModel)? content,
    TResult? Function(RequestoffdutyModel requestoffdutyModel)? success,
    TResult? Function(RequestoffdutyModel requestoffdutyModel, String message)?
        failed,
  }) {
    return loading?.call(requestoffdutyModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestoffdutyModel requestoffdutyModel)? loading,
    TResult Function(RequestoffdutyModel requestoffdutyModel)? content,
    TResult Function(RequestoffdutyModel requestoffdutyModel)? success,
    TResult Function(RequestoffdutyModel requestoffdutyModel, String message)?
        failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(requestoffdutyModel);
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

abstract class _Loading implements RequestoffdutyState {
  const factory _Loading(final RequestoffdutyModel requestoffdutyModel) =
      _$LoadingImpl;

  @override
  RequestoffdutyModel get requestoffdutyModel;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res>
    implements $RequestoffdutyStateCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestoffdutyModel requestoffdutyModel});

  @override
  $RequestoffdutyModelCopyWith<$Res> get requestoffdutyModel;
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$RequestoffdutyStateCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestoffdutyModel = null,
  }) {
    return _then(_$ContentImpl(
      null == requestoffdutyModel
          ? _value.requestoffdutyModel
          : requestoffdutyModel // ignore: cast_nullable_to_non_nullable
              as RequestoffdutyModel,
    ));
  }
}

/// @nodoc

class _$ContentImpl implements _Content {
  const _$ContentImpl(this.requestoffdutyModel);

  @override
  final RequestoffdutyModel requestoffdutyModel;

  @override
  String toString() {
    return 'RequestoffdutyState.content(requestoffdutyModel: $requestoffdutyModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            (identical(other.requestoffdutyModel, requestoffdutyModel) ||
                other.requestoffdutyModel == requestoffdutyModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestoffdutyModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestoffdutyModel requestoffdutyModel) loading,
    required TResult Function(RequestoffdutyModel requestoffdutyModel) content,
    required TResult Function(RequestoffdutyModel requestoffdutyModel) success,
    required TResult Function(
            RequestoffdutyModel requestoffdutyModel, String message)
        failed,
  }) {
    return content(requestoffdutyModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestoffdutyModel requestoffdutyModel)? loading,
    TResult? Function(RequestoffdutyModel requestoffdutyModel)? content,
    TResult? Function(RequestoffdutyModel requestoffdutyModel)? success,
    TResult? Function(RequestoffdutyModel requestoffdutyModel, String message)?
        failed,
  }) {
    return content?.call(requestoffdutyModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestoffdutyModel requestoffdutyModel)? loading,
    TResult Function(RequestoffdutyModel requestoffdutyModel)? content,
    TResult Function(RequestoffdutyModel requestoffdutyModel)? success,
    TResult Function(RequestoffdutyModel requestoffdutyModel, String message)?
        failed,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(requestoffdutyModel);
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

abstract class _Content implements RequestoffdutyState {
  const factory _Content(final RequestoffdutyModel requestoffdutyModel) =
      _$ContentImpl;

  @override
  RequestoffdutyModel get requestoffdutyModel;
  @override
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $RequestoffdutyStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestoffdutyModel requestoffdutyModel});

  @override
  $RequestoffdutyModelCopyWith<$Res> get requestoffdutyModel;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$RequestoffdutyStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestoffdutyModel = null,
  }) {
    return _then(_$SuccessImpl(
      null == requestoffdutyModel
          ? _value.requestoffdutyModel
          : requestoffdutyModel // ignore: cast_nullable_to_non_nullable
              as RequestoffdutyModel,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.requestoffdutyModel);

  @override
  final RequestoffdutyModel requestoffdutyModel;

  @override
  String toString() {
    return 'RequestoffdutyState.success(requestoffdutyModel: $requestoffdutyModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.requestoffdutyModel, requestoffdutyModel) ||
                other.requestoffdutyModel == requestoffdutyModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestoffdutyModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestoffdutyModel requestoffdutyModel) loading,
    required TResult Function(RequestoffdutyModel requestoffdutyModel) content,
    required TResult Function(RequestoffdutyModel requestoffdutyModel) success,
    required TResult Function(
            RequestoffdutyModel requestoffdutyModel, String message)
        failed,
  }) {
    return success(requestoffdutyModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestoffdutyModel requestoffdutyModel)? loading,
    TResult? Function(RequestoffdutyModel requestoffdutyModel)? content,
    TResult? Function(RequestoffdutyModel requestoffdutyModel)? success,
    TResult? Function(RequestoffdutyModel requestoffdutyModel, String message)?
        failed,
  }) {
    return success?.call(requestoffdutyModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestoffdutyModel requestoffdutyModel)? loading,
    TResult Function(RequestoffdutyModel requestoffdutyModel)? content,
    TResult Function(RequestoffdutyModel requestoffdutyModel)? success,
    TResult Function(RequestoffdutyModel requestoffdutyModel, String message)?
        failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(requestoffdutyModel);
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

abstract class _Success implements RequestoffdutyState {
  const factory _Success(final RequestoffdutyModel requestoffdutyModel) =
      _$SuccessImpl;

  @override
  RequestoffdutyModel get requestoffdutyModel;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res>
    implements $RequestoffdutyStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestoffdutyModel requestoffdutyModel, String message});

  @override
  $RequestoffdutyModelCopyWith<$Res> get requestoffdutyModel;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$RequestoffdutyStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestoffdutyModel = null,
    Object? message = null,
  }) {
    return _then(_$FailedImpl(
      null == requestoffdutyModel
          ? _value.requestoffdutyModel
          : requestoffdutyModel // ignore: cast_nullable_to_non_nullable
              as RequestoffdutyModel,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.requestoffdutyModel, this.message);

  @override
  final RequestoffdutyModel requestoffdutyModel;
  @override
  final String message;

  @override
  String toString() {
    return 'RequestoffdutyState.failed(requestoffdutyModel: $requestoffdutyModel, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.requestoffdutyModel, requestoffdutyModel) ||
                other.requestoffdutyModel == requestoffdutyModel) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestoffdutyModel, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestoffdutyModel requestoffdutyModel) loading,
    required TResult Function(RequestoffdutyModel requestoffdutyModel) content,
    required TResult Function(RequestoffdutyModel requestoffdutyModel) success,
    required TResult Function(
            RequestoffdutyModel requestoffdutyModel, String message)
        failed,
  }) {
    return failed(requestoffdutyModel, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestoffdutyModel requestoffdutyModel)? loading,
    TResult? Function(RequestoffdutyModel requestoffdutyModel)? content,
    TResult? Function(RequestoffdutyModel requestoffdutyModel)? success,
    TResult? Function(RequestoffdutyModel requestoffdutyModel, String message)?
        failed,
  }) {
    return failed?.call(requestoffdutyModel, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestoffdutyModel requestoffdutyModel)? loading,
    TResult Function(RequestoffdutyModel requestoffdutyModel)? content,
    TResult Function(RequestoffdutyModel requestoffdutyModel)? success,
    TResult Function(RequestoffdutyModel requestoffdutyModel, String message)?
        failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(requestoffdutyModel, message);
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

abstract class _Failed implements RequestoffdutyState {
  const factory _Failed(
          final RequestoffdutyModel requestoffdutyModel, final String message) =
      _$FailedImpl;

  @override
  RequestoffdutyModel get requestoffdutyModel;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
