import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/checkloginform_model.dart';

part 'checklogin_state.freezed.dart';

enum AttendanceAction { checkIn, checkOut, none }

@freezed
class CheckLoginState with _$CheckLoginState {
  const factory CheckLoginState.loading(AttendanceAction action, CheckLoginModelForm form) = _Loading;
  const factory CheckLoginState.content(AttendanceAction action, CheckLoginModelForm form) = _Content;
  const factory CheckLoginState.success(AttendanceAction action, CheckLoginModelForm form, String message) =_Success;
  const factory CheckLoginState.failed(AttendanceAction action, CheckLoginModelForm form, String message) =_Failed;

  factory CheckLoginState.initial() =>
      CheckLoginState.content(AttendanceAction.none, CheckLoginModelForm());
}
