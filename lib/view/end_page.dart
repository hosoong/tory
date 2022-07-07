import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:bubble/bubble.dart';

import 'dart:ui';
import 'dart:math';

class EndPage extends StatelessWidget {
  EndPage({Key? key}) : super(key: key);
  final List<ChartData> chartData = [
    ChartData('David', 30, Color.fromRGBO(9, 0, 136, 1)),
    ChartData('Steve', 33, Color.fromRGBO(147, 0, 119, 1)),
    ChartData('Jack', 34, Color.fromRGBO(228, 0, 124, 1)),
    ChartData('Others', 52, Color.fromRGBO(255, 189, 57, 1))
  ];

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

  var image1 = 'assets/image11.jpg';

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
                      image1,
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
                    Text('"아..나는 너랑 친구라고 생각했는데;; 그런 거였으면 미안해"'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 20, 20),
                child: Text('투표 결과'),
              ),
              Stack(
                children: [
                  Container(
                    //color: Colors.yellow,
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    decoration: BoxDecoration(
                      //모서리 둥글게 만들기
                      borderRadius: BorderRadius.circular(10),
                      //그라데이션 효과 주기
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(250, 247, 239, 1.0),
                            Color.fromRGBO(226, 246, 238, 1.0)
                          ]),
                      //그림자 효과 주기
                    ),
                    child: SfCircularChart(series: <CircularSeries>[
                      DoughnutSeries<ChartData, String>(
                          dataSource: chartData,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y,
                          dataLabelMapper: (ChartData data, _) => data.x,
                          dataLabelSettings: DataLabelSettings(
                              isVisible: true,
                              labelPosition: ChartDataLabelPosition.outside,
                              // Renders background rectangle and fills it with series color
                              useSeriesColor: true),
                          explode: false,
                          innerRadius: '73%',
                          // Explode all the segments
                          explodeAll: false)
                    ]),
                  ),
                  Positioned(
                    top: 110,
                    left: 148,
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3.0,
                            spreadRadius: 3.0,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: Text(
                          '숨겨왔던 나의 수줍은..',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () => {
                        Get.toNamed('/endpage2'),
                      },
                      child: Text('완료'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
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

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
  //final String text;
}
