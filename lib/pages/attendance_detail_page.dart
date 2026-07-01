import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:trisquare_locus/utils/screen_size_config.dart';
import '../bloc/attendance_detail_bloc.dart';
import '../model/attendance_detail_supp_model.dart';
import '../model/attendancedetail_model.dart';
import '../service/attendance_service.dart';
import '../state/attendance_detail_state.dart';
import '../themes/app_colors.dart';
import '../widgets/app_top_bar.dart';
import 'misspunchrequest_page.dart';

class AttendanceDetailPage extends StatefulWidget {
  const AttendanceDetailPage({Key? key}) : super(key: key);

  @override
  State<AttendanceDetailPage> createState() => _AttendanceDetailPageState();
}

class _AttendanceDetailPageState extends State<AttendanceDetailPage> {

  late final AttendanceDetailBloc attendanceDetailBloc;

  var selectedMonth = "";

  final date = DateFormat("dd-MM-yyyy").format(DateTime.now());

  @override
  void initState(){
  final attendanceService = Provider.of<AttendanceService>(context, listen: false);
  attendanceDetailBloc = AttendanceDetailBloc(attendanceService);
  attendanceDetailBloc.init();
  super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppTopBar(title: "Attendance Details"),
      body: _buildBody(),
    );
  }

  _buildBody(){
    return BlocConsumer<AttendanceDetailBloc, AttendanceDetailState>(
    bloc: attendanceDetailBloc,
    listener: (_, state){},
    builder: (_, state){
      return state.when(
          loading: _buildLoading,
          content: _buildContent,
          success: _buildContent,
          failed: (form, __) => _buildContent(form));
    },
    );
  }

  Widget _buildLoading(AttendanceDetailSuppModel model){
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildContent(AttendanceDetailSuppModel model){
    return Column(
      children: [
        _buildMonthDialogBox(model),
        _buildList(model)
      ],
    );
  }

  Widget _buildList(AttendanceDetailSuppModel attendanceDetailList){
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        children: attendanceDetailList.attendance.map((model) => _buildListCard(model)).toList(),
      ),
    );
  }

  Widget _buildListCard(AttendanceDetailModel model){
    return  Card(
        margin: EdgeInsets.all(10.dw),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.dw)),
        elevation: 10.dw,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildDate(model),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildHeadingText("First Check-In"),
                _buildHeadingText("Last Check-Out"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildCheckIn(model),
                _buildCheckOut(model)

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if(model.attendanceDate == date && model.inTime.isEmpty)_buildRequestButton(model),
                if(model.outTime.isEmpty && model.inTime.isNotEmpty) _buildRequestButton(model),
                if(model.outTime.isEmpty && model.inTime.isEmpty && model.attendanceDate != date) _buildNotCheckedInandChekedOut(model)
              ],
            )
          ],
        ));
  }

  _buildHeadingText(String title){
    return Padding(
      padding: EdgeInsets.all(5.0.dw),
      child: SizedBox(
          width: 150.dw,
          child: Text(title,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16.dw),)),
    );
  }

  _buildText(String title){
    return Container(
      width: 150.dw,
      margin: EdgeInsets.only(bottom: 8.dw),
      child: Text(title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 16.dw,
          color: AppColors.navyblue),),
    );
  }

  _buildDate(AttendanceDetailModel model){
    return Container(
      width: ScreenSizeConfig.getFullWidth,
      decoration: BoxDecoration(
        color:AppColors.brown,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.dh), topRight: Radius.circular(20.dh))
      ),
      child: Padding(
        padding: EdgeInsets.all(5.0.dh),
        child: Text(model.attendanceDate,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18.dw, fontWeight: FontWeight.w500, color: AppColors.black),),
      ),
    );
  }

  _buildCheckIn(AttendanceDetailModel model){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        _buildText(model.inTime),
        _buildText(model.inAddress),
      ],
    );
  }

  _buildCheckOut(AttendanceDetailModel model){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        _buildText(model.outTime),
        _buildText(model.outAddress),
      ],
    );
  }

  _buildRequestButton(AttendanceDetailModel model){
    return ElevatedButton(
        onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => RequestMisspunchPage(model)));
          attendanceDetailBloc.init();
        },
        style: ElevatedButton.styleFrom(
          minimumSize: Size(100.dw, 30.dh),
          backgroundColor: AppColors.green,
        ),
        child:Text("Request",style: TextStyle(
          fontSize: 16.dw,
          fontWeight: FontWeight.w300
        ), textAlign: TextAlign.center,));
  }

  _buildMonthDialogBox(AttendanceDetailSuppModel model) {
    return InkWell(
      onTap: () async {
        _showMonthDialogue(model);
      },
      child: Padding(
        padding: EdgeInsets.all(10.0.dw),
        child: Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(10.0.dw),
            child: Padding(
              padding: EdgeInsets.all(10.dw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(model.attendance.isEmpty ? selectedMonth : model.attendance[0].month),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
            )),
      ),
    );
  }

  Future<void> _showMonthDialogue(AttendanceDetailSuppModel model) async {
    await showDialog(
        context: context,
       // barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            titlePadding: EdgeInsets.all(8.0.dw),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.dw),side: const BorderSide(color: AppColors.black)),
            title: SizedBox(
              width: ScreenSizeConfig.getFullWidth,
              height: 300.dh,
              child: ListView.builder(
                  itemCount: model.month.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            attendanceDetailBloc.init(model.month[index].substring(0,3).toUpperCase());
                            selectedMonth = model.month[index].substring(0,3).toUpperCase();
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: EdgeInsets.all(8.0.dw),
                            child: Text(
                              model.month[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.dw,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Container(height: 1.0,width: ScreenSizeConfig.getFullWidth,color: AppColors.black,)
                      ],
                    );
                  }),
            ),
          );
        }) ??
        false;
  }

  _buildNotCheckedInandChekedOut(AttendanceDetailModel model){
    return Padding(
      padding:EdgeInsets.only(bottom: 10.dw),
      child: ElevatedButton(onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => RequestMisspunchPage(model)));
        attendanceDetailBloc.init();
      },
          style: ElevatedButton.styleFrom(
              maximumSize: Size(300.dw, 50.dh),
              minimumSize: Size(300.dw, 50.dh),
              backgroundColor: AppColors.navyblue
          ),
          child:Text("Not Checked-In and Checked-Out", style: TextStyle(
            fontSize: 16.dw, fontWeight: FontWeight.w400
          ),)),
    );
  }

}
