import 'package:flutter_bloc/flutter_bloc.dart';
import '../errors/api_error.dart';
import '../service/wfh_service.dart';
import '../state/wfhapprove_state.dart';

class ApproveWfhBloc extends Cubit<ApproveWfhState>{
  ApproveWfhBloc(this.workfromHomeService): super(ApproveWfhState.initial());

  final WorkfromHomeService workfromHomeService;

  Future<void> ApprovalRejectionStatus(Map<String, dynamic> data)async{
    emit(ApproveWfhState.loading(state.approveWfhModel));
    try{
      final message = await workfromHomeService.getApprovealWfh(data);
      emit(ApproveWfhState.success(state.approveWfhModel, message));
    }on ApiError catch(error){
      emit(ApproveWfhState.failed(state.approveWfhModel,  error.message));
    }
  }

}