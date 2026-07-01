// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'newjoinee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewJoineeModel _$NewJoineeModelFromJson(Map<String, dynamic> json) {
  return _NewJoineeModel.fromJson(json);
}

/// @nodoc
mixin _$NewJoineeModel {
  @JsonKey(name: "emp_first_name")
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "emp_last_name")
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "photo_file")
  String get photo => throw _privateConstructorUsedError;
  @JsonKey(name: "join_date")
  String get joiningDate => throw _privateConstructorUsedError;
  @JsonKey(name: "dept_name")
  String get departName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewJoineeModelCopyWith<NewJoineeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewJoineeModelCopyWith<$Res> {
  factory $NewJoineeModelCopyWith(
          NewJoineeModel value, $Res Function(NewJoineeModel) then) =
      _$NewJoineeModelCopyWithImpl<$Res, NewJoineeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "emp_first_name") String firstName,
      @JsonKey(name: "emp_last_name") String lastName,
      @JsonKey(name: "photo_file") String photo,
      @JsonKey(name: "join_date") String joiningDate,
      @JsonKey(name: "dept_name") String departName});
}

/// @nodoc
class _$NewJoineeModelCopyWithImpl<$Res, $Val extends NewJoineeModel>
    implements $NewJoineeModelCopyWith<$Res> {
  _$NewJoineeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? photo = null,
    Object? joiningDate = null,
    Object? departName = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      joiningDate: null == joiningDate
          ? _value.joiningDate
          : joiningDate // ignore: cast_nullable_to_non_nullable
              as String,
      departName: null == departName
          ? _value.departName
          : departName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewJoineeModelImplCopyWith<$Res>
    implements $NewJoineeModelCopyWith<$Res> {
  factory _$$NewJoineeModelImplCopyWith(_$NewJoineeModelImpl value,
          $Res Function(_$NewJoineeModelImpl) then) =
      __$$NewJoineeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "emp_first_name") String firstName,
      @JsonKey(name: "emp_last_name") String lastName,
      @JsonKey(name: "photo_file") String photo,
      @JsonKey(name: "join_date") String joiningDate,
      @JsonKey(name: "dept_name") String departName});
}

/// @nodoc
class __$$NewJoineeModelImplCopyWithImpl<$Res>
    extends _$NewJoineeModelCopyWithImpl<$Res, _$NewJoineeModelImpl>
    implements _$$NewJoineeModelImplCopyWith<$Res> {
  __$$NewJoineeModelImplCopyWithImpl(
      _$NewJoineeModelImpl _value, $Res Function(_$NewJoineeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? photo = null,
    Object? joiningDate = null,
    Object? departName = null,
  }) {
    return _then(_$NewJoineeModelImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      joiningDate: null == joiningDate
          ? _value.joiningDate
          : joiningDate // ignore: cast_nullable_to_non_nullable
              as String,
      departName: null == departName
          ? _value.departName
          : departName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewJoineeModelImpl implements _NewJoineeModel {
  const _$NewJoineeModelImpl(
      {@JsonKey(name: "emp_first_name") this.firstName = "",
      @JsonKey(name: "emp_last_name") this.lastName = "",
      @JsonKey(name: "photo_file") this.photo = "",
      @JsonKey(name: "join_date") this.joiningDate = "",
      @JsonKey(name: "dept_name") this.departName = ""});

  factory _$NewJoineeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewJoineeModelImplFromJson(json);

  @override
  @JsonKey(name: "emp_first_name")
  final String firstName;
  @override
  @JsonKey(name: "emp_last_name")
  final String lastName;
  @override
  @JsonKey(name: "photo_file")
  final String photo;
  @override
  @JsonKey(name: "join_date")
  final String joiningDate;
  @override
  @JsonKey(name: "dept_name")
  final String departName;

  @override
  String toString() {
    return 'NewJoineeModel(firstName: $firstName, lastName: $lastName, photo: $photo, joiningDate: $joiningDate, departName: $departName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewJoineeModelImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.joiningDate, joiningDate) ||
                other.joiningDate == joiningDate) &&
            (identical(other.departName, departName) ||
                other.departName == departName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstName, lastName, photo, joiningDate, departName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewJoineeModelImplCopyWith<_$NewJoineeModelImpl> get copyWith =>
      __$$NewJoineeModelImplCopyWithImpl<_$NewJoineeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewJoineeModelImplToJson(
      this,
    );
  }
}

abstract class _NewJoineeModel implements NewJoineeModel {
  const factory _NewJoineeModel(
          {@JsonKey(name: "emp_first_name") final String firstName,
          @JsonKey(name: "emp_last_name") final String lastName,
          @JsonKey(name: "photo_file") final String photo,
          @JsonKey(name: "join_date") final String joiningDate,
          @JsonKey(name: "dept_name") final String departName}) =
      _$NewJoineeModelImpl;

  factory _NewJoineeModel.fromJson(Map<String, dynamic> json) =
      _$NewJoineeModelImpl.fromJson;

  @override
  @JsonKey(name: "emp_first_name")
  String get firstName;
  @override
  @JsonKey(name: "emp_last_name")
  String get lastName;
  @override
  @JsonKey(name: "photo_file")
  String get photo;
  @override
  @JsonKey(name: "join_date")
  String get joiningDate;
  @override
  @JsonKey(name: "dept_name")
  String get departName;
  @override
  @JsonKey(ignore: true)
  _$$NewJoineeModelImplCopyWith<_$NewJoineeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
