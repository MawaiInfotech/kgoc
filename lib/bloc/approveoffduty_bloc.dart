import 'package:flutter_bloc/flutter_bloc.dart';
import '../errors/api_error.dart';
import '../service/login_service.dart';
import '../service/offduty_service.dart';
import '../state/approveoffduty_state.dart';
import '../state/leavetype_state.dart';

class ApproveoffdutyBloc extends Cubit<ApproveoffdutyState>{
  ApproveoffdutyBloc(this.offdutyService, this.loginService) : super(ApproveoffdutyState.initial());

  final OffdutyService offdutyService;
  final LoginService loginService;

  void init()async{
    emit(ApproveoffdutyState.loading(state.approveoffdutyModel));
    try{
      final employerCode = loginService.getUserCode;
      final unitCode = loginService.getCurrentUser?.unit_cd;
      final approveLeave = await offdutyService.getApprovalDetail(employerCode!, unitCode!);
      emit(ApproveoffdutyState.content(approveLeave));
    }on ApiError catch(error){
      emit(ApproveoffdutyState.failed(state.approveoffdutyModel,  error.message));
    }
  }


}