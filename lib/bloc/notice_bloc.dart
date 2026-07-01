import 'package:flutter_bloc/flutter_bloc.dart';
import '../service/login_service.dart';
import '../service/noticeboard_service.dart';
import '../state/noticeboard_state.dart';

class NoticeboardBloc extends Cubit<NoticeboardState>{
  NoticeboardBloc(this.noticeboardService, this.loginService) : super(NoticeboardState.initial());

  late NoticeboardService noticeboardService;
  late LoginService loginService;

  void init()async{
    emit(NoticeboardState.loading(state.noticeList));
    final unitCode = loginService.getCurrentUser!.unit_cd;
    final noticeList = await noticeboardService.getNoticeList(unitCode!);
    emit(NoticeboardState.success(noticeList));
  }
}