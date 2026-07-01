import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trisquare_locus/model/wfhcclist_model.dart';
import 'package:trisquare_locus/model/wfhcondition_model.dart';
import 'package:trisquare_locus/model/wfhtype_model.dart';


part 'requestwfh_model.g.dart';
part 'requestwfh_model.freezed.dart';

@freezed
class RequestWfhModel with _$RequestWfhModel{
  const factory RequestWfhModel({
    @Default(<WfhTypeModel> []) List<WfhTypeModel> wfh_day_type,
    @Default(<WfhConditionModel> []) List<WfhConditionModel> wfh_condition,
    @Default(<WfhCcListModel> []) List<WfhCcListModel> cc_list,

  }) = _RequestWfhModel;

  factory RequestWfhModel.fromJson(Map<String, dynamic> json) => _$RequestWfhModelFromJson(json);
}