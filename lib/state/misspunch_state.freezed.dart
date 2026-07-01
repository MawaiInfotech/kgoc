// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'misspunch_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MisspunchState {
  List<MisspunchModel> get misspunchModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MisspunchModel> misspunchModel) loading,
    required TResult Function(List<MisspunchModel> misspunchModel) content,
    required TResult Function(List<MisspunchModel> misspunchModel) success,
    required TResult Function(
            List<MisspunchModel> misspunchModel, dynamic message)
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MisspunchModel> misspunchModel)? loading,
    TResult? Function(List<MisspunchModel> misspunchModel)? content,
    TResult? Function(List<MisspunchModel> misspunchModel)? success,
    TResult? Function(List<MisspunchModel> misspunchModel, dynamic message)?
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MisspunchModel> misspunchModel)? loading,
    TResult Function(List<MisspunchModel> misspunchModel)? content,
    TResult Function(List<MisspunchModel> misspunchModel)? success,
    TResult Function(List<MisspunchModel> misspunchModel, dynamic message)?
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
  $MisspunchStateCopyWith<MisspunchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MisspunchStateCopyWith<$Res> {
  factory $MisspunchStateCopyWith(
          MisspunchState value, $Res Function(MisspunchState) then) =
      _$MisspunchStateCopyWithImpl<$Res, MisspunchState>;
  @useResult
  $Res call({List<MisspunchModel> misspunchModel});
}

/// @nodoc
class _$MisspunchStateCopyWithImpl<$Res, $Val extends MisspunchState>
    implements $MisspunchStateCopyWith<$Res> {
  _$MisspunchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? misspunchModel = null,
  }) {
    return _then(_value.copyWith(
      misspunchModel: null == misspunchModel
          ? _value.misspunchModel
          : misspunchModel // ignore: cast_nullable_to_non_nullable
              as List<MisspunchModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $MisspunchStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MisspunchModel> misspunchModel});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$MisspunchStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? misspunchModel = null,
  }) {
    return _then(_$LoadingImpl(
      null == misspunchModel
          ? _value._misspunchModel
          : misspunchModel // ignore: cast_nullable_to_non_nullable
              as List<MisspunchModel>,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(final List<MisspunchModel> misspunchModel)
      : _misspunchModel = misspunchModel;

  final List<MisspunchModel> _misspunchModel;
  @override
  List<MisspunchModel> get misspunchModel {
    if (_misspunchModel is EqualUnmodifiableListView) return _misspunchModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_misspunchModel);
  }

  @override
  String toString() {
    return 'MisspunchState.loading(misspunchModel: $misspunchModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality()
                .equals(other._misspunchModel, _misspunchModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_misspunchModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MisspunchModel> misspunchModel) loading,
    required TResult Function(List<MisspunchModel> misspunchModel) content,
    required TResult Function(List<MisspunchModel> misspunchModel) success,
    required TResult Function(
            List<MisspunchModel> misspunchModel, dynamic message)
        failed,
  }) {
    return loading(misspunchModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MisspunchModel> misspunchModel)? loading,
    TResult? Function(List<MisspunchModel> misspunchModel)? content,
    TResult? Function(List<MisspunchModel> misspunchModel)? success,
    TResult? Function(List<MisspunchModel> misspunchModel, dynamic message)?
        failed,
  }) {
    return loading?.call(misspunchModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MisspunchModel> misspunchModel)? loading,
    TResult Function(List<MisspunchModel> misspunchModel)? content,
    TResult Function(List<MisspunchModel> misspunchModel)? success,
    TResult Function(List<MisspunchModel> misspunchModel, dynamic message)?
        failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(misspunchModel);
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

abstract class _Loading implements MisspunchState {
  const factory _Loading(final List<MisspunchModel> misspunchModel) =
      _$LoadingImpl;

  @override
  List<MisspunchModel> get misspunchModel;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res>
    implements $MisspunchStateCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MisspunchModel> misspunchModel});
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$MisspunchStateCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? misspunchModel = null,
  }) {
    return _then(_$ContentImpl(
      null == misspunchModel
          ? _value._misspunchModel
          : misspunchModel // ignore: cast_nullable_to_non_nullable
              as List<MisspunchModel>,
    ));
  }
}

/// @nodoc

class _$ContentImpl implements _Content {
  const _$ContentImpl(final List<MisspunchModel> misspunchModel)
      : _misspunchModel = misspunchModel;

  final List<MisspunchModel> _misspunchModel;
  @override
  List<MisspunchModel> get misspunchModel {
    if (_misspunchModel is EqualUnmodifiableListView) return _misspunchModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_misspunchModel);
  }

  @override
  String toString() {
    return 'MisspunchState.content(misspunchModel: $misspunchModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            const DeepCollectionEquality()
                .equals(other._misspunchModel, _misspunchModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_misspunchModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MisspunchModel> misspunchModel) loading,
    required TResult Function(List<MisspunchModel> misspunchModel) content,
    required TResult Function(List<MisspunchModel> misspunchModel) success,
    required TResult Function(
            List<MisspunchModel> misspunchModel, dynamic message)
        failed,
  }) {
    return content(misspunchModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MisspunchModel> misspunchModel)? loading,
    TResult? Function(List<MisspunchModel> misspunchModel)? content,
    TResult? Function(List<MisspunchModel> misspunchModel)? success,
    TResult? Function(List<MisspunchModel> misspunchModel, dynamic message)?
        failed,
  }) {
    return content?.call(misspunchModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MisspunchModel> misspunchModel)? loading,
    TResult Function(List<MisspunchModel> misspunchModel)? content,
    TResult Function(List<MisspunchModel> misspunchModel)? success,
    TResult Function(List<MisspunchModel> misspunchModel, dynamic message)?
        failed,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(misspunchModel);
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

abstract class _Content implements MisspunchState {
  const factory _Content(final List<MisspunchModel> misspunchModel) =
      _$ContentImpl;

  @override
  List<MisspunchModel> get misspunchModel;
  @override
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $MisspunchStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MisspunchModel> misspunchModel});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$MisspunchStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? misspunchModel = null,
  }) {
    return _then(_$SuccessImpl(
      null == misspunchModel
          ? _value._misspunchModel
          : misspunchModel // ignore: cast_nullable_to_non_nullable
              as List<MisspunchModel>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<MisspunchModel> misspunchModel)
      : _misspunchModel = misspunchModel;

  final List<MisspunchModel> _misspunchModel;
  @override
  List<MisspunchModel> get misspunchModel {
    if (_misspunchModel is EqualUnmodifiableListView) return _misspunchModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_misspunchModel);
  }

  @override
  String toString() {
    return 'MisspunchState.success(misspunchModel: $misspunchModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._misspunchModel, _misspunchModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_misspunchModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MisspunchModel> misspunchModel) loading,
    required TResult Function(List<MisspunchModel> misspunchModel) content,
    required TResult Function(List<MisspunchModel> misspunchModel) success,
    required TResult Function(
            List<MisspunchModel> misspunchModel, dynamic message)
        failed,
  }) {
    return success(misspunchModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MisspunchModel> misspunchModel)? loading,
    TResult? Function(List<MisspunchModel> misspunchModel)? content,
    TResult? Function(List<MisspunchModel> misspunchModel)? success,
    TResult? Function(List<MisspunchModel> misspunchModel, dynamic message)?
        failed,
  }) {
    return success?.call(misspunchModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MisspunchModel> misspunchModel)? loading,
    TResult Function(List<MisspunchModel> misspunchModel)? content,
    TResult Function(List<MisspunchModel> misspunchModel)? success,
    TResult Function(List<MisspunchModel> misspunchModel, dynamic message)?
        failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(misspunchModel);
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

abstract class _Success implements MisspunchState {
  const factory _Success(final List<MisspunchModel> misspunchModel) =
      _$SuccessImpl;

  @override
  List<MisspunchModel> get misspunchModel;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res>
    implements $MisspunchStateCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MisspunchModel> misspunchModel, dynamic message});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$MisspunchStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? misspunchModel = null,
    Object? message = freezed,
  }) {
    return _then(_$FailedImpl(
      null == misspunchModel
          ? _value._misspunchModel
          : misspunchModel // ignore: cast_nullable_to_non_nullable
              as List<MisspunchModel>,
      freezed == message ? _value.message! : message,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(final List<MisspunchModel> misspunchModel, this.message)
      : _misspunchModel = misspunchModel;

  final List<MisspunchModel> _misspunchModel;
  @override
  List<MisspunchModel> get misspunchModel {
    if (_misspunchModel is EqualUnmodifiableListView) return _misspunchModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_misspunchModel);
  }

  @override
  final dynamic message;

  @override
  String toString() {
    return 'MisspunchState.failed(misspunchModel: $misspunchModel, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            const DeepCollectionEquality()
                .equals(other._misspunchModel, _misspunchModel) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_misspunchModel),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MisspunchModel> misspunchModel) loading,
    required TResult Function(List<MisspunchModel> misspunchModel) content,
    required TResult Function(List<MisspunchModel> misspunchModel) success,
    required TResult Function(
            List<MisspunchModel> misspunchModel, dynamic message)
        failed,
  }) {
    return failed(misspunchModel, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MisspunchModel> misspunchModel)? loading,
    TResult? Function(List<MisspunchModel> misspunchModel)? content,
    TResult? Function(List<MisspunchModel> misspunchModel)? success,
    TResult? Function(List<MisspunchModel> misspunchModel, dynamic message)?
        failed,
  }) {
    return failed?.call(misspunchModel, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MisspunchModel> misspunchModel)? loading,
    TResult Function(List<MisspunchModel> misspunchModel)? content,
    TResult Function(List<MisspunchModel> misspunchModel)? success,
    TResult Function(List<MisspunchModel> misspunchModel, dynamic message)?
        failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(misspunchModel, message);
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

abstract class _Failed implements MisspunchState {
  const factory _Failed(
          final List<MisspunchModel> misspunchModel, final dynamic message) =
      _$FailedImpl;

  @override
  List<MisspunchModel> get misspunchModel;
  dynamic get message;
  @override
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
