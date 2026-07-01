import 'package:freezed_annotation/freezed_annotation.dart';

import 'checklogin_model.dart';

part 'checkloginform_model.g.dart';

@JsonSerializable(includeIfNull : false)
class CheckLoginModelForm {
    late final bool? status;
        late final  CheckLoginModel? checkInData;
        late final  CheckLoginModel? checkOutData;
        late final String? message;

    CheckLoginModelForm({this.status, this.checkInData, this.checkOutData, this.message});

    factory CheckLoginModelForm.fromJson(Map<String, dynamic> json) => _$CheckLoginModelFormFromJson(json);
    Map<String,dynamic> toJson() => _$CheckLoginModelFormToJson(this);

    @override
  String toString() {
    return 'CheckLoginModelForm{status: $status, checkInData: $checkInData, checkOutData: $checkOutData, message: $message}';
  }
}