import 'package:flutter_bloc/flutter_bloc.dart';
import '../errors/api_error.dart';
import '../service/leave_service.dart';
import '../service/login_service.dart';
import '../state/leavetype_state.dart';

class LeavetypeBloc extends Cubit<LeaveTypeState>{
  LeavetypeBloc(this.leaveService, this.loginService) : super(LeaveTypeState.initial());

  LeaveService leaveService;
  LoginService loginService;

  Future <void> init()async{
    emit(LeaveTypeState.loading(state.model));
    try{
      final employerCode = loginService.getUserCode;
      final unitCode = loginService.getCurrentUser?.unit_cd;
      final finyear = loginService.getCurrentUser?.default_fin_year;
      final leavetype = await leaveService.getLeavetypeData(employerCode!, unitCode!, finyear!);
      emit(LeaveTypeState.content(leavetype!));
    }on ApiError catch(error){
      emit(LeaveTypeState.failed(state.model,  error.message));
    }
  }
}