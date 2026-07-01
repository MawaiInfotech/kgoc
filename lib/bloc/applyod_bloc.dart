import 'package:flutter_bloc/flutter_bloc.dart';
import '../errors/api_error.dart';
import '../service/offduty_service.dart';
import '../state/applyod_state.dart';

class ApplyOdBloc extends Cubit<ApplyOdState>{
  ApplyOdBloc(this.offdutyService): super(ApplyOdState.initial());

  OffdutyService offdutyService;

  Future<void> applyOd(Map<String, dynamic> data)async{
    try{
      emit(ApplyOdState.loading(state.applyOdModel));
      final message = await offdutyService.getApplyoffDuty(data);
      emit(ApplyOdState.success(state.applyOdModel, message));
    }on ApiError catch(error){
      emit(ApplyOdState.failed(state.applyOdModel,  error.message));
    }
  }

}