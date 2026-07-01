import 'package:flutter_bloc/flutter_bloc.dart';
import '../errors/api_error.dart';
import '../service/offduty_service.dart';
import '../state/odapprovereject_state.dart';


class OdApproveRejectBloc extends Cubit<OdApproveRejectState>{
  OdApproveRejectBloc(this.offdutyService): super(OdApproveRejectState.initial());

  final OffdutyService offdutyService;

  Future<void> ApprovalRejectionStatus(Map<String, dynamic> data)async{
    emit(OdApproveRejectState.loading(state.approvalRejectionModel));
    try{
      final message = await offdutyService.getAprovalRejectionData(data);

      emit(OdApproveRejectState.success(state.approvalRejectionModel, message));
    }on ApiError catch(error){
      emit(OdApproveRejectState.failed(state.approvalRejectionModel,  error.message));
    }
  }



}