import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tory/module/colors.dart';
import 'package:tory/module/text_style.dart';
import 'package:bubble/bubble.dart';

import 'dart:ui';
import 'dart:math';

class EndPage2 extends StatelessWidget {
  EndPage2({Key? key}) : super(key: key);

  var image2 = 'assets/image13.png';

  static const styleSomebody = BubbleStyle(
    nip: BubbleNip.leftCenter,
    color: Colors.white,
    borderColor: Colors.blue,
    borderWidth: 1,
    elevation: 4,
    margin: BubbleEdges.only(top: 8, right: 50),
    alignment: Alignment.topLeft,
  );

  static const styleMe = BubbleStyle(
    nip: BubbleNip.rightCenter,
    color: Color.fromARGB(255, 225, 255, 199),
    borderColor: Colors.blue,
    borderWidth: 1,
    elevation: 4,
    margin: BubbleEdges.only(top: 8, left: 50),
    alignment: Alignment.topRight,
  );

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("결말"),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Get.back(),
          ),
        ),
        body: Center(
            child: Container(
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(30, 10, 10, 20),
                padding: EdgeInsets.fromLTRB(20, 20, 30, 10),
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(32.0),
                    topRight: const Radius.circular(32.0),
                    bottomLeft: const Radius.circular(32.0),
                    bottomRight: const Radius.circular(0.0),
                  ),
                  color: Color.fromRGBO(189, 234, 216, 1.0),
                  //그림자 효과 주기
                ),
                child: Text(
                  " 나 오늘부터 수영 배우려구,,, 너라는 바다에 빠져 죽지 않기 위해",
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 30, 20),
                padding: EdgeInsets.fromLTRB(20, 20, 30, 10),
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(32.0),
                    topRight: const Radius.circular(32.0),
                    bottomLeft: const Radius.circular(0.0),
                    bottomRight: const Radius.circular(32.0),
                  ),
                  color: Color.fromRGBO(249, 223, 201, 1.0),
                  //그림자 효과 주기
                ),
                child: Column(
                  children: [
                    Image.asset(
                      image2,
                      fit: BoxFit.fill,
                    ),
                    Container(
                      //margin: EdgeInsets.fromLTRB(0, 20, 250, 20),
                      alignment: Alignment.bottomLeft,
                      width: 50,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 15, 0, 10),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromRGBO(246, 184, 127, 1),
                              width: 1.5,
                            ),
                            color: Colors.white,
                            borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(32.0),
                              topRight: const Radius.circular(32.0),
                              bottomLeft: const Radius.circular(32.0),
                              bottomRight: const Radius.circular(32.0),
                            )),
                        child: Text('김토리'),
                      ),
                    ),
                    Text('"나도 너를 운명이라고 생각했어..! 고마워 먼저 말해줘서"'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () => {
                        Get.toNamed('/endpage3'),
                      },
                      child: Text('완료'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () => {
                        Get.toNamed('/endpage3'),
                      },
                      child: Text('다른 답변 구경가기'),
                    ),
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
