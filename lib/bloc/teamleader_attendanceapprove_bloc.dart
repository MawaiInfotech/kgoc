import 'package:flutter_bloc/flutter_bloc.dart';
import '../errors/api_error.dart';
import '../service/attendance_service.dart';
import '../service/login_service.dart';
import '../state/teamattendance_approval_state.dart';

class TeamLeaderAttendanceApprovalBloc extends Cubit<TeamLeaderAttendanceApprovalState>{
  TeamLeaderAttendanceApprovalBloc(this.attendanceService, this.loginService): super(TeamLeaderAttendanceApprovalState.initial());

  final AttendanceService  attendanceService;
  final LoginService loginService;

  void init()async{
    emit(TeamLeaderAttendanceApprovalState.loading(state.teamAttendanceAproveModel));
    try{
      final employerCode = loginService.getUserCode;
      final unitCode = loginService.getCurrentUser?.unit_cd;
      final approveattendance = await attendanceService.getTeamAttendanceList(employerCode!, unitCode!);
      emit(TeamLeaderAttendanceApprovalState.content(approveattendance));
    }on ApiError catch(error){
      emit(TeamLeaderAttendanceApprovalState.failed(state.teamAttendanceAproveModel,  error.message));
    }
  }
}