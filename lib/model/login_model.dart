import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'login_model.g.dart';

@HiveType(typeId:0)
@JsonSerializable(includeIfNull : false)
class LoginModel{

  @HiveField(0)
  @JsonKey(name: 'emp_cd')
  late final String? emp_cd;

  @HiveField(1)
  @JsonKey(name: 'password')
  late final String? password;

  @HiveField(2)
  @JsonKey(name: 'user_master_id')
  late final int? user_master_id;

  @HiveField(3)
  @JsonKey(name: 'unit_cd')
  late final String? unit_cd;

  @HiveField(4)
  @JsonKey(name: 'user_name')
  late final String? user_name;

  @HiveField(5)
  @JsonKey(name: 'user_fname')
  late final String? user_fname;

  @HiveField(6)
  @JsonKey(name: 'emp_name')
  late final String? emp_name;

  @HiveField(7)
  @JsonKey(name: 'card_no')
  late final String? card_no;

  @HiveField(8)
  @JsonKey(name: 'default_fin_year')
  late final String? default_fin_year;

  @HiveField(9)
  @JsonKey(name: 'emp_last_name')
  late final String? emp_last_name;

  @HiveField(10)
  @JsonKey(name: 'emp_first_name')
  late final String? emp_first_name;

  @HiveField(11)
  @JsonKey(name: 'per_emailid')
  late final String? per_emailid;

  @HiveField(12)
  @JsonKey(name: "shift")
  late final String? shift;

  @HiveField(13)
  @JsonKey(name: 'start_time')
  late final String? start_time;

  @HiveField(14)
  @JsonKey(name: 'end_time')
  late final String? end_time;

  @HiveField(15)
  @JsonKey(name: "description")
  late final String? description;

  @HiveField(16)
  @JsonKey(name: "company_email")
  late final String? company_email;

  @HiveField(17)
  @JsonKey(name: "user_from")
  late final String? user_from;

  @HiveField(18)
  @JsonKey(name: "isCamera")
  late final bool? isCamera;

  LoginModel({
    this.emp_cd = '',
    this.password = '',
    this.user_master_id,
    this.unit_cd,
    this.user_name,
    this.user_fname,
    this.emp_name,
    this.card_no,
    this.default_fin_year,
    this.emp_first_name,
    this.emp_last_name,
    this.end_time,
    this.per_emailid,
    this.shift,
    this.start_time,
    this.description,
    this.company_email,
    this.user_from,
    this.isCamera
});


  factory LoginModel.fromJson(Map<String, dynamic> json) => _$LoginModelFromJson(json);
  Map<String,dynamic> toJson() => _$LoginModelToJson(this);

  @override
  String toString() => 'userCode: $user_name, password: $password';
}