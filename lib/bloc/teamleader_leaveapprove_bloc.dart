import 'package:flutter_bloc/flutter_bloc.dart';
import '../errors/api_error.dart';
import '../service/leave_service.dart';
import '../state/teamleader_leaveApprovereject_state.dart';


class TeamLeaderLeaveApproveRejectBloc extends Cubit<TeamleaderLeaveApproveState>{
  TeamLeaderLeaveApproveRejectBloc(this.leaveService): super(TeamleaderLeaveApproveState.initial());

  final LeaveService leaveService;

  Future<void> ApprovalRejectionStatus(Map<String, dynamic> data)async{
    emit(TeamleaderLeaveApproveState.loading(state.approvalRejectionModel));
    try{
      final message = await leaveService.getAprovalRejectionData(data);

      emit(TeamleaderLeaveApproveState.success(state.approvalRejectionModel, message));
    }on ApiError catch(error){
      emit(TeamleaderLeaveApproveState.failed(state.approvalRejectionModel,  error.message));
    }
  }



}