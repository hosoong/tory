import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tory/colors.dart';
import 'package:tory/text_style.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:bubble/bubble.dart';

import 'dart:ui';
import 'dart:math';

class EndPage extends StatelessWidget {
  EndPage({Key? key}) : super(key: key);
  final List<ChartData> chartData = [
    ChartData('David', 25, Color.fromRGBO(9,0,136,1)),
    ChartData('Steve', 38, Color.fromRGBO(147,0,119,1)),
    ChartData('Jack', 34, Color.fromRGBO(228,0,124,1)),
    ChartData('Others', 52, Color.fromRGBO(255,189,57,1))
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
              child:ListView(
                children: [
                  Bubble(
                    margin: BubbleEdges.fromLTRB(10, 10, 0, 20),
                    alignment: Alignment.topRight,
                    nipWidth: 20,
                    nipHeight: 34,
                    nip: BubbleNip.rightTop,
                    color: Color.fromRGBO(250, 247, 239, 1.0),
                    //child: Image.network("https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg") ,
                    child: Text(" 나 오늘부터 수영 배우려구,,, 너라는 바다에 빠져 죽지 않기 위해",),
                  ),
                  Bubble(
                    margin: BubbleEdges.fromLTRB(5, 10, 20, 20),
                    padding: BubbleEdges.fromLTRB(15, 20, 20, 20),
                    alignment: Alignment.topLeft,
                    nipWidth: MediaQuery.of(context).size.width,
                    nipHeight: MediaQuery.of(context).size.height,
                    nip: BubbleNip.leftTop,
                    color: Color.fromRGBO(216, 239, 220, 1.0),
                    child: Column(
                      children: [
                        Image.network("https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg") ,
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 250, 20),
                          alignment: Alignment.bottomLeft,
                          width: 50,
                          child: Text('김토리',style: TextStyle(color: Colors.black),),
                        ),
                        Text("아..나는 너랑 친구라고 생각했는데;; 그런 거였으면 미안해"),
                      ],
                    ),
                  ),
                  Bubble(
                    margin: BubbleEdges.fromLTRB(5, 10, 20, 20),
                    padding: BubbleEdges.fromLTRB(15, 20, 20, 20),
                    alignment: Alignment.topLeft,
                    nipWidth: 8,
                    nipHeight: 24,
                    nip: BubbleNip.leftTop,
                    color: Color.fromRGBO(216, 239, 220, 1.0),
                    child: Column(
                      children: [
                        Image.network("http://img.danawa.com/prod_img/500000/737/332/img/13332737_1.jpg?shrink=330:330&_v=20220517145220") ,
                        Container(
                          //margin: EdgeInsets.fromLTRB(0, 20, 250, 20),
                          alignment: Alignment.bottomLeft,
                          width: 50,
                          child: Text('김토리',style: TextStyle(color: Colors.black),),
                        ),
                        Text("아..나는 너랑 친구라고 생각했는데;; 그런 거였으면 미안해"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 20, 20),
                    child: Text('투표 결과'),
                  ),
                  Container(
                    color: Colors.yellow,
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: SfCircularChart(
                        series: <CircularSeries>[
                          DoughnutSeries<ChartData, String>(
                              dataSource: chartData,
                              xValueMapper: (ChartData data, _) => data.x,
                              yValueMapper: (ChartData data, _) => data.y,
                              dataLabelMapper:(ChartData data, _) =>data.x,
                              dataLabelSettings: DataLabelSettings(
                                  isVisible: true,
                                  labelPosition: ChartDataLabelPosition.outside,
                                  // Renders background rectangle and fills it with series color
                                  useSeriesColor: true
                              ),
                              explode: true,
                              // Explode all the segments
                              explodeAll: true
                          )
                        ]
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Row(

                    ),
                  )
                ],
              ),
          )
      )
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
  //final String text;
}