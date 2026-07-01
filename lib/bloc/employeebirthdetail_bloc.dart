import 'package:flutter_bloc/flutter_bloc.dart';
import '../errors/api_error.dart';
import '../service/homepage_service.dart';
import '../state/employeebirthdetail_state.dart';

class EmployeeBirthDetailBloc extends Cubit<EmployeeBirthDetailState>{
  EmployeeBirthDetailBloc(this.homePageService) : super(EmployeeBirthDetailState.initial());

  HomePageService homePageService;

  Future <void> init()async{
    emit(EmployeeBirthDetailState.loading(state.model));
    try{
      final employeeBirthDetail = await homePageService.getEmployeeDetail();
      emit(EmployeeBirthDetailState.content(employeeBirthDetail!));
    }on ApiError catch(error){
      emit(EmployeeBirthDetailState.failed(state.model,  error.message));
    }
  }
}