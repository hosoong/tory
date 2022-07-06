import 'package:flutter/material.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';
import 'package:tory/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:get/get.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: background2,
          child: Container(
            width: 414,
            height: 142,
            child: Column(
              children: [
                myPageHeader(context),
                myPageMoaBogi(context),
              ],
            ),
          )
          // ],
          // )
          ),
    );
  }
}

Widget myPageHeader(BuildContext context) {
  return Stack(
    children: [
      Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 120,
            color: Primary500,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/left.png'),
              Image.asset('assets/center.png'),
              Image.asset('assets/right.png'),
            ],
          ),
        ],
      ),
      Positioned(
          top: 80,
          left: 32,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '지연',
                      style: headline1(color: Colors.white),
                    ),
                    Text(
                      ' 님의 토리 창고',
                      style: body1(color: Colors.white),
                    )
                  ],
                ),
                //play bar
                Container(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 159,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'play',
                              style: body5(color: Colors.white),
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Expanded(
                                child: Text('120/200',
                                    style: body5(color: Colors.white))),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      new LinearPercentIndicator(
                        width: 159,
                        animation: true,
                        lineHeight: 12,
                        animationDuration: 2500,
                        percent: 120 / 200,
                        // center: Text("80.0%"),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        progressColor: SubPrimary200,
                        backgroundColor: SubPrimary50,
                      ),
                    ],
                  ),
                ),
                //writing bar
                Container(
                  padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 159,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'writing',
                              style: body5(color: Colors.white),
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            Expanded(
                                child: Text('120/200',
                                    style: body5(color: Colors.white))),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      new LinearPercentIndicator(
                        width: 159,
                        animation: true,
                        lineHeight: 12,
                        animationDuration: 2500,
                        percent: 120 / 200,
                        // barRadius: ,
                        // center: Text("80.0%"),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        progressColor: tertiary200,
                        backgroundColor: tertiary50,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
      Positioned(
        top: 150,
        right: 34,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                openBottomSheet(context);
              },
              child: Row(
                children: [
                  Text(
                    '지름 5m 눈덩이',
                    style: subtitle3(color: text_on_button),
                  ),
                  Icon(
                    Icons.info_outline_rounded,
                    size: 12,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Image.asset('assets/snow_5m.png'),
          ],
        ),
      ),
      Positioned(
        top: 82,
        right: 24,
        child: Center(
          child: IconButton(
              onPressed: () {

              },
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 24,
              )),
        ),
      ),
    ],
  );
}

void openBottomSheet(BuildContext context) {
  Get.bottomSheet(
    Container(
      width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      color: neutral,
      child: Stack(
        children: [
          Image.asset('assets/snowinfo.png',
            width: MediaQuery.of(context).size.width,),
          Positioned(
            top: 14,
            right: 46,
            child: Container(
                color: neutral,
              child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.clear,
                    color: Colors.black,
                    size: 18,
                  )),
            ),
          ),

        ],
      ),
    ),
    backgroundColor: Colors.white,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}

Future<void> _showSnowInfo(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        content: Stack(
          children: [
            SingleChildScrollView(
              child: Image.asset('assets/snowinfo.png'),
            ),
            Positioned(
              top: 82,
              right: 24,
              child: Center(
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 24,
                    )),
              ),
            ),
          ],
        ),
      );
    },
  );
}

//모아보기
myPageMoaBogi(BuildContext context){
  return Row(
    children: [
      SizedBox(width: 24,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('모아보기',style: headline3(color: text_on_color),),
          Container(
            width: 366,
            height: 118,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 24,),
                //시나리오
                InkWell(
                    child: Column(
                      children: [
                        Container(height: 76,width: 76,),
                        Expanded(child: Text('시나리오',style: headline5(color: text_on_color),)),
                      ],
                    ),
                    onTap: (){
                      print('시나리오');
                    },
                  ),
                SizedBox(width: 15,),
                VerticalDivider(
                  indent: 23,
                  endIndent: 22,
                ),
                SizedBox(width: 10,),
                InkWell(
                  child: Column(
                    children: [
                      Container(height: 76,width: 76,),
                      Expanded(child: Text('답변',style: headline5(color: text_on_color),)),
                    ],
                  ),
                  onTap: (){
                    print('답변');
                  },
                ),
                SizedBox(width: 10,),
                VerticalDivider(
                  indent: 23,
                  endIndent: 22,
                ),
                SizedBox(width: 15,),
                InkWell(
                  child: Column(
                    children: [
                      Container(height: 76,width: 76,),
                      Expanded(child: Text('투표결과',style: headline5(color: text_on_color),)),
                    ],
                  ),
                  onTap: (){
                    print('투표결과');
                  },
                ),
                SizedBox(width: 20,)
              ],
            ),
          )
        ],
      ),
    ],
  );
}
