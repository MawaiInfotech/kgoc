import 'package:bloc/bloc.dart';
import '../errors/api_error.dart';
import '../service/attendance_service.dart';
import '../state/teamattendance_state.dart';


class TeamAttendanceBloc extends Cubit<TeamAttendanceState>{
  TeamAttendanceBloc(this.attendanceService): super(TeamAttendanceState.initial());

  final AttendanceService attendanceService;

  void init([String? employeeCode, String? selectedMonth])async{
    emit(TeamAttendanceState.loading(state.teamAttendanceSuppModel));
    try{
      final attendanceData = await attendanceService.getTeamAttendanceData(employeeCode!, selectedMonth!);
      emit(TeamAttendanceState.content(attendanceData));
    }on ApiError catch(error){
      emit(TeamAttendanceState.failed(state.teamAttendanceSuppModel));
    }
  }

}