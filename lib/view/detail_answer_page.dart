import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tory/module/text_style.dart';
import '../module/colors.dart';
import '../module/components.dart';
import 'package:get/get.dart';

class DetailAnswerPage extends StatefulWidget {
  const DetailAnswerPage({Key? key}) : super(key: key);

  @override
  State<DetailAnswerPage> createState() => _DetailAnswerPageState();
}

class _DetailAnswerPageState extends State<DetailAnswerPage> {
  
final PageController pageController = PageController(
  initialPage: 0,
);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          // padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
          icon: Icon(
            Icons.arrow_back_ios,
            color: text_on_button,
            size: 24,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          '숨겨왔던 나의 수줍은 마음',
          style: headline2(color: text_on_button),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.replay, color: text_on_button),
            onPressed: () {
              Get.back();
            },
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: PageView(
        children: [
          page1(),
          page2(),
          ]),
    );
  }

//두번 째 페이지
   Widget page2() {
    return Column(
      children: [
        profileHeader(),
        Row(
              children: [
                const Expanded(child: Divider(
                  indent: 36,
                  endIndent: 10,
                )),
                Text("2022년 7월 7일", style: subtitle4(color: line)),
                const Expanded(child: Divider(
                  indent: 10,
                  endIndent: 36,
                )),
              ],
            ),
            SizedBox(height: 10,),
        Stack(
          children: [
            Container(
            width: 313.w,
            margin: EdgeInsets.only(right: 77.w, left: 24, top: 10),
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 23),
            decoration: LeftSpeechBubbleContainer(tertiary100),
            // width: 313.w,
            child: Text("\"OO아 이따가 집 앞으로 나올래? 할 말이 있어...\""),
          ),
          Container(
                      margin: EdgeInsets.fromLTRB(48, 0, 0, 10),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: tertiary200,
                            width: 1,
                          ),
                          color: Colors.white,
                          borderRadius: new BorderRadius.all(
                            Radius.circular(20.0),
                          )),
                      child: Text('김토리',style: subtitle4(color: text_on_color),),
                    ),
          ]
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Spacer(),
            //TODO: 나중에 가로 반응형으로 바꾸기
            Container(
              width: 313.w,
              // constraints: BoxConstraints(
              //   minWidth: 181.w,
              //   maxWidth: 313.w,
              // ),
              margin: EdgeInsets.only(left: 77.w, right: 24.w),
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 23),
              decoration: RightSpeechBubbleContainer(Primary50),
              // width: 313.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "안녕 ^^",
                    textWidthBasis: TextWidthBasis.longestLine,
                    style: body4(color: text_on_color),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.zero,
                        width: 40,
                        height: 29,
                        child: OutlinedButton(
                            onPressed: () {
                              _modalBottomSheetMenu();
                            },
                            style: OutlinedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                primary: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                textStyle: subtitle3(color: text_on_color)),
                            child: Text("답글", softWrap: false
                                // style: subtitle3(color: text_on_color),
                                )),
                      ),
                      Spacer(),
                      ThumbupButton(),
                      SizedBox(width: 4),
                      ThumbdownButton(),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),
        Stack(
          children: [
            Container(
            width: 313.w,
            margin: EdgeInsets.only(right: 77.w, left: 24, top: 10),
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 23),
            decoration: LeftSpeechBubbleContainer(tertiary100),
            // width: 313.w,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: Image.asset("assets/image11.jpg", fit: BoxFit.contain, )
                  ),
                  SizedBox(height: 8),
                Text("\"OO아 이따가 집 앞으로 나올래? 할 말이 있어...\""),
              ],
            ),
          ),
          Container(
                      margin: EdgeInsets.fromLTRB(48, 0, 0, 10),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: tertiary200,
                            width: 1,
                          ),
                          color: Colors.white,
                          borderRadius: new BorderRadius.all(
                            Radius.circular(20.0),
                          )),
                      child: Text('김토리',style: subtitle4(color: text_on_color),),
                    ),
          ]
        ),
      ],
    );
  }


//첫 번째 페이지
  Widget page1() {
    return Column(
      children: [
        profileHeader(),
        Row(
              children: [
                const Expanded(child: Divider(
                  indent: 36,
                  endIndent: 10,
                )),
                Text("2022년 7월 7일", style: subtitle4(color: line)),
                const Expanded(child: Divider(
                  indent: 10,
                  endIndent: 36,
                )),
              ],
            ),
            SizedBox(height: 10,),
        Stack(
          children: [
            Container(
            width: 313.w,
            margin: EdgeInsets.only(right: 77.w, left: 24, top: 10),
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 23),
            decoration: LeftSpeechBubbleContainer(tertiary100),
            // width: 313.w,
            child: Text("\"OO아 이따가 집 앞으로 나올래? 할 말이 있어...\""),
          ),
          Container(
                      margin: EdgeInsets.fromLTRB(48, 0, 0, 10),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: tertiary200,
                            width: 1,
                          ),
                          color: Colors.white,
                          borderRadius: new BorderRadius.all(
                            Radius.circular(20.0),
                          )),
                      child: Text('김토리',style: subtitle4(color: text_on_color),),
                    ),
          ]
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Spacer(),
            //TODO: 나중에 가로 반응형으로 바꾸기
            Container(
              width: 313.w,
              // constraints: BoxConstraints(
              //   minWidth: 181.w,
              //   maxWidth: 313.w,
              // ),
              margin: EdgeInsets.only(left: 77.w, right: 24.w),
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 23),
              decoration: RightSpeechBubbleContainer(Primary50),
              // width: 313.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "안녕 ^^",
                    textWidthBasis: TextWidthBasis.longestLine,
                    style: body4(color: text_on_color),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.zero,
                        width: 40,
                        height: 29,
                        child: OutlinedButton(
                            onPressed: () {
                              _modalBottomSheetMenu();
                            },
                            style: OutlinedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                primary: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                textStyle: subtitle3(color: text_on_color)),
                            child: Text("답글", softWrap: false
                                // style: subtitle3(color: text_on_color),
                                )),
                      ),
                      Spacer(),
                      ThumbupButton(),
                      SizedBox(width: 4),
                      ThumbdownButton(),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),
        Stack(
          children: [
            Container(
            width: 313.w,
            margin: EdgeInsets.only(right: 77.w, left: 24, top: 10),
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 23),
            decoration: LeftSpeechBubbleContainer(tertiary100),
            // width: 313.w,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: Image.asset("assets/image11.jpg", fit: BoxFit.contain, )
                  ),
                  SizedBox(height: 8),
                Text("\"OO아 이따가 집 앞으로 나올래? 할 말이 있어...\""),
              ],
            ),
          ),
          Container(
                      margin: EdgeInsets.fromLTRB(48, 0, 0, 10),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: tertiary200,
                            width: 1,
                          ),
                          color: Colors.white,
                          borderRadius: new BorderRadius.all(
                            Radius.circular(20.0),
                          )),
                      child: Text('김토리',style: subtitle4(color: text_on_color),),
                    ),
          ]
        ),
      ],
    );
  }

  profileHeader() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/left.png'),
            Image.asset('assets/center.png'),
            Image.asset('assets/right.png'),
          ],
        ),
      ],
    );
  }
//TODO: 현승님 코드 훔쳐오기.
  void _modalBottomSheetMenu(){
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => Container(
      height: MediaQuery.of(context).size.height * 0.75,
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(25.0),
          topRight: const Radius.circular(25.0),
        ),
      ),
      child: Center(
        child: Text("Modal content goes here"),
      ),
    ),
  );
}
}
