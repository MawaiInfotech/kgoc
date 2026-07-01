import 'package:flutter_bloc/flutter_bloc.dart';
import '../errors/api_error.dart';
import '../service/attendance_service.dart';
import '../state/teamleader_attendanceapproverejection_state.dart';


class TeamLeaderAttendanceApproveRejectionBloc extends Cubit<TeamLeaderAttendanceApproveRejectionState>{
  TeamLeaderAttendanceApproveRejectionBloc(this.attendanceService): super(TeamLeaderAttendanceApproveRejectionState.initial());

  final AttendanceService attendanceService;

  Future<void> ApprovalRejectionStatus(Map<String, dynamic> data)async{
    emit(TeamLeaderAttendanceApproveRejectionState.loading(state.approvalRejectionModel));
    try{
      final message = await attendanceService.getAprovalRejectionData(data);

      emit(TeamLeaderAttendanceApproveRejectionState.success(state.approvalRejectionModel, message));
    }on ApiError catch(error){
      emit(TeamLeaderAttendanceApproveRejectionState.failed(state.approvalRejectionModel,  error.message));
    }
  }



}