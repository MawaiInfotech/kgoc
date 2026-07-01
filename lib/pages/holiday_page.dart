import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:trisquare_locus/utils/screen_size_config.dart';
import '../bloc/holiday_bloc.dart';
import '../model/holiday_model.dart';
import '../service/holiday_service.dart';
import '../service/login_service.dart';
import '../state/holiday_state.dart';
import '../widgets/app_top_bar.dart';

class HolidayPage extends StatefulWidget {
  const HolidayPage({Key? key}) : super(key: key);

  @override
  State<HolidayPage> createState() => _HolidayPageState();
}

class _HolidayPageState extends State<HolidayPage> {

  late HolidayBloc holidayBloc;

  @override
  void initState(){
   final holidayService = Provider.of<HolidayService>(context, listen: false);
   final loginService = Provider.of<LoginService>(context, listen: false);
   holidayBloc = HolidayBloc(loginService, holidayService);
   holidayBloc.init();
   super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppTopBar(title: "Holidays"),
      body: _buildBody()
    );
  }

  _buildBody(){
    return BlocConsumer<HolidayBloc, HolidayState>(
      bloc: holidayBloc,
      listener: (_, state){},
      builder: (_, state){
        return state.when(
            loading: _buildLoading,
            content: _buildContent,
            success: _buildContent,
            failed: (form, __) => _buildContent(form)
        );
      },
    );
  }

  Widget _buildLoading(List<HolidayModel> model){
    return const Center(child: CircularProgressIndicator());
  }

 Widget _buildContent(List<HolidayModel> model){
    return SafeArea(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(8.0.dw),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/beach.png",
                      scale: 8.dw,
                    ),
                    Text(
                      "Holidays of the Year",
                      style:
                      TextStyle(fontSize: 18.dw, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            _buildList(model)
          ],
        )
    );
  }

  _buildList(List<HolidayModel> holidayList) {
    return Expanded(
        child: ListView(
      shrinkWrap: true,
      children: holidayList.map((model) => _buildListCard(model)).toList(),
    ));
  }

  Widget _buildListCard(HolidayModel model) {
    return Card(
      color: const Color(0xffA4C9C9),
      margin: EdgeInsets.all(10.dw),
        elevation: 10.dw,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          "assets/images/summer.png",
          scale: 12.dh,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildText(model.description),
            Row(
              children: [
                _buildText("Date -"),
                _buildText(model.date)
              ],
            ),
            Row(
              children: [
                _buildText("Day -"),
                _buildText(model.day)
              ],
            ),

          ],

        )
      ],
    ));
  }

  _buildText(String title) {
    return Padding(
      padding: EdgeInsets.all(2.dw),
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.dh),
      ),
    );
  }

}
