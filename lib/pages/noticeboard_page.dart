import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:trisquare_locus/utils/screen_size_config.dart';

import '../bloc/notice_bloc.dart';
import '../model/noticeboard_model.dart';
import '../service/login_service.dart';
import '../service/noticeboard_service.dart';
import '../state/noticeboard_state.dart';
import '../widgets/app_top_bar.dart';

class NoticeBoardPage extends StatefulWidget {
  const NoticeBoardPage({Key? key}) : super(key: key);

  @override
  State<NoticeBoardPage> createState() => _NoticeBoardPageState();
}

class _NoticeBoardPageState extends State<NoticeBoardPage> {


  late NoticeboardBloc noticeboardBloc;

  @override
  void initState(){
    final noticeboard = Provider.of<NoticeboardService>(context, listen: false);
    final loginService = Provider.of<LoginService>(context, listen: false);
    noticeboardBloc = NoticeboardBloc(noticeboard,loginService );
    noticeboardBloc.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppTopBar(title: "Notices"),
        body: _buildBody()
    );
  }

  _buildBody(){
    return BlocConsumer<NoticeboardBloc, NoticeboardState>(
      bloc: noticeboardBloc,
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

  Widget _buildLoading(List<NoticeboardModel> model){
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildContent(List<NoticeboardModel> model){
    return SafeArea(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(8.0.dw),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/announcement.png",
                      scale: 6.dw,
                    ),
                  ],
                ),
              ),
            ),
            _buildList(model)
          ],
        )
    );
  }

  _buildList(List<NoticeboardModel> holidayList) {
    return
      holidayList.isEmpty ? const Text("No Data") :
      Expanded(
        child: ListView(
          shrinkWrap: true,
          children: holidayList.map((model) => _buildListCard(model)).toList(),
        ));
  }

  Widget _buildListCard(NoticeboardModel model) {
    return Card(
      color: const Color(0xffA4C9C9),
        margin: EdgeInsets.all(10.dw),
        elevation: 10.dw,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: _buildText(model.title),
            ),
            _buildText(model.description),
          ],

        ));
  }

  _buildText(String title) {
    return Padding(
      padding: EdgeInsets.all(8.dw),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.dh),
      ),
    );
  }
}
