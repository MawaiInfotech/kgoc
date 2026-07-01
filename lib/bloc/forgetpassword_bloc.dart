import 'package:flutter_bloc/flutter_bloc.dart';
import '../errors/api_error.dart';
import '../service/forgetpasswrod_service.dart';
import '../state/forgetpassword_state.dart';

class ForgetpasswordBloc extends Cubit<ForgetpasswordState>{
  ForgetpasswordBloc(this.forgetpasswordService): super(ForgetpasswordState.initial());

  ForgetpasswordService forgetpasswordService;

  Future<void> forgetpassword(Map<String, dynamic> data)async{
    emit(ForgetpasswordState.loading(state.forgetpasswordModel));
    try{
      final message = await forgetpasswordService.getForgetpassword(data);

      emit(ForgetpasswordState.success(state.forgetpasswordModel, message));
    }on ApiError catch(error){
      emit(ForgetpasswordState.failed(state.forgetpasswordModel,  error.message));
    }
  }

}