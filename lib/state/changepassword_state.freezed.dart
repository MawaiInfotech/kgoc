// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'changepassword_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChangepasswordState {
  ChangepasswordModel get changepasswordModel =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChangepasswordModel changepasswordModel) loading,
    required TResult Function(ChangepasswordModel changepasswordModel) content,
    required TResult Function(
            ChangepasswordModel changepasswordModel, String? message)
        success,
    required TResult Function(
            ChangepasswordModel changepasswordModel, String message)
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChangepasswordModel changepasswordModel)? loading,
    TResult? Function(ChangepasswordModel changepasswordModel)? content,
    TResult? Function(ChangepasswordModel changepasswordModel, String? message)?
        success,
    TResult? Function(ChangepasswordModel changepasswordModel, String message)?
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChangepasswordModel changepasswordModel)? loading,
    TResult Function(ChangepasswordModel changepasswordModel)? content,
    TResult Function(ChangepasswordModel changepasswordModel, String? message)?
        success,
    TResult Function(ChangepasswordModel changepasswordModel, String message)?
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
  $ChangepasswordStateCopyWith<ChangepasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangepasswordStateCopyWith<$Res> {
  factory $ChangepasswordStateCopyWith(
          ChangepasswordState value, $Res Function(ChangepasswordState) then) =
      _$ChangepasswordStateCopyWithImpl<$Res, ChangepasswordState>;
  @useResult
  $Res call({ChangepasswordModel changepasswordModel});

  $ChangepasswordModelCopyWith<$Res> get changepasswordModel;
}

/// @nodoc
class _$ChangepasswordStateCopyWithImpl<$Res, $Val extends ChangepasswordState>
    implements $ChangepasswordStateCopyWith<$Res> {
  _$ChangepasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changepasswordModel = null,
  }) {
    return _then(_value.copyWith(
      changepasswordModel: null == changepasswordModel
          ? _value.changepasswordModel
          : changepasswordModel // ignore: cast_nullable_to_non_nullable
              as ChangepasswordModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChangepasswordModelCopyWith<$Res> get changepasswordModel {
    return $ChangepasswordModelCopyWith<$Res>(_value.changepasswordModel,
        (value) {
      return _then(_value.copyWith(changepasswordModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $ChangepasswordStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChangepasswordModel changepasswordModel});

  @override
  $ChangepasswordModelCopyWith<$Res> get changepasswordModel;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ChangepasswordStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changepasswordModel = null,
  }) {
    return _then(_$LoadingImpl(
      null == changepasswordModel
          ? _value.changepasswordModel
          : changepasswordModel // ignore: cast_nullable_to_non_nullable
              as ChangepasswordModel,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(this.changepasswordModel);

  @override
  final ChangepasswordModel changepasswordModel;

  @override
  String toString() {
    return 'ChangepasswordState.loading(changepasswordModel: $changepasswordModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.changepasswordModel, changepasswordModel) ||
                other.changepasswordModel == changepasswordModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, changepasswordModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChangepasswordModel changepasswordModel) loading,
    required TResult Function(ChangepasswordModel changepasswordModel) content,
    required TResult Function(
            ChangepasswordModel changepasswordModel, String? message)
        success,
    required TResult Function(
            ChangepasswordModel changepasswordModel, String message)
        failed,
  }) {
    return loading(changepasswordModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChangepasswordModel changepasswordModel)? loading,
    TResult? Function(ChangepasswordModel changepasswordModel)? content,
    TResult? Function(ChangepasswordModel changepasswordModel, String? message)?
        success,
    TResult? Function(ChangepasswordModel changepasswordModel, String message)?
        failed,
  }) {
    return loading?.call(changepasswordModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChangepasswordModel changepasswordModel)? loading,
    TResult Function(ChangepasswordModel changepasswordModel)? content,
    TResult Function(ChangepasswordModel changepasswordModel, String? message)?
        success,
    TResult Function(ChangepasswordModel changepasswordModel, String message)?
        failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(changepasswordModel);
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

abstract class _Loading implements ChangepasswordState {
  const factory _Loading(final ChangepasswordModel changepasswordModel) =
      _$LoadingImpl;

  @override
  ChangepasswordModel get changepasswordModel;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res>
    implements $ChangepasswordStateCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChangepasswordModel changepasswordModel});

  @override
  $ChangepasswordModelCopyWith<$Res> get changepasswordModel;
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$ChangepasswordStateCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changepasswordModel = null,
  }) {
    return _then(_$ContentImpl(
      null == changepasswordModel
          ? _value.changepasswordModel
          : changepasswordModel // ignore: cast_nullable_to_non_nullable
              as ChangepasswordModel,
    ));
  }
}

/// @nodoc

class _$ContentImpl implements _Content {
  const _$ContentImpl(this.changepasswordModel);

  @override
  final ChangepasswordModel changepasswordModel;

  @override
  String toString() {
    return 'ChangepasswordState.content(changepasswordModel: $changepasswordModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            (identical(other.changepasswordModel, changepasswordModel) ||
                other.changepasswordModel == changepasswordModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, changepasswordModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChangepasswordModel changepasswordModel) loading,
    required TResult Function(ChangepasswordModel changepasswordModel) content,
    required TResult Function(
            ChangepasswordModel changepasswordModel, String? message)
        success,
    required TResult Function(
            ChangepasswordModel changepasswordModel, String message)
        failed,
  }) {
    return content(changepasswordModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChangepasswordModel changepasswordModel)? loading,
    TResult? Function(ChangepasswordModel changepasswordModel)? content,
    TResult? Function(ChangepasswordModel changepasswordModel, String? message)?
        success,
    TResult? Function(ChangepasswordModel changepasswordModel, String message)?
        failed,
  }) {
    return content?.call(changepasswordModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChangepasswordModel changepasswordModel)? loading,
    TResult Function(ChangepasswordModel changepasswordModel)? content,
    TResult Function(ChangepasswordModel changepasswordModel, String? message)?
        success,
    TResult Function(ChangepasswordModel changepasswordModel, String message)?
        failed,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(changepasswordModel);
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

abstract class _Content implements ChangepasswordState {
  const factory _Content(final ChangepasswordModel changepasswordModel) =
      _$ContentImpl;

  @override
  ChangepasswordModel get changepasswordModel;
  @override
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $ChangepasswordStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChangepasswordModel changepasswordModel, String? message});

  @override
  $ChangepasswordModelCopyWith<$Res> get changepasswordModel;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ChangepasswordStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changepasswordModel = null,
    Object? message = freezed,
  }) {
    return _then(_$SuccessImpl(
      null == changepasswordModel
          ? _value.changepasswordModel
          : changepasswordModel // ignore: cast_nullable_to_non_nullable
              as ChangepasswordModel,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.changepasswordModel, this.message);

  @override
  final ChangepasswordModel changepasswordModel;
  @override
  final String? message;

  @override
  String toString() {
    return 'ChangepasswordState.success(changepasswordModel: $changepasswordModel, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.changepasswordModel, changepasswordModel) ||
                other.changepasswordModel == changepasswordModel) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, changepasswordModel, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChangepasswordModel changepasswordModel) loading,
    required TResult Function(ChangepasswordModel changepasswordModel) content,
    required TResult Function(
            ChangepasswordModel changepasswordModel, String? message)
        success,
    required TResult Function(
            ChangepasswordModel changepasswordModel, String message)
        failed,
  }) {
    return success(changepasswordModel, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChangepasswordModel changepasswordModel)? loading,
    TResult? Function(ChangepasswordModel changepasswordModel)? content,
    TResult? Function(ChangepasswordModel changepasswordModel, String? message)?
        success,
    TResult? Function(ChangepasswordModel changepasswordModel, String message)?
        failed,
  }) {
    return success?.call(changepasswordModel, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChangepasswordModel changepasswordModel)? loading,
    TResult Function(ChangepasswordModel changepasswordModel)? content,
    TResult Function(ChangepasswordModel changepasswordModel, String? message)?
        success,
    TResult Function(ChangepasswordModel changepasswordModel, String message)?
        failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(changepasswordModel, message);
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

abstract class _Success implements ChangepasswordState {
  const factory _Success(final ChangepasswordModel changepasswordModel,
      final String? message) = _$SuccessImpl;

  @override
  ChangepasswordModel get changepasswordModel;
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res>
    implements $ChangepasswordStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChangepasswordModel changepasswordModel, String message});

  @override
  $ChangepasswordModelCopyWith<$Res> get changepasswordModel;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$ChangepasswordStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changepasswordModel = null,
    Object? message = null,
  }) {
    return _then(_$FailedImpl(
      null == changepasswordModel
          ? _value.changepasswordModel
          : changepasswordModel // ignore: cast_nullable_to_non_nullable
              as ChangepasswordModel,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.changepasswordModel, this.message);

  @override
  final ChangepasswordModel changepasswordModel;
  @override
  final String message;

  @override
  String toString() {
    return 'ChangepasswordState.failed(changepasswordModel: $changepasswordModel, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.changepasswordModel, changepasswordModel) ||
                other.changepasswordModel == changepasswordModel) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, changepasswordModel, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChangepasswordModel changepasswordModel) loading,
    required TResult Function(ChangepasswordModel changepasswordModel) content,
    required TResult Function(
            ChangepasswordModel changepasswordModel, String? message)
        success,
    required TResult Function(
            ChangepasswordModel changepasswordModel, String message)
        failed,
  }) {
    return failed(changepasswordModel, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChangepasswordModel changepasswordModel)? loading,
    TResult? Function(ChangepasswordModel changepasswordModel)? content,
    TResult? Function(ChangepasswordModel changepasswordModel, String? message)?
        success,
    TResult? Function(ChangepasswordModel changepasswordModel, String message)?
        failed,
  }) {
    return failed?.call(changepasswordModel, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChangepasswordModel changepasswordModel)? loading,
    TResult Function(ChangepasswordModel changepasswordModel)? content,
    TResult Function(ChangepasswordModel changepasswordModel, String? message)?
        success,
    TResult Function(ChangepasswordModel changepasswordModel, String message)?
        failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(changepasswordModel, message);
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

abstract class _Failed implements ChangepasswordState {
  const factory _Failed(
          final ChangepasswordModel changepasswordModel, final String message) =
      _$FailedImpl;

  @override
  ChangepasswordModel get changepasswordModel;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
