import 'package:flutter_bloc/flutter_bloc.dart';
import '../errors/api_error.dart';
import '../service/leave_service.dart';
import '../service/login_service.dart';
import '../state/approvedleave_state.dart';

class ApprovedleaveBloc extends Cubit<ApproveleaveState>{
  ApprovedleaveBloc(this.leaveService, this.loginService) : super(ApproveleaveState.initial());

  final LeaveService leaveService;
  final LoginService loginService;

  void init()async{
    emit(ApproveleaveState.loading(state.approvedLeaveModel));
    try{
      final employerCode = loginService.getUserCode;
      final unitCode = loginService.getCurrentUser?.unit_cd;
      final approveLeave = await leaveService.getApprovalDetail(employerCode!, unitCode!);
      emit(ApproveleaveState.content(approveLeave));
    }on ApiError catch(error){
      emit(ApproveleaveState.failed(state.approvedLeaveModel,  error.message));
    }
  }


}