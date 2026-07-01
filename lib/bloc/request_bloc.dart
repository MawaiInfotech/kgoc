import 'package:flutter_bloc/flutter_bloc.dart';

import '../errors/api_error.dart';
import '../service/attendance_service.dart';
import '../service/login_service.dart';
import '../state/request_state.dart';

class RequestBloc extends Cubit<RequestState>{
  RequestBloc(this.loginService, this.attendanceService): super(RequestState.initial());

  final AttendanceService attendanceService;
  final LoginService loginService;


  void UpdateRequest(String reason, String missPunchDate, String missPunchType, String inTime, String outTime)async{
    emit(RequestState.loading(state.requestModel));
    try{
      final employerCode = loginService.getUserCode;
      final unitCode = loginService.getCurrentUser?.unit_cd;
      final cardNumber = loginService.getCurrentUser!.card_no;
      final message = await attendanceService.getRequestData(employerCode!,
          unitCode!, cardNumber!, reason, missPunchDate, missPunchType, inTime, outTime);
      emit(RequestState.success(state.requestModel, message));
    }on ApiError catch(error){
      emit(RequestState.failed(state.requestModel,  error.message));
    }
  }

}