import 'package:flutter_bloc/flutter_bloc.dart';
import '../errors/api_error.dart';
import '../service/forgetpasswrod_service.dart';
import '../state/otp_verification_state.dart';

class OTPVerificationBloc extends Cubit<OTPVerificationState>{
  OTPVerificationBloc(this.forgetpasswordService): super(OTPVerificationState.initial());

  ForgetpasswordService forgetpasswordService;

  Future<void> otpVerification(Map<String, dynamic> data)async{
    emit(OTPVerificationState.loading(state.otpVerificationModel));
    try{
      final message = await forgetpasswordService.getOTPVerification(data);

      emit(OTPVerificationState.success(state.otpVerificationModel, message));
    }on ApiError catch(error){
      emit(OTPVerificationState.failed(state.otpVerificationModel,  error.message));
    }
  }

}