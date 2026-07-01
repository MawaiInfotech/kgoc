import 'package:bloc/bloc.dart';
import '../service/wfh_service.dart';
import '../state/pendingwfh_state.dart';


class PendingWfhBloc extends Cubit<PendingWfhState>{
  PendingWfhBloc(this.workfromHomeService) : super (PendingWfhState.initial());

  late WorkfromHomeService workfromHomeService;

  void init()async{
    emit(PendingWfhState.loading(state.pendingwfhState));
    final pendingWfhList = await workfromHomeService.getPendingforApproval();
    emit(PendingWfhState.success(pendingWfhList));
  }
}