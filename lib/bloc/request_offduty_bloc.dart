import 'package:bloc/bloc.dart';
import '../errors/api_error.dart';
import '../service/login_service.dart';
import '../service/offduty_service.dart';
import '../state/requestoffduty_state.dart';

class RequestoffdutyBloc extends Cubit<RequestoffdutyState>{
  RequestoffdutyBloc(this.loginService, this.offdutyService): super(RequestoffdutyState.initial());

  final OffdutyService offdutyService;
  final LoginService loginService;

  void init()async{
    emit(RequestoffdutyState.loading(state.requestoffdutyModel));
    try{
      final employerCode = loginService.getUserCode;
      final unitCode = loginService.getCurrentUser?.unit_cd;
      final offdutyDetails = await offdutyService.getOffdutyRequestData(employerCode!, unitCode!);
      emit(RequestoffdutyState.content(offdutyDetails!));
    }on ApiError catch(error){
      emit(RequestoffdutyState.failed(state.requestoffdutyModel,  error.message));
    }
  }

}