import 'package:bloc/bloc.dart';
import '../errors/api_error.dart';
import '../service/login_service.dart';
import '../state/login_state.dart';

class LoginPageBloc extends Cubit<LoginPageState>{
  LoginPageBloc(this.loginService): super(LoginPageState.initial());

  final LoginService loginService;

  void init(){
    emit(LoginPageState.loading(state.form));
    final user = loginService.getCurrentUser;
    final form = state.form.copyWith(
      userName: user?.user_name ?? '',
      password: user?.password ?? ''
    );
    emit(LoginPageState.content(form));
  }

  void updateEmployeeCode(String employeeCode) =>  _updateAttributes(userName: employeeCode);

  void updatePassword(String password) => _updateAttributes(password: password);

  void updateShouldRemeber(bool? shouldRemeber) => _updateAttributes(shouldRemember: shouldRemeber);

  void _updateAttributes({String? password, String? userName, bool? shouldRemember}){
    emit(LoginPageState.loading(state.form));
    final form = state.form.copyWith(
        password: password ?? state.form.password,
        userName: userName ?? state.form.userName,
        shouldRemember:  shouldRemember ?? state.form.shouldRemember
    );
    emit(LoginPageState.content(form));
  }

  void logIn() async{
    _validate();

    var form = state.form;
    if(form.errors.isNotEmpty) return;

    emit(LoginPageState.loading(form));
    try{
      await loginService.logIn(form.userName, form.password, form.shouldRemember);
      emit(LoginPageState.success(form));
    }on ApiError catch(e){
      emit(LoginPageState.failed(form, e.message));
    }
  }

  _validate(){
    var form = state.form;
    emit(LoginPageState.loading(form));

    final errors = <String, String?>{};

    if(form.userName.isEmpty){
      errors['mobile'] = 'Username can\'t be empty';
    }if(form.password.isEmpty){
      errors['password'] = 'Password can\'t be empty';
    }
    emit(LoginPageState.content(form.copyWith(errors: errors)));
  }
}

