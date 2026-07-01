import 'package:freezed_annotation/freezed_annotation.dart';

part 'noticeboard_model.freezed.dart';
part 'noticeboard_model.g.dart';

@freezed
class NoticeboardModel with _$NoticeboardModel{
  const factory NoticeboardModel({
    @JsonKey(name: "title") @Default("") String title,
    @JsonKey(name: "description") @Default("") String description,
    @JsonKey(name: "created_at") @Default("") String date,
    @JsonKey(name: "created_by") @Default("") String createdBy,
    @JsonKey(name: "department") @Default("") String department,
}) = _NoticeboardModel;

  factory NoticeboardModel.fromJson(Map<String, dynamic> json) => _$NoticeboardModelFromJson(json);
}