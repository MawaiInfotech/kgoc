import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/checklogin_model.dart';

part 'checkincheckout_state.freezed.dart';

@freezed
class ChekinCheckoutState with _$ChekinCheckoutState{
  const factory ChekinCheckoutState.loading(CheckLoginModel model) = _Loading;
  const factory ChekinCheckoutState.content(CheckLoginModel model) = _Content;
  const factory ChekinCheckoutState.success(CheckLoginModel model) = _Success;
  const factory ChekinCheckoutState.failed(CheckLoginModel model, String message) = _Failed;

  factory ChekinCheckoutState.initial() => const ChekinCheckoutState.content(CheckLoginModel());

}