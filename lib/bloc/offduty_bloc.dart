import 'package:flutter_bloc/flutter_bloc.dart';
import '../errors/api_error.dart';
import '../service/login_service.dart';
import '../service/offduty_service.dart';
import '../state/employeeoffdutylist_state.dart';

class EmployeeoffdutyBloc extends Cubit<EmployeeoffdutyState>{
  EmployeeoffdutyBloc(this.offdutyService, this.loginService) : super(EmployeeoffdutyState.initial());

  OffdutyService offdutyService;
  LoginService loginService;

  void init()async{
    emit(EmployeeoffdutyState.loading(state.employeeoffdutyModel));
    try{
      final employerCode = loginService.getUserCode;
      final unitCode = loginService.getCurrentUser?.unit_cd;

      final offdutyType = await offdutyService.getoffdutyData(employerCode!, unitCode!);
      emit(EmployeeoffdutyState.content(offdutyType));
    }on ApiError catch(error){
      emit(EmployeeoffdutyState.failed(state.employeeoffdutyModel,  error.message));
    }
  }
}