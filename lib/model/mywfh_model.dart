import 'package:freezed_annotation/freezed_annotation.dart';

part 'mywfh_model.freezed.dart';
part 'mywfh_model.g.dart';

@freezed
class MyWorkfromHomeModel with _$MyWorkfromHomeModel{
  const factory MyWorkfromHomeModel({
    @JsonKey(name: "empmemb_emp_master_emp_number") @Default("") String empNumber,
    @JsonKey(name: "from_date") @Default("") String fromDate,
    @JsonKey(name: "end_date") @Default("") String endDate,
    @JsonKey(name: "wfh_granted") @Default("") String granted,
    @JsonKey(name: "wfh_days") @Default("") String days,
    @JsonKey(name: "reason") @Default("") String reason,
    @JsonKey(name: "app_no") @Default("") String appNumber,

  }) = _MyWorkfromHomeModel;

  factory MyWorkfromHomeModel.fromJson(Map<String, dynamic> json) => _$MyWorkfromHomeModelFromJson(json);
}