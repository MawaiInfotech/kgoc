// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklogin_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckLoginState {
  AttendanceAction get action => throw _privateConstructorUsedError;
  CheckLoginModelForm get form => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AttendanceAction action, CheckLoginModelForm form)
        loading,
    required TResult Function(AttendanceAction action, CheckLoginModelForm form)
        content,
    required TResult Function(
            AttendanceAction action, CheckLoginModelForm form, String message)
        success,
    required TResult Function(
            AttendanceAction action, CheckLoginModelForm form, String message)
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AttendanceAction action, CheckLoginModelForm form)?
        loading,
    TResult? Function(AttendanceAction action, CheckLoginModelForm form)?
        content,
    TResult? Function(
            AttendanceAction action, CheckLoginModelForm form, String message)?
        success,
    TResult? Function(
            AttendanceAction action, CheckLoginModelForm form, String message)?
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AttendanceAction action, CheckLoginModelForm form)?
        loading,
    TResult Function(AttendanceAction action, CheckLoginModelForm form)?
        content,
    TResult Function(
            AttendanceAction action, CheckLoginModelForm form, String message)?
        success,
    TResult Function(
            AttendanceAction action, CheckLoginModelForm form, String message)?
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
  $CheckLoginStateCopyWith<CheckLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckLoginStateCopyWith<$Res> {
  factory $CheckLoginStateCopyWith(
          CheckLoginState value, $Res Function(CheckLoginState) then) =
      _$CheckLoginStateCopyWithImpl<$Res, CheckLoginState>;
  @useResult
  $Res call({AttendanceAction action, CheckLoginModelForm form});
}

/// @nodoc
class _$CheckLoginStateCopyWithImpl<$Res, $Val extends CheckLoginState>
    implements $CheckLoginStateCopyWith<$Res> {
  _$CheckLoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? form = null,
  }) {
    return _then(_value.copyWith(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as AttendanceAction,
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as CheckLoginModelForm,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $CheckLoginStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AttendanceAction action, CheckLoginModelForm form});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CheckLoginStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? form = null,
  }) {
    return _then(_$LoadingImpl(
      null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as AttendanceAction,
      null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as CheckLoginModelForm,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(this.action, this.form);

  @override
  final AttendanceAction action;
  @override
  final CheckLoginModelForm form;

  @override
  String toString() {
    return 'CheckLoginState.loading(action: $action, form: $form)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.form, form) || other.form == form));
  }

  @override
  int get hashCode => Object.hash(runtimeType, action, form);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AttendanceAction action, CheckLoginModelForm form)
        loading,
    required TResult Function(AttendanceAction action, CheckLoginModelForm form)
        content,
    required TResult Function(
            AttendanceAction action, CheckLoginModelForm form, String message)
        success,
    required TResult Function(
            AttendanceAction action, CheckLoginModelForm form, String message)
        failed,
  }) {
    return loading(action, form);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AttendanceAction action, CheckLoginModelForm form)?
        loading,
    TResult? Function(AttendanceAction action, CheckLoginModelForm form)?
        content,
    TResult? Function(
            AttendanceAction action, CheckLoginModelForm form, String message)?
        success,
    TResult? Function(
            AttendanceAction action, CheckLoginModelForm form, String message)?
        failed,
  }) {
    return loading?.call(action, form);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AttendanceAction action, CheckLoginModelForm form)?
        loading,
    TResult Function(AttendanceAction action, CheckLoginModelForm form)?
        content,
    TResult Function(
            AttendanceAction action, CheckLoginModelForm form, String message)?
        success,
    TResult Function(
            AttendanceAction action, CheckLoginModelForm form, String message)?
        failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(action, form);
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

abstract class _Loading implements CheckLoginState {
  const factory _Loading(
          final AttendanceAction action, final CheckLoginModelForm form) =
      _$LoadingImpl;

  @override
  AttendanceAction get action;
  @override
  CheckLoginModelForm get form;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res>
    implements $CheckLoginStateCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AttendanceAction action, CheckLoginModelForm form});
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$CheckLoginStateCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? form = null,
  }) {
    return _then(_$ContentImpl(
      null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as AttendanceAction,
      null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as CheckLoginModelForm,
    ));
  }
}

/// @nodoc

class _$ContentImpl implements _Content {
  const _$ContentImpl(this.action, this.form);

  @override
  final AttendanceAction action;
  @override
  final CheckLoginModelForm form;

  @override
  String toString() {
    return 'CheckLoginState.content(action: $action, form: $form)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.form, form) || other.form == form));
  }

  @override
  int get hashCode => Object.hash(runtimeType, action, form);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AttendanceAction action, CheckLoginModelForm form)
        loading,
    required TResult Function(AttendanceAction action, CheckLoginModelForm form)
        content,
    required TResult Function(
            AttendanceAction action, CheckLoginModelForm form, String message)
        success,
    required TResult Function(
            AttendanceAction action, CheckLoginModelForm form, String message)
        failed,
  }) {
    return content(action, form);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AttendanceAction action, CheckLoginModelForm form)?
        loading,
    TResult? Function(AttendanceAction action, CheckLoginModelForm form)?
        content,
    TResult? Function(
            AttendanceAction action, CheckLoginModelForm form, String message)?
        success,
    TResult? Function(
            AttendanceAction action, CheckLoginModelForm form, String message)?
        failed,
  }) {
    return content?.call(action, form);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AttendanceAction action, CheckLoginModelForm form)?
        loading,
    TResult Function(AttendanceAction action, CheckLoginModelForm form)?
        content,
    TResult Function(
            AttendanceAction action, CheckLoginModelForm form, String message)?
        success,
    TResult Function(
            AttendanceAction action, CheckLoginModelForm form, String message)?
        failed,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(action, form);
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

abstract class _Content implements CheckLoginState {
  const factory _Content(
          final AttendanceAction action, final CheckLoginModelForm form) =
      _$ContentImpl;

  @override
  AttendanceAction get action;
  @override
  CheckLoginModelForm get form;
  @override
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $CheckLoginStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AttendanceAction action, CheckLoginModelForm form, String message});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CheckLoginStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? form = null,
    Object? message = null,
  }) {
    return _then(_$SuccessImpl(
      null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as AttendanceAction,
      null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as CheckLoginModelForm,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.action, this.form, this.message);

  @override
  final AttendanceAction action;
  @override
  final CheckLoginModelForm form;
  @override
  final String message;

  @override
  String toString() {
    return 'CheckLoginState.success(action: $action, form: $form, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.form, form) || other.form == form) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, action, form, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AttendanceAction action, CheckLoginModelForm form)
        loading,
    required TResult Function(AttendanceAction action, CheckLoginModelForm form)
        content,
    required TResult Function(
            AttendanceAction action, CheckLoginModelForm form, String message)
        success,
    required TResult Function(
            AttendanceAction action, CheckLoginModelForm form, String message)
        failed,
  }) {
    return success(action, form, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AttendanceAction action, CheckLoginModelForm form)?
        loading,
    TResult? Function(AttendanceAction action, CheckLoginModelForm form)?
        content,
    TResult? Function(
            AttendanceAction action, CheckLoginModelForm form, String message)?
        success,
    TResult? Function(
            AttendanceAction action, CheckLoginModelForm form, String message)?
        failed,
  }) {
    return success?.call(action, form, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AttendanceAction action, CheckLoginModelForm form)?
        loading,
    TResult Function(AttendanceAction action, CheckLoginModelForm form)?
        content,
    TResult Function(
            AttendanceAction action, CheckLoginModelForm form, String message)?
        success,
    TResult Function(
            AttendanceAction action, CheckLoginModelForm form, String message)?
        failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(action, form, message);
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

abstract class _Success implements CheckLoginState {
  const factory _Success(final AttendanceAction action,
      final CheckLoginModelForm form, final String message) = _$SuccessImpl;

  @override
  AttendanceAction get action;
  @override
  CheckLoginModelForm get form;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res>
    implements $CheckLoginStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AttendanceAction action, CheckLoginModelForm form, String message});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$CheckLoginStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? form = null,
    Object? message = null,
  }) {
    return _then(_$FailedImpl(
      null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as AttendanceAction,
      null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as CheckLoginModelForm,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.action, this.form, this.message);

  @override
  final AttendanceAction action;
  @override
  final CheckLoginModelForm form;
  @override
  final String message;

  @override
  String toString() {
    return 'CheckLoginState.failed(action: $action, form: $form, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.form, form) || other.form == form) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, action, form, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AttendanceAction action, CheckLoginModelForm form)
        loading,
    required TResult Function(AttendanceAction action, CheckLoginModelForm form)
        content,
    required TResult Function(
            AttendanceAction action, CheckLoginModelForm form, String message)
        success,
    required TResult Function(
            AttendanceAction action, CheckLoginModelForm form, String message)
        failed,
  }) {
    return failed(action, form, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AttendanceAction action, CheckLoginModelForm form)?
        loading,
    TResult? Function(AttendanceAction action, CheckLoginModelForm form)?
        content,
    TResult? Function(
            AttendanceAction action, CheckLoginModelForm form, String message)?
        success,
    TResult? Function(
            AttendanceAction action, CheckLoginModelForm form, String message)?
        failed,
  }) {
    return failed?.call(action, form, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AttendanceAction action, CheckLoginModelForm form)?
        loading,
    TResult Function(AttendanceAction action, CheckLoginModelForm form)?
        content,
    TResult Function(
            AttendanceAction action, CheckLoginModelForm form, String message)?
        success,
    TResult Function(
            AttendanceAction action, CheckLoginModelForm form, String message)?
        failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(action, form, message);
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

abstract class _Failed implements CheckLoginState {
  const factory _Failed(final AttendanceAction action,
      final CheckLoginModelForm form, final String message) = _$FailedImpl;

  @override
  AttendanceAction get action;
  @override
  CheckLoginModelForm get form;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
