import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkincheckout_model.g.dart';
part 'checkincheckout_model.freezed.dart';

@freezed
class CheckinCheckoutModel with _$CheckinCheckoutModel{
  const factory CheckinCheckoutModel({

    @Default('') String address,
    @Default('') String punchin,
    @Default('') String message,
  }) = _CheckinCheckoutModel;

  factory CheckinCheckoutModel.fromJson(Map<String, dynamic> json) => _$CheckinCheckoutModelFromJson(json);
}