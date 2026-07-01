import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trisquare_locus/model/workfromhome_cclist_model.dart';
import 'package:trisquare_locus/model/workfromhome_employeedetail_model.dart';
import 'package:trisquare_locus/model/workfromhometype.dart';


part 'workfromhome_model.g.dart';
part 'workfromhome_model.freezed.dart';

@freezed
class WorkfromHomeModel with _$WorkfromHomeModel{
  const factory WorkfromHomeModel({
    @Default(<WorkfromHomeTypeModel> []) List<WorkfromHomeTypeModel> day_type,
    @Default(<WorkfromHomeCClistModel> []) List<WorkfromHomeCClistModel> cc_list,
    @Default(<WFHEmployeeDetailModel> []) List<WFHEmployeeDetailModel> emp_dtl,

  }) = _WorkfromHomeModel;

  factory WorkfromHomeModel.fromJson(Map<String, dynamic> json) => _$WorkfromHomeModelFromJson(json);
}