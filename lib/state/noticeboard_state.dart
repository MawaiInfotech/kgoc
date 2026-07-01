import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/noticeboard_model.dart';

part 'noticeboard_state.freezed.dart';

@freezed
class NoticeboardState with _$NoticeboardState{

  const factory NoticeboardState.loading(List<NoticeboardModel> noticeList) = _Loading;
  const factory NoticeboardState.content(List<NoticeboardModel> noticeList) = _Content;
  const factory NoticeboardState.success(List<NoticeboardModel> noticeList) = _Success;
  const factory NoticeboardState.failed(List<NoticeboardModel> noticeList, message) = _Failed;

  factory NoticeboardState.initial() => NoticeboardState.content([]);
}