import 'package:bloc/bloc.dart';
import '../errors/api_error.dart';
import '../service/leave_service.dart';
import '../service/login_service.dart';
import '../state/request_leave_state.dart';

class RequestLeaveBloc extends Cubit<RequestLeaveState>{
  RequestLeaveBloc(this.loginService, this.leaveService): super(RequestLeaveState.initial());

  final LeaveService leaveService;
  final LoginService loginService;

  void init()async{
    emit(RequestLeaveState.loading(state.requestLeaveModel));
    try{
      final employerCode = loginService.getUserCode;
      final unitCode = loginService.getCurrentUser?.unit_cd;
      final leaveDetails = await leaveService.getLeaveData(employerCode!, unitCode!);
      emit(RequestLeaveState.content(leaveDetails!));
    }on ApiError catch(error){
      emit(RequestLeaveState.failed(state.requestLeaveModel,  error.message));
    }
  }

}