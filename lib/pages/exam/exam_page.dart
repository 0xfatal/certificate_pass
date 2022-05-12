import 'package:bruno/bruno.dart';
import 'package:certificate_pass/pages/exam/exam_router.dart';
import 'package:certificate_pass/resources/gaps.dart';
import 'package:certificate_pass/resources/styles.dart';
import 'package:certificate_pass/routes/fluro_navigator.dart';
import 'package:flutter/material.dart';

class ExamPage extends StatefulWidget {
  ExamPage({Key? key}) : super(key: key);

  @override
  _ExamPageState createState() {
    return _ExamPageState();
  }
}

class _ExamPageState extends State<ExamPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        Padding(
          padding: EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                child: Icon(Icons.calendar_today_outlined,
                    color: Colors.grey[600]!),
                onTap: () =>
                    NavigatorUtils.push(context, ExamRouter.calendarPage),
              ),
              Gaps.hGap8,
              GestureDetector(
                child: Icon(Icons.add, color: Colors.grey[600]!),
                onTap: () =>
                    NavigatorUtils.push(context, ExamRouter.countdownPage),
              )
            ],
          ),
        ),
        Padding(
            padding: EdgeInsets.only(left: 14),
            child: Align(
                child: Text('我的备考', style: TextStyles.textBold26),
                alignment: Alignment.topLeft)),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '暂无证书信息，快去报名吧',
                style: TextStyle(fontSize: 16),
              ),
              Gaps.vGap16,
              BrnNormalButton(
                text: '去报考',
                onTap: () =>
                    NavigatorUtils.push(context, ExamRouter.memoDetailPage),
                backgroundColor: Color(0xFF4252E9),
                borderRadius: BorderRadius.circular(50),
                insertPadding:
                    EdgeInsets.symmetric(horizontal: 50, vertical: 13),
                textColor: Colors.white,
                fontSize: 16,
              )
            ],
          ),
        )
      ]),
    ));
  }
}
