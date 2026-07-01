import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:trisquare_locus/utils/screen_size_config.dart';
import '../bloc/request_bloc.dart';
import '../model/attendancedetail_model.dart';
import '../model/login_model.dart';
import '../model/request_model.dart';
import '../routes/app_routes.dart';
import '../service/attendance_service.dart';
import '../service/login_service.dart';
import '../state/request_state.dart';
import '../widgets/app_top_bar.dart';

class RequestMisspunchPage extends StatefulWidget {
  const RequestMisspunchPage(this.model,{Key? key}) : super(key: key);

  final AttendanceDetailModel model ;

  @override
  State<RequestMisspunchPage> createState() => _RequestMisspunchPageState();
}

class _RequestMisspunchPageState extends State<RequestMisspunchPage> {

  TextEditingController reasonTextController = TextEditingController();

  TextEditingController timeTextController = TextEditingController();

  TextEditingController checkInTimeTextController  = TextEditingController();

  TextEditingController bothCheckOutTimeController = TextEditingController();

  TextEditingController bothCheckInTimeController = TextEditingController();

  late final RequestBloc bloc;

  var missPunchType;

  var checkInTime;

  var checkOutTime;

  var selectedTime;

  late final LoginModel user;

  final date = DateFormat("dd-MM-yyyy").format(DateTime.now());

  @override
  void initState() {
    super.initState();

    user = Provider.of<LoginService>(context, listen: false).getCurrentUser!;

    final attendanceService =
    Provider.of<AttendanceService>(context, listen: false);

    final loginService =
    Provider.of<LoginService>(context, listen: false);

    bloc = RequestBloc(loginService, attendanceService);

    timeTextController =
        TextEditingController(text: user.end_time.toString());

    checkInTimeTextController =
        TextEditingController(text: user.start_time.toString());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppTopBar(title: "Request Miss Check-out/Check-In"),
      body: SafeArea(
          child: SizedBox(
            height: 400.dw,
            child: _buildBody(),
          )),
    );
  }

  _buildBody() {
    return BlocConsumer<RequestBloc, RequestState>(
      bloc: bloc,
      listener: (_, state){
        final successMessage = state.maybeWhen(
            success: (_, __) => __,
            orElse: ()=> null);
        if(successMessage != null){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(successMessage)));
          Navigator.popAndPushNamed(context, AppRoutes.attendanceDetailPage);
        }
        final hasFailed = state.maybeWhen(
            failed: (_, __) => true,
            orElse: ()=> false);
        if(hasFailed){
          final message = state.maybeWhen(
              failed:  (_, m) => m,
              orElse: () => null);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message!)));
        }
      },
      builder: (_, state){
        return state.when(
            loading: _buildLoading,
            content: _buildContent,
            success: (model, __) => _buildContent(model),
            failed: (model, _) => _buildContent(model));
      },
    );
  }

  Widget _buildLoading(RequestModel model) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildContent(RequestModel model){
    return Card(
      margin: EdgeInsets.all(20.dw),
      elevation: 20.dw,
      child: Column(
        children: [
          if( widget.model.outRem == "O")  _buildHeading("Miss Punch - Out")
         else if(widget.model.inRem == "I")_buildHeading("Miss Punch - In")
         else if( widget.model.misPunch == "B") _buildHeading("Checkin/CheckOut"),
         if(widget.model.outRem == "O")  _buildTimeFields(timeTextController.text)
         else if (widget.model.inRem == "I") _buildInTime(checkInTimeTextController.text)
          else if(widget.model.misPunch =="B") _buildBothTime(timeTextController.text),
          _buildHeading("Reason"),
          _buildTextField("Reason"),
          _buildSubmit()
        ],
      ),
    );
  }

  _buildHeading(String title){
    return Padding(
      padding:  EdgeInsets.all(8.0.dw),
      child: Text("$title*", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.dw),),
    );
  }

  _buildTextField(String title){
    return Padding(
      padding: EdgeInsets.only(left: 8.dw,right: 8.dw),
      child: TextField(
        controller: reasonTextController,
        decoration: InputDecoration(
          hintText: title
        ),
      ),
    );
  }

  _buildTimeFields(String title){
    return Padding(
      padding: EdgeInsets.only(left: 8.dw,right: 8.dw),
      child: TextField(
        onTap: (){
          _selectTime(context);
        },
        controller: timeTextController,
        decoration: InputDecoration(
            hintText: title
        ),
      ),
    );
  }

  _selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.dial,
    );

    if (timeOfDay != null) {
      setState(() {
        timeTextController.text =
        "${timeOfDay.hour}:${timeOfDay.minute}";
      });
    }
  }

  _selectInTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.dial,
    );

    if (timeOfDay != null) {
      setState(() {
        checkInTimeTextController.text =
        "${timeOfDay.hour}:${timeOfDay.minute}";
      });
    }
  }

  _buildBothTime(String title){
    return Padding(
      padding: EdgeInsets.only(left: 8.dw,right: 8.dw),
      child: Column(
        children: [
          TextField(
            onTap: (){
              _selectInTime(context);
            },
            controller: checkInTimeTextController,
            decoration: InputDecoration(
                hintText: title
            ),
          ),
          TextField(
            onTap: (){
              _selectTime(context);
            },
            controller: timeTextController,
            decoration: InputDecoration(
                hintText: title
            ),
          ),
        ],
      ),
    );
  }

  _buildInTime(String title){
    return   TextField(
      onTap: (){
        _selectInTime(context);
      },
      controller: checkInTimeTextController,
      decoration: InputDecoration(
          hintText: title
      ),
    );
  }

   _buildSubmit(){
    return Padding(
      padding: EdgeInsets.only(top: 20.dw, left: 10.dw, right: 10.dw),
      child: ElevatedButton(
          onPressed: ()async{
            if ((widget.model.misPunch ?? "").isNotEmpty) {
              missPunchType = widget.model.misPunch;
            } else if ((widget.model.inRem ?? "").isNotEmpty) {
              missPunchType = widget.model.inRem;
            } else if ((widget.model.outRem ?? "").isNotEmpty) {
              missPunchType = widget.model.outRem;
            }
            if(widget.model.outRem == "O" && timeTextController.text.isNotEmpty && reasonTextController.text.isNotEmpty)  {

              checkInTime = widget.model.inTime;
              checkOutTime = timeTextController.text;
            }
            else if (widget.model.inRem == "I"&& checkInTimeTextController.text.isNotEmpty && reasonTextController.text.isNotEmpty) {
              checkInTime = checkInTimeTextController.text;
              checkOutTime = widget.model.outTime;
            }
            else if(widget.model.misPunch =="B"&& checkInTimeTextController.text.isNotEmpty &&
                timeTextController.text.isNotEmpty && reasonTextController.text.isNotEmpty) {
              checkInTime = checkInTimeTextController.text;
              checkOutTime = timeTextController.text;
            }else{
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Please Fill All Details.")));
            }
            bloc.UpdateRequest(
              reasonTextController.text,
              widget.model.attendanceDate,
              missPunchType,
              checkInTime,
              checkOutTime,
            );
          },
          child: const Text("Submit")),
    );
  }
}
