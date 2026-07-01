import 'package:bloc/bloc.dart';

import '../service/wfh_service.dart';
import '../state/mywfh_state.dart';

class MyWorkfromHomeBloc extends Cubit<MyWfhState>{
  MyWorkfromHomeBloc(this.workfromHomeService) : super (MyWfhState.initial());

  late WorkfromHomeService workfromHomeService;

  void init()async{
    emit(MyWfhState.loading(state.workfromHomeModel));
    final myWfhList = await workfromHomeService.getMyWfhData();
    emit(MyWfhState.success(myWfhList));
  }
}