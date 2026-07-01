import 'package:freezed_annotation/freezed_annotation.dart';
import 'appliedto_model.dart';
import 'offduty_model.dart';
import 'offdutyclientlist_model.dart';
import 'offdutyemployee_model.dart';
import 'offdutyfor_model.dart';
import 'offdutypurpose_model.dart';
import 'offdutystatus_model.dart';
import 'offdutytype_model.dart';

part 'requestoffduty_model.g.dart';
part 'requestoffduty_model.freezed.dart';

@freezed
class RequestoffdutyModel with _$RequestoffdutyModel{
  const factory RequestoffdutyModel({
    @Default(<OffdutyDataModel>[]) List<OffdutyDataModel> od_data,
    @Default(<OffdutyTypeModel>[]) List<OffdutyTypeModel> od_list,
    @Default(<OffdutyStatusModel> []) List<OffdutyStatusModel> gp_od_status,
    @Default(<OffdutyForModel> []) List<OffdutyForModel> od_for,
    @Default(<OffdutyPurposeModel> []) List<OffdutyPurposeModel> purpose,
    @Default(<OffdutyEmployeeModel> []) List<OffdutyEmployeeModel> emp_lov,
    @Default(<OffdutyClientListModel> []) List<OffdutyClientListModel> org_list,
    @Default(AppliedToModel ()) AppliedToModel applied_to,

  }) = _RequestoffdutyModel;

  factory RequestoffdutyModel.fromJson(Map<String, dynamic> json) => _$RequestoffdutyModelFromJson(json);

}