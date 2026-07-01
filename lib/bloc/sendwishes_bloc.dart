import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trisquare_locus/service/homepage_service.dart';
import 'package:trisquare_locus/state/sendwishes_state.dart';
import '../errors/api_error.dart';
import '../service/leave_service.dart';
import '../state/applyleave_state.dart';

class SendwishesBloc extends Cubit<SendwishesState>{
  SendwishesBloc(this.homePageService): super(SendwishesState.initial());

  HomePageService homePageService;

  Future<void> sendWishes(Map<String, dynamic> data)async{
    try{
      emit(SendwishesState.loading(state.sendwishesModel));
      final message = await homePageService.getSendWishes(data);
      emit(SendwishesState.success(state.sendwishesModel, message));
    }on ApiError catch(error){
      emit(SendwishesState.failed(state.sendwishesModel,  error.message));
    }
  }

}