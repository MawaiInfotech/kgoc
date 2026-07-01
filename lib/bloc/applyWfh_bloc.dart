import 'package:flutter_bloc/flutter_bloc.dart';
import '../errors/api_error.dart';
import '../service/wfh_service.dart';
import '../state/apply_wfh_state.dart';

class ApplyWfhBloc extends Cubit<ApplyWfhState>{
  ApplyWfhBloc(this.workfromHomeService): super(ApplyWfhState.initial());

  WorkfromHomeService workfromHomeService;

  Future<void> applyWfh(Map<String, dynamic> data)async{
    emit(ApplyWfhState.loading(state.applyWfhModel));
    try{
      final message = await workfromHomeService.getApplyWFHDate(data);

      emit(ApplyWfhState.success(state.applyWfhModel, message));
    }on ApiError catch(error){
      emit(ApplyWfhState.failed(state.applyWfhModel,  error.message));
    }
  }

}