import 'package:flutter_bloc/flutter_bloc.dart';

import '../service/holiday_service.dart';
import '../service/login_service.dart';
import '../state/holiday_state.dart';

class HolidayBloc extends Cubit<HolidayState>{
  HolidayBloc(this.loginService, this.holidayService) : super(HolidayState.initial());

  LoginService loginService;
  HolidayService holidayService;

  void init() async{
    emit(HolidayState.loading(state.holidaylist));
    final unitCode = loginService.getCurrentUser?.unit_cd;
    final holidayList = await holidayService.getHolidayList(unitCode!);
    emit(HolidayState.success(holidayList));
  }
}