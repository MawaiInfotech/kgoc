import 'package:flutter_bloc/flutter_bloc.dart';

import '../service/login_service.dart';
import '../service/misspunch_service.dart';
import '../state/misspunch_state.dart';

class MisspunchBloc extends Cubit<MisspunchState>{
  MisspunchBloc(this.misspunchService, this.loginService): super(MisspunchState.initial());

  final MisspunchService misspunchService;
  final LoginService loginService;

  void init() async{
    emit(MisspunchState.loading(state.misspunchModel));
    final employeeCode = loginService.getUserCode;
    final unitCode = loginService.getCurrentUser?.unit_cd;
    final misspunchList = await misspunchService.getMisspunchData(employeeCode!, unitCode!);
    emit(MisspunchState.success(misspunchList));
  }
}