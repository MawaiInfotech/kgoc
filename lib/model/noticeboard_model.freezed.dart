// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'noticeboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoticeboardModel _$NoticeboardModelFromJson(Map<String, dynamic> json) {
  return _NoticeboardModel.fromJson(json);
}

/// @nodoc
mixin _$NoticeboardModel {
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "department")
  String get department => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticeboardModelCopyWith<NoticeboardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeboardModelCopyWith<$Res> {
  factory $NoticeboardModelCopyWith(
          NoticeboardModel value, $Res Function(NoticeboardModel) then) =
      _$NoticeboardModelCopyWithImpl<$Res, NoticeboardModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "title") String title,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "created_at") String date,
      @JsonKey(name: "created_by") String createdBy,
      @JsonKey(name: "department") String department});
}

/// @nodoc
class _$NoticeboardModelCopyWithImpl<$Res, $Val extends NoticeboardModel>
    implements $NoticeboardModelCopyWith<$Res> {
  _$NoticeboardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? date = null,
    Object? createdBy = null,
    Object? department = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoticeboardModelImplCopyWith<$Res>
    implements $NoticeboardModelCopyWith<$Res> {
  factory _$$NoticeboardModelImplCopyWith(_$NoticeboardModelImpl value,
          $Res Function(_$NoticeboardModelImpl) then) =
      __$$NoticeboardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "title") String title,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "created_at") String date,
      @JsonKey(name: "created_by") String createdBy,
      @JsonKey(name: "department") String department});
}

/// @nodoc
class __$$NoticeboardModelImplCopyWithImpl<$Res>
    extends _$NoticeboardModelCopyWithImpl<$Res, _$NoticeboardModelImpl>
    implements _$$NoticeboardModelImplCopyWith<$Res> {
  __$$NoticeboardModelImplCopyWithImpl(_$NoticeboardModelImpl _value,
      $Res Function(_$NoticeboardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? date = null,
    Object? createdBy = null,
    Object? department = null,
  }) {
    return _then(_$NoticeboardModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoticeboardModelImpl implements _NoticeboardModel {
  const _$NoticeboardModelImpl(
      {@JsonKey(name: "title") this.title = "",
      @JsonKey(name: "description") this.description = "",
      @JsonKey(name: "created_at") this.date = "",
      @JsonKey(name: "created_by") this.createdBy = "",
      @JsonKey(name: "department") this.department = ""});

  factory _$NoticeboardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoticeboardModelImplFromJson(json);

  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "created_at")
  final String date;
  @override
  @JsonKey(name: "created_by")
  final String createdBy;
  @override
  @JsonKey(name: "department")
  final String department;

  @override
  String toString() {
    return 'NoticeboardModel(title: $title, description: $description, date: $date, createdBy: $createdBy, department: $department)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticeboardModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.department, department) ||
                other.department == department));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, date, createdBy, department);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticeboardModelImplCopyWith<_$NoticeboardModelImpl> get copyWith =>
      __$$NoticeboardModelImplCopyWithImpl<_$NoticeboardModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoticeboardModelImplToJson(
      this,
    );
  }
}

abstract class _NoticeboardModel implements NoticeboardModel {
  const factory _NoticeboardModel(
          {@JsonKey(name: "title") final String title,
          @JsonKey(name: "description") final String description,
          @JsonKey(name: "created_at") final String date,
          @JsonKey(name: "created_by") final String createdBy,
          @JsonKey(name: "department") final String department}) =
      _$NoticeboardModelImpl;

  factory _NoticeboardModel.fromJson(Map<String, dynamic> json) =
      _$NoticeboardModelImpl.fromJson;

  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "created_at")
  String get date;
  @override
  @JsonKey(name: "created_by")
  String get createdBy;
  @override
  @JsonKey(name: "department")
  String get department;
  @override
  @JsonKey(ignore: true)
  _$$NoticeboardModelImplCopyWith<_$NoticeboardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
