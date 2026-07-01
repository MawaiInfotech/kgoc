// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'applyod_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApplyOdState {
  ApplyOdModel get applyOdModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApplyOdModel applyOdModel) loading,
    required TResult Function(ApplyOdModel applyOdModel) content,
    required TResult Function(ApplyOdModel applyOdModel, String? message)
        success,
    required TResult Function(ApplyOdModel applyOdModel, String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApplyOdModel applyOdModel)? loading,
    TResult? Function(ApplyOdModel applyOdModel)? content,
    TResult? Function(ApplyOdModel applyOdModel, String? message)? success,
    TResult? Function(ApplyOdModel applyOdModel, String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApplyOdModel applyOdModel)? loading,
    TResult Function(ApplyOdModel applyOdModel)? content,
    TResult Function(ApplyOdModel applyOdModel, String? message)? success,
    TResult Function(ApplyOdModel applyOdModel, String message)? failed,
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
  $ApplyOdStateCopyWith<ApplyOdState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplyOdStateCopyWith<$Res> {
  factory $ApplyOdStateCopyWith(
          ApplyOdState value, $Res Function(ApplyOdState) then) =
      _$ApplyOdStateCopyWithImpl<$Res, ApplyOdState>;
  @useResult
  $Res call({ApplyOdModel applyOdModel});

  $ApplyOdModelCopyWith<$Res> get applyOdModel;
}

/// @nodoc
class _$ApplyOdStateCopyWithImpl<$Res, $Val extends ApplyOdState>
    implements $ApplyOdStateCopyWith<$Res> {
  _$ApplyOdStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applyOdModel = null,
  }) {
    return _then(_value.copyWith(
      applyOdModel: null == applyOdModel
          ? _value.applyOdModel
          : applyOdModel // ignore: cast_nullable_to_non_nullable
              as ApplyOdModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApplyOdModelCopyWith<$Res> get applyOdModel {
    return $ApplyOdModelCopyWith<$Res>(_value.applyOdModel, (value) {
      return _then(_value.copyWith(applyOdModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $ApplyOdStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApplyOdModel applyOdModel});

  @override
  $ApplyOdModelCopyWith<$Res> get applyOdModel;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ApplyOdStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applyOdModel = null,
  }) {
    return _then(_$LoadingImpl(
      null == applyOdModel
          ? _value.applyOdModel
          : applyOdModel // ignore: cast_nullable_to_non_nullable
              as ApplyOdModel,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(this.applyOdModel);

  @override
  final ApplyOdModel applyOdModel;

  @override
  String toString() {
    return 'ApplyOdState.loading(applyOdModel: $applyOdModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.applyOdModel, applyOdModel) ||
                other.applyOdModel == applyOdModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, applyOdModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApplyOdModel applyOdModel) loading,
    required TResult Function(ApplyOdModel applyOdModel) content,
    required TResult Function(ApplyOdModel applyOdModel, String? message)
        success,
    required TResult Function(ApplyOdModel applyOdModel, String message) failed,
  }) {
    return loading(applyOdModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApplyOdModel applyOdModel)? loading,
    TResult? Function(ApplyOdModel applyOdModel)? content,
    TResult? Function(ApplyOdModel applyOdModel, String? message)? success,
    TResult? Function(ApplyOdModel applyOdModel, String message)? failed,
  }) {
    return loading?.call(applyOdModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApplyOdModel applyOdModel)? loading,
    TResult Function(ApplyOdModel applyOdModel)? content,
    TResult Function(ApplyOdModel applyOdModel, String? message)? success,
    TResult Function(ApplyOdModel applyOdModel, String message)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(applyOdModel);
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

abstract class _Loading implements ApplyOdState {
  const factory _Loading(final ApplyOdModel applyOdModel) = _$LoadingImpl;

  @override
  ApplyOdModel get applyOdModel;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res>
    implements $ApplyOdStateCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApplyOdModel applyOdModel});

  @override
  $ApplyOdModelCopyWith<$Res> get applyOdModel;
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$ApplyOdStateCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applyOdModel = null,
  }) {
    return _then(_$ContentImpl(
      null == applyOdModel
          ? _value.applyOdModel
          : applyOdModel // ignore: cast_nullable_to_non_nullable
              as ApplyOdModel,
    ));
  }
}

/// @nodoc

class _$ContentImpl implements _Content {
  const _$ContentImpl(this.applyOdModel);

  @override
  final ApplyOdModel applyOdModel;

  @override
  String toString() {
    return 'ApplyOdState.content(applyOdModel: $applyOdModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            (identical(other.applyOdModel, applyOdModel) ||
                other.applyOdModel == applyOdModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, applyOdModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApplyOdModel applyOdModel) loading,
    required TResult Function(ApplyOdModel applyOdModel) content,
    required TResult Function(ApplyOdModel applyOdModel, String? message)
        success,
    required TResult Function(ApplyOdModel applyOdModel, String message) failed,
  }) {
    return content(applyOdModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApplyOdModel applyOdModel)? loading,
    TResult? Function(ApplyOdModel applyOdModel)? content,
    TResult? Function(ApplyOdModel applyOdModel, String? message)? success,
    TResult? Function(ApplyOdModel applyOdModel, String message)? failed,
  }) {
    return content?.call(applyOdModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApplyOdModel applyOdModel)? loading,
    TResult Function(ApplyOdModel applyOdModel)? content,
    TResult Function(ApplyOdModel applyOdModel, String? message)? success,
    TResult Function(ApplyOdModel applyOdModel, String message)? failed,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(applyOdModel);
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

abstract class _Content implements ApplyOdState {
  const factory _Content(final ApplyOdModel applyOdModel) = _$ContentImpl;

  @override
  ApplyOdModel get applyOdModel;
  @override
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $ApplyOdStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApplyOdModel applyOdModel, String? message});

  @override
  $ApplyOdModelCopyWith<$Res> get applyOdModel;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ApplyOdStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applyOdModel = null,
    Object? message = freezed,
  }) {
    return _then(_$SuccessImpl(
      null == applyOdModel
          ? _value.applyOdModel
          : applyOdModel // ignore: cast_nullable_to_non_nullable
              as ApplyOdModel,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.applyOdModel, this.message);

  @override
  final ApplyOdModel applyOdModel;
  @override
  final String? message;

  @override
  String toString() {
    return 'ApplyOdState.success(applyOdModel: $applyOdModel, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.applyOdModel, applyOdModel) ||
                other.applyOdModel == applyOdModel) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, applyOdModel, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApplyOdModel applyOdModel) loading,
    required TResult Function(ApplyOdModel applyOdModel) content,
    required TResult Function(ApplyOdModel applyOdModel, String? message)
        success,
    required TResult Function(ApplyOdModel applyOdModel, String message) failed,
  }) {
    return success(applyOdModel, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApplyOdModel applyOdModel)? loading,
    TResult? Function(ApplyOdModel applyOdModel)? content,
    TResult? Function(ApplyOdModel applyOdModel, String? message)? success,
    TResult? Function(ApplyOdModel applyOdModel, String message)? failed,
  }) {
    return success?.call(applyOdModel, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApplyOdModel applyOdModel)? loading,
    TResult Function(ApplyOdModel applyOdModel)? content,
    TResult Function(ApplyOdModel applyOdModel, String? message)? success,
    TResult Function(ApplyOdModel applyOdModel, String message)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(applyOdModel, message);
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

abstract class _Success implements ApplyOdState {
  const factory _Success(
      final ApplyOdModel applyOdModel, final String? message) = _$SuccessImpl;

  @override
  ApplyOdModel get applyOdModel;
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res>
    implements $ApplyOdStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApplyOdModel applyOdModel, String message});

  @override
  $ApplyOdModelCopyWith<$Res> get applyOdModel;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$ApplyOdStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applyOdModel = null,
    Object? message = null,
  }) {
    return _then(_$FailedImpl(
      null == applyOdModel
          ? _value.applyOdModel
          : applyOdModel // ignore: cast_nullable_to_non_nullable
              as ApplyOdModel,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.applyOdModel, this.message);

  @override
  final ApplyOdModel applyOdModel;
  @override
  final String message;

  @override
  String toString() {
    return 'ApplyOdState.failed(applyOdModel: $applyOdModel, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.applyOdModel, applyOdModel) ||
                other.applyOdModel == applyOdModel) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, applyOdModel, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApplyOdModel applyOdModel) loading,
    required TResult Function(ApplyOdModel applyOdModel) content,
    required TResult Function(ApplyOdModel applyOdModel, String? message)
        success,
    required TResult Function(ApplyOdModel applyOdModel, String message) failed,
  }) {
    return failed(applyOdModel, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApplyOdModel applyOdModel)? loading,
    TResult? Function(ApplyOdModel applyOdModel)? content,
    TResult? Function(ApplyOdModel applyOdModel, String? message)? success,
    TResult? Function(ApplyOdModel applyOdModel, String message)? failed,
  }) {
    return failed?.call(applyOdModel, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApplyOdModel applyOdModel)? loading,
    TResult Function(ApplyOdModel applyOdModel)? content,
    TResult Function(ApplyOdModel applyOdModel, String? message)? success,
    TResult Function(ApplyOdModel applyOdModel, String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(applyOdModel, message);
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

abstract class _Failed implements ApplyOdState {
  const factory _Failed(final ApplyOdModel applyOdModel, final String message) =
      _$FailedImpl;

  @override
  ApplyOdModel get applyOdModel;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
