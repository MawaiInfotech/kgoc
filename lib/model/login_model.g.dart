// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LoginModelAdapter extends TypeAdapter<LoginModel> {
  @override
  final int typeId = 0;

  @override
  LoginModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LoginModel(
      emp_cd: fields[0] as String?,
      password: fields[1] as String?,
      user_master_id: fields[2] as int?,
      unit_cd: fields[3] as String?,
      user_name: fields[4] as String?,
      user_fname: fields[5] as String?,
      emp_name: fields[6] as String?,
      card_no: fields[7] as String?,
      default_fin_year: fields[8] as String?,
      emp_first_name: fields[10] as String?,
      emp_last_name: fields[9] as String?,
      end_time: fields[14] as String?,
      per_emailid: fields[11] as String?,
      shift: fields[12] as String?,
      start_time: fields[13] as String?,
      description: fields[15] as String?,
      company_email: fields[16] as String?,
      user_from: fields[17] as String?,
      isCamera: fields[18] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, LoginModel obj) {
    writer
      ..writeByte(19)
      ..writeByte(0)
      ..write(obj.emp_cd)
      ..writeByte(1)
      ..write(obj.password)
      ..writeByte(2)
      ..write(obj.user_master_id)
      ..writeByte(3)
      ..write(obj.unit_cd)
      ..writeByte(4)
      ..write(obj.user_name)
      ..writeByte(5)
      ..write(obj.user_fname)
      ..writeByte(6)
      ..write(obj.emp_name)
      ..writeByte(7)
      ..write(obj.card_no)
      ..writeByte(8)
      ..write(obj.default_fin_year)
      ..writeByte(9)
      ..write(obj.emp_last_name)
      ..writeByte(10)
      ..write(obj.emp_first_name)
      ..writeByte(11)
      ..write(obj.per_emailid)
      ..writeByte(12)
      ..write(obj.shift)
      ..writeByte(13)
      ..write(obj.start_time)
      ..writeByte(14)
      ..write(obj.end_time)
      ..writeByte(15)
      ..write(obj.description)
      ..writeByte(16)
      ..write(obj.company_email)
      ..writeByte(17)
      ..write(obj.user_from)
      ..writeByte(18)
      ..write(obj.isCamera);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) => LoginModel(
      emp_cd: json['emp_cd'] as String? ?? '',
      password: json['password'] as String? ?? '',
      user_master_id: (json['user_master_id'] as num?)?.toInt(),
      unit_cd: json['unit_cd'] as String?,
      user_name: json['user_name'] as String?,
      user_fname: json['user_fname'] as String?,
      emp_name: json['emp_name'] as String?,
      card_no: json['card_no'] as String?,
      default_fin_year: json['default_fin_year'] as String?,
      emp_first_name: json['emp_first_name'] as String?,
      emp_last_name: json['emp_last_name'] as String?,
      end_time: json['end_time'] as String?,
      per_emailid: json['per_emailid'] as String?,
      shift: json['shift'] as String?,
      start_time: json['start_time'] as String?,
      description: json['description'] as String?,
      company_email: json['company_email'] as String?,
      user_from: json['user_from'] as String?,
      isCamera: json['isCamera'] as bool?,
    );

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('emp_cd', instance.emp_cd);
  writeNotNull('password', instance.password);
  writeNotNull('user_master_id', instance.user_master_id);
  writeNotNull('unit_cd', instance.unit_cd);
  writeNotNull('user_name', instance.user_name);
  writeNotNull('user_fname', instance.user_fname);
  writeNotNull('emp_name', instance.emp_name);
  writeNotNull('card_no', instance.card_no);
  writeNotNull('default_fin_year', instance.default_fin_year);
  writeNotNull('emp_last_name', instance.emp_last_name);
  writeNotNull('emp_first_name', instance.emp_first_name);
  writeNotNull('per_emailid', instance.per_emailid);
  writeNotNull('shift', instance.shift);
  writeNotNull('start_time', instance.start_time);
  writeNotNull('end_time', instance.end_time);
  writeNotNull('description', instance.description);
  writeNotNull('company_email', instance.company_email);
  writeNotNull('user_from', instance.user_from);
  writeNotNull('isCamera', instance.isCamera);
  return val;
}
