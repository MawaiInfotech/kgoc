import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import '../errors/api_error.dart';
import '../model/checkloginform_model.dart';
import '../service/attendance_service.dart';
import '../state/checklogin_state.dart';


class CheckLoginBloc extends Cubit<CheckLoginState> {
  CheckLoginBloc(this.attendanceService) : super(CheckLoginState.initial());

  final AttendanceService attendanceService;

  /// returns true if permission is granted
  Future<bool> checkIfPermissionIsGiven() async {
    final permission = await Geolocator.checkPermission();
    return permission.isGranted;
  }

  // returns true if permission is granted
  Future<bool> requestPermission() async {
    final permission = await Geolocator.requestPermission();
    Geolocator.getServiceStatusStream().listen((event) {});
    return permission.isGranted;
  }

  bool get isCheckedOut => state.form.checkOutData != null;

  void init() async {
    emit(CheckLoginState.loading(state.action, state.form));
    try {
      final form = await attendanceService.getCheckLogin();
      if (form != null) {
        emit(CheckLoginState.content(state.action, form));
      }
    } on ApiError catch (e) {
      emit(CheckLoginState.failed(state.action, state.form, e.message));
    }
  }

  Future<void> checkIn(String remark, String site, String address,file) async {
    emit(CheckLoginState.loading(AttendanceAction.checkIn, state.form));
    try {
      final data = await attendanceService.getAttendance("in", remark, site, address,file);
      emit(CheckLoginState.content(state.action, CheckLoginModelForm(
          checkOutData: state.form.checkOutData,
          checkInData: data!['model'],
          message: data['message'])));
    } on ApiError catch (e) {
      emit(CheckLoginState.failed(state.action, state.form, e.message));
    }
  }

  Future<void> checkIn1(String remark, String site, String address,) async {
    emit(CheckLoginState.loading(AttendanceAction.checkIn, state.form));
    try {
      final data = await attendanceService.getAttendance1("in", remark, site, address);
      emit(CheckLoginState.content(state.action, CheckLoginModelForm(
          checkOutData: state.form.checkOutData,
          checkInData: data!['model'],
          message: data['message'])));
    } on ApiError catch (e) {
      emit(CheckLoginState.failed(state.action, state.form, e.message));
    }
  }

  Future<void> checkOut(String remark, String site, String address,file ) async {
    emit(CheckLoginState.loading(AttendanceAction.checkOut, state.form));
    try {
      final data = await attendanceService.getAttendance("out", remark, site, address,file);
      emit(CheckLoginState.content(state.action, CheckLoginModelForm(
          checkOutData: data!['model'],
          checkInData: state.form.checkOutData,
          message: data["message"])));
    } on ApiError catch (e) {
      print(e);
      emit(CheckLoginState.failed(state.action, state.form, e.message));
    }
  }
  Future<void> checkOut1(
      String remark,
      String site,
      String address,
      ) async {
    emit(CheckLoginState.loading(
      AttendanceAction.checkOut,
      state.form,
    ));

    try {
      final data = await attendanceService.getAttendance1(
        "out",
        remark,
        site,
        address,
      );

      emit(
        CheckLoginState.content(
          state.action,
          CheckLoginModelForm(
            checkInData: state.form.checkInData,
            checkOutData: data!['model'],
            message: data["message"],
          ),
        ),
      );
    } on ApiError catch (e) {
      emit(CheckLoginState.failed(
        state.action,
        state.form,
        e.message,
      ));
    }
  }
}

extension LocationPermissionExtension on LocationPermission {
  bool get isGranted =>
      this == LocationPermission.always ||
      this == LocationPermission.whileInUse;
  bool get isDenied => this == LocationPermission.denied;
}
