import 'package:flutter_bloc/flutter_bloc.dart';

import '../service/attendance_service.dart';
import '../state/attendance_detail_state.dart';

class AttendanceDetailBloc extends Cubit<AttendanceDetailState>{
  AttendanceDetailBloc(this.attendanceService) : super(AttendanceDetailState.initial());

  final AttendanceService attendanceService;

  void init([String? selectedMonth])async{
    emit(AttendanceDetailState.loading(state.attendanceDetailModel));
    final attendanceDetailList = await attendanceService.getAttendanceDetail(selectedMonth ??"");
    emit(AttendanceDetailState.content(attendanceDetailList));
  }


}