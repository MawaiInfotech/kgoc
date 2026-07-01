import 'package:flutter_bloc/flutter_bloc.dart';
import '../errors/api_error.dart';
import '../service/dummysignup_service.dart';
import '../state/dummyattendance_state.dart';

class DummyAttendanceBloc extends Cubit<DummyAttendanceState>{
  DummyAttendanceBloc(this.dummySignupService): super(DummyAttendanceState.initial());

  DummySignupService dummySignupService;

  Future<void> applyAttendance()async{
    try{
      emit(DummyAttendanceState.loading(state.dummyAttendanceModel));
      final message = await dummySignupService.getAttendance();
      emit(DummyAttendanceState.success(state.dummyAttendanceModel,message));
    }on ApiError catch(error){
      emit(DummyAttendanceState.failed(state.dummyAttendanceModel,  error.message));
    }
  }

}