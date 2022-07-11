import 'package:flutter/material.dart';
import 'package:tory/module/colors.dart';
import 'package:tory/module/text_style.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('설정',style: headline2(color: text_on_color),),
        backgroundColor: neutral,
        elevation: 0,
      ),
      body: Container(
        color: neutral,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 64,
              width: 414,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('알림 설정',style: subtitle2(color: text_on_color),),
                  Material(
                    child: InkWell(
                      child: Container(
                          width: 414,
                          height: 40,
                          margin: EdgeInsets.fromLTRB(24, 34, 0, 30),
                          child: Text('알림 및 소리'),
                      ),
                      onTap: (){},
                    ),
                    color: Colors.transparent,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );

  }
}
