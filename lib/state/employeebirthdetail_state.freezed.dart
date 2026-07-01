// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employeebirthdetail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmployeeBirthDetailState {
  EmployeeBirthDetailModel get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeBirthDetailModel model) loading,
    required TResult Function(EmployeeBirthDetailModel model) content,
    required TResult Function(EmployeeBirthDetailModel model) success,
    required TResult Function(EmployeeBirthDetailModel model, String message)
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeBirthDetailModel model)? loading,
    TResult? Function(EmployeeBirthDetailModel model)? content,
    TResult? Function(EmployeeBirthDetailModel model)? success,
    TResult? Function(EmployeeBirthDetailModel model, String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeBirthDetailModel model)? loading,
    TResult Function(EmployeeBirthDetailModel model)? content,
    TResult Function(EmployeeBirthDetailModel model)? success,
    TResult Function(EmployeeBirthDetailModel model, String message)? failed,
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
  $EmployeeBirthDetailStateCopyWith<EmployeeBirthDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeBirthDetailStateCopyWith<$Res> {
  factory $EmployeeBirthDetailStateCopyWith(EmployeeBirthDetailState value,
          $Res Function(EmployeeBirthDetailState) then) =
      _$EmployeeBirthDetailStateCopyWithImpl<$Res, EmployeeBirthDetailState>;
  @useResult
  $Res call({EmployeeBirthDetailModel model});

  $EmployeeBirthDetailModelCopyWith<$Res> get model;
}

/// @nodoc
class _$EmployeeBirthDetailStateCopyWithImpl<$Res,
        $Val extends EmployeeBirthDetailState>
    implements $EmployeeBirthDetailStateCopyWith<$Res> {
  _$EmployeeBirthDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as EmployeeBirthDetailModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeBirthDetailModelCopyWith<$Res> get model {
    return $EmployeeBirthDetailModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $EmployeeBirthDetailStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmployeeBirthDetailModel model});

  @override
  $EmployeeBirthDetailModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$EmployeeBirthDetailStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$LoadingImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as EmployeeBirthDetailModel,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(this.model);

  @override
  final EmployeeBirthDetailModel model;

  @override
  String toString() {
    return 'EmployeeBirthDetailState.loading(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeBirthDetailModel model) loading,
    required TResult Function(EmployeeBirthDetailModel model) content,
    required TResult Function(EmployeeBirthDetailModel model) success,
    required TResult Function(EmployeeBirthDetailModel model, String message)
        failed,
  }) {
    return loading(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeBirthDetailModel model)? loading,
    TResult? Function(EmployeeBirthDetailModel model)? content,
    TResult? Function(EmployeeBirthDetailModel model)? success,
    TResult? Function(EmployeeBirthDetailModel model, String message)? failed,
  }) {
    return loading?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeBirthDetailModel model)? loading,
    TResult Function(EmployeeBirthDetailModel model)? content,
    TResult Function(EmployeeBirthDetailModel model)? success,
    TResult Function(EmployeeBirthDetailModel model, String message)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(model);
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

abstract class _Loading implements EmployeeBirthDetailState {
  const factory _Loading(final EmployeeBirthDetailModel model) = _$LoadingImpl;

  @override
  EmployeeBirthDetailModel get model;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res>
    implements $EmployeeBirthDetailStateCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmployeeBirthDetailModel model});

  @override
  $EmployeeBirthDetailModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$EmployeeBirthDetailStateCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$ContentImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as EmployeeBirthDetailModel,
    ));
  }
}

/// @nodoc

class _$ContentImpl implements _Content {
  const _$ContentImpl(this.model);

  @override
  final EmployeeBirthDetailModel model;

  @override
  String toString() {
    return 'EmployeeBirthDetailState.content(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeBirthDetailModel model) loading,
    required TResult Function(EmployeeBirthDetailModel model) content,
    required TResult Function(EmployeeBirthDetailModel model) success,
    required TResult Function(EmployeeBirthDetailModel model, String message)
        failed,
  }) {
    return content(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeBirthDetailModel model)? loading,
    TResult? Function(EmployeeBirthDetailModel model)? content,
    TResult? Function(EmployeeBirthDetailModel model)? success,
    TResult? Function(EmployeeBirthDetailModel model, String message)? failed,
  }) {
    return content?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeBirthDetailModel model)? loading,
    TResult Function(EmployeeBirthDetailModel model)? content,
    TResult Function(EmployeeBirthDetailModel model)? success,
    TResult Function(EmployeeBirthDetailModel model, String message)? failed,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(model);
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

abstract class _Content implements EmployeeBirthDetailState {
  const factory _Content(final EmployeeBirthDetailModel model) = _$ContentImpl;

  @override
  EmployeeBirthDetailModel get model;
  @override
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $EmployeeBirthDetailStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmployeeBirthDetailModel model});

  @override
  $EmployeeBirthDetailModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$EmployeeBirthDetailStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$SuccessImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as EmployeeBirthDetailModel,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.model);

  @override
  final EmployeeBirthDetailModel model;

  @override
  String toString() {
    return 'EmployeeBirthDetailState.success(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeBirthDetailModel model) loading,
    required TResult Function(EmployeeBirthDetailModel model) content,
    required TResult Function(EmployeeBirthDetailModel model) success,
    required TResult Function(EmployeeBirthDetailModel model, String message)
        failed,
  }) {
    return success(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeBirthDetailModel model)? loading,
    TResult? Function(EmployeeBirthDetailModel model)? content,
    TResult? Function(EmployeeBirthDetailModel model)? success,
    TResult? Function(EmployeeBirthDetailModel model, String message)? failed,
  }) {
    return success?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeBirthDetailModel model)? loading,
    TResult Function(EmployeeBirthDetailModel model)? content,
    TResult Function(EmployeeBirthDetailModel model)? success,
    TResult Function(EmployeeBirthDetailModel model, String message)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(model);
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

abstract class _Success implements EmployeeBirthDetailState {
  const factory _Success(final EmployeeBirthDetailModel model) = _$SuccessImpl;

  @override
  EmployeeBirthDetailModel get model;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res>
    implements $EmployeeBirthDetailStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmployeeBirthDetailModel model, String message});

  @override
  $EmployeeBirthDetailModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$EmployeeBirthDetailStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? message = null,
  }) {
    return _then(_$FailedImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as EmployeeBirthDetailModel,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.model, this.message);

  @override
  final EmployeeBirthDetailModel model;
  @override
  final String message;

  @override
  String toString() {
    return 'EmployeeBirthDetailState.failed(model: $model, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeBirthDetailModel model) loading,
    required TResult Function(EmployeeBirthDetailModel model) content,
    required TResult Function(EmployeeBirthDetailModel model) success,
    required TResult Function(EmployeeBirthDetailModel model, String message)
        failed,
  }) {
    return failed(model, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeBirthDetailModel model)? loading,
    TResult? Function(EmployeeBirthDetailModel model)? content,
    TResult? Function(EmployeeBirthDetailModel model)? success,
    TResult? Function(EmployeeBirthDetailModel model, String message)? failed,
  }) {
    return failed?.call(model, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeBirthDetailModel model)? loading,
    TResult Function(EmployeeBirthDetailModel model)? content,
    TResult Function(EmployeeBirthDetailModel model)? success,
    TResult Function(EmployeeBirthDetailModel model, String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(model, message);
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

abstract class _Failed implements EmployeeBirthDetailState {
  const factory _Failed(
          final EmployeeBirthDetailModel model, final String message) =
      _$FailedImpl;

  @override
  EmployeeBirthDetailModel get model;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
