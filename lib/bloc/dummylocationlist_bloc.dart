import 'package:flutter_bloc/flutter_bloc.dart';
import '../errors/api_error.dart';
import '../service/dummysignup_service.dart';
import '../state/dummylocationlist_state.dart';

class DummyLocationlistBloc extends Cubit<DummyLocationlistState>{
  DummyLocationlistBloc(this.dummySignupService,) : super(DummyLocationlistState.initial());

  final DummySignupService dummySignupService;

  void init()async{
    emit(DummyLocationlistState.loading(state.dummylocationList));
    try{
      final approveLeave = await dummySignupService.getDummyLocationList();
      emit(DummyLocationlistState.content(approveLeave));
    }on ApiError catch(error){
      emit(DummyLocationlistState.failed(state.dummylocationList,  error.message));
    }
  }


}