// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teamattendance_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TeamAttendanceState {
  TeamAttendanceSuppModel get teamAttendanceSuppModel =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)
        loading,
    required TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)
        content,
    required TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)
        success,
    required TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? loading,
    TResult? Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? content,
    TResult? Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? success,
    TResult? Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? loading,
    TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? content,
    TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? success,
    TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? failed,
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
  $TeamAttendanceStateCopyWith<TeamAttendanceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamAttendanceStateCopyWith<$Res> {
  factory $TeamAttendanceStateCopyWith(
          TeamAttendanceState value, $Res Function(TeamAttendanceState) then) =
      _$TeamAttendanceStateCopyWithImpl<$Res, TeamAttendanceState>;
  @useResult
  $Res call({TeamAttendanceSuppModel teamAttendanceSuppModel});

  $TeamAttendanceSuppModelCopyWith<$Res> get teamAttendanceSuppModel;
}

/// @nodoc
class _$TeamAttendanceStateCopyWithImpl<$Res, $Val extends TeamAttendanceState>
    implements $TeamAttendanceStateCopyWith<$Res> {
  _$TeamAttendanceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamAttendanceSuppModel = null,
  }) {
    return _then(_value.copyWith(
      teamAttendanceSuppModel: null == teamAttendanceSuppModel
          ? _value.teamAttendanceSuppModel
          : teamAttendanceSuppModel // ignore: cast_nullable_to_non_nullable
              as TeamAttendanceSuppModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamAttendanceSuppModelCopyWith<$Res> get teamAttendanceSuppModel {
    return $TeamAttendanceSuppModelCopyWith<$Res>(
        _value.teamAttendanceSuppModel, (value) {
      return _then(_value.copyWith(teamAttendanceSuppModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $TeamAttendanceStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TeamAttendanceSuppModel teamAttendanceSuppModel});

  @override
  $TeamAttendanceSuppModelCopyWith<$Res> get teamAttendanceSuppModel;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$TeamAttendanceStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamAttendanceSuppModel = null,
  }) {
    return _then(_$LoadingImpl(
      null == teamAttendanceSuppModel
          ? _value.teamAttendanceSuppModel
          : teamAttendanceSuppModel // ignore: cast_nullable_to_non_nullable
              as TeamAttendanceSuppModel,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(this.teamAttendanceSuppModel);

  @override
  final TeamAttendanceSuppModel teamAttendanceSuppModel;

  @override
  String toString() {
    return 'TeamAttendanceState.loading(teamAttendanceSuppModel: $teamAttendanceSuppModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(
                    other.teamAttendanceSuppModel, teamAttendanceSuppModel) ||
                other.teamAttendanceSuppModel == teamAttendanceSuppModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, teamAttendanceSuppModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)
        loading,
    required TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)
        content,
    required TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)
        success,
    required TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)
        failed,
  }) {
    return loading(teamAttendanceSuppModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? loading,
    TResult? Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? content,
    TResult? Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? success,
    TResult? Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? failed,
  }) {
    return loading?.call(teamAttendanceSuppModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? loading,
    TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? content,
    TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? success,
    TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(teamAttendanceSuppModel);
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

abstract class _Loading implements TeamAttendanceState {
  const factory _Loading(
      final TeamAttendanceSuppModel teamAttendanceSuppModel) = _$LoadingImpl;

  @override
  TeamAttendanceSuppModel get teamAttendanceSuppModel;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res>
    implements $TeamAttendanceStateCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TeamAttendanceSuppModel teamAttendanceSuppModel});

  @override
  $TeamAttendanceSuppModelCopyWith<$Res> get teamAttendanceSuppModel;
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$TeamAttendanceStateCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamAttendanceSuppModel = null,
  }) {
    return _then(_$ContentImpl(
      null == teamAttendanceSuppModel
          ? _value.teamAttendanceSuppModel
          : teamAttendanceSuppModel // ignore: cast_nullable_to_non_nullable
              as TeamAttendanceSuppModel,
    ));
  }
}

/// @nodoc

class _$ContentImpl implements _Content {
  const _$ContentImpl(this.teamAttendanceSuppModel);

  @override
  final TeamAttendanceSuppModel teamAttendanceSuppModel;

  @override
  String toString() {
    return 'TeamAttendanceState.content(teamAttendanceSuppModel: $teamAttendanceSuppModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            (identical(
                    other.teamAttendanceSuppModel, teamAttendanceSuppModel) ||
                other.teamAttendanceSuppModel == teamAttendanceSuppModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, teamAttendanceSuppModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)
        loading,
    required TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)
        content,
    required TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)
        success,
    required TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)
        failed,
  }) {
    return content(teamAttendanceSuppModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? loading,
    TResult? Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? content,
    TResult? Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? success,
    TResult? Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? failed,
  }) {
    return content?.call(teamAttendanceSuppModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? loading,
    TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? content,
    TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? success,
    TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? failed,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(teamAttendanceSuppModel);
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

abstract class _Content implements TeamAttendanceState {
  const factory _Content(
      final TeamAttendanceSuppModel teamAttendanceSuppModel) = _$ContentImpl;

  @override
  TeamAttendanceSuppModel get teamAttendanceSuppModel;
  @override
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $TeamAttendanceStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TeamAttendanceSuppModel teamAttendanceSuppModel});

  @override
  $TeamAttendanceSuppModelCopyWith<$Res> get teamAttendanceSuppModel;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$TeamAttendanceStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamAttendanceSuppModel = null,
  }) {
    return _then(_$SuccessImpl(
      null == teamAttendanceSuppModel
          ? _value.teamAttendanceSuppModel
          : teamAttendanceSuppModel // ignore: cast_nullable_to_non_nullable
              as TeamAttendanceSuppModel,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.teamAttendanceSuppModel);

  @override
  final TeamAttendanceSuppModel teamAttendanceSuppModel;

  @override
  String toString() {
    return 'TeamAttendanceState.success(teamAttendanceSuppModel: $teamAttendanceSuppModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(
                    other.teamAttendanceSuppModel, teamAttendanceSuppModel) ||
                other.teamAttendanceSuppModel == teamAttendanceSuppModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, teamAttendanceSuppModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)
        loading,
    required TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)
        content,
    required TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)
        success,
    required TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)
        failed,
  }) {
    return success(teamAttendanceSuppModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? loading,
    TResult? Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? content,
    TResult? Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? success,
    TResult? Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? failed,
  }) {
    return success?.call(teamAttendanceSuppModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? loading,
    TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? content,
    TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? success,
    TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(teamAttendanceSuppModel);
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

abstract class _Success implements TeamAttendanceState {
  const factory _Success(
      final TeamAttendanceSuppModel teamAttendanceSuppModel) = _$SuccessImpl;

  @override
  TeamAttendanceSuppModel get teamAttendanceSuppModel;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res>
    implements $TeamAttendanceStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TeamAttendanceSuppModel teamAttendanceSuppModel});

  @override
  $TeamAttendanceSuppModelCopyWith<$Res> get teamAttendanceSuppModel;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$TeamAttendanceStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamAttendanceSuppModel = null,
  }) {
    return _then(_$FailedImpl(
      null == teamAttendanceSuppModel
          ? _value.teamAttendanceSuppModel
          : teamAttendanceSuppModel // ignore: cast_nullable_to_non_nullable
              as TeamAttendanceSuppModel,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.teamAttendanceSuppModel);

  @override
  final TeamAttendanceSuppModel teamAttendanceSuppModel;

  @override
  String toString() {
    return 'TeamAttendanceState.failed(teamAttendanceSuppModel: $teamAttendanceSuppModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(
                    other.teamAttendanceSuppModel, teamAttendanceSuppModel) ||
                other.teamAttendanceSuppModel == teamAttendanceSuppModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, teamAttendanceSuppModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)
        loading,
    required TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)
        content,
    required TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)
        success,
    required TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)
        failed,
  }) {
    return failed(teamAttendanceSuppModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? loading,
    TResult? Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? content,
    TResult? Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? success,
    TResult? Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? failed,
  }) {
    return failed?.call(teamAttendanceSuppModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? loading,
    TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? content,
    TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? success,
    TResult Function(TeamAttendanceSuppModel teamAttendanceSuppModel)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(teamAttendanceSuppModel);
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

abstract class _Failed implements TeamAttendanceState {
  const factory _Failed(final TeamAttendanceSuppModel teamAttendanceSuppModel) =
      _$FailedImpl;

  @override
  TeamAttendanceSuppModel get teamAttendanceSuppModel;
  @override
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
