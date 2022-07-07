import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tory/module/text_style.dart';
import '../module/colors.dart';
import '../module/components.dart';
import 'package:get/get.dart';

class VoteConfirmPage extends StatefulWidget {
  VoteConfirmPage({Key? key}) : super(key: key);

  @override
  State<VoteConfirmPage> createState() => _VoteConfirmPageState();
}

class _VoteConfirmPageState extends State<VoteConfirmPage> {
  String dropdownValue = 'All';
    var title1 = '숨겨왔던 나의 수줍은 마음';
    var cate1 = '참여형';
    var cate2 = '기본형';
    var type1 = 'long';
    var type2 = 'short';
    var subtitle1 = '모두 네게 줄게\n썸녀에게 고백하기';
    var image1 = 'assets/love1.png';
    var image0 = 'assets/love2.png';
    var title = '사랑해... 사랑한다고... 고백모음';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () => Get.back()),
        title: Text('내 투표현황',style: headline2(color: text_on_color),),
        centerTitle: true,
        backgroundColor: background3,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: background3,
            borderRadius:
                BorderRadius.only(topLeft: Radius.circular(40)), //모서리를 둥글게
          ),
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              //short long 등 스토리 리스트
              Container(
                height: 470.h,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  physics: ClampingScrollPhysics(),
                  // children: [
                  //   Column(
                  children: <Widget>[
                    mainPageListTile(title1, subtitle1, cate1, image1, type1),
                    mainPageListTile(title1, subtitle1, cate2, image1, type2),
                    mainPageListTile(title1, subtitle1, cate2, image1, type2),
                    mainPageListTile(title1, subtitle1, cate1, image1, type1),
                    mainPageListTile(title1, subtitle1, cate2, image1, type2),
                    mainPageListTile(title1, subtitle1, cate2, image1, type2),
                    // ListView.builder(
                    //     itemBuilder: itemBuilder
                    // )
                    // ],),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget mainPageListTile(
    String title, String subtitle, String category, String image, String type) {
  var textid; // image,title,subtitle,textid

  return InkWell(
    child: Container(
      child: Column(
        children: [
          SizedBox(
            height: 4.h,
          ),
          Stack(
            children: [
              Container(
                // margin: EdgeInsets.fromLTRB(20, 4, 0, 24),
                width: 368.w,
                height: 91.h,
                color: background3,
                child: Row(
                  children: [
                    SizedBox(
                      width: 4.w,
                    ),
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4.0),
                            child: Image.asset(
                              image,
                              fit: BoxFit.fill,
                            ), // Text(key['title']),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 8.h,
                          child: categoryMark(category),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '[${type}] ${title}',
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          '${subtitle}',

                        ),
                        Text(
                          '#sdfs #fsdf',

                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Positioned(
              //     right: 2,
              //     bottom: 12,
              //     child: Text('조짱',style: subtitlestyle(size: 12, color: text1),)
              // ),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Divider(
            thickness: 1,
            indent: 24.w, // empty space to the leading edge of divider.
            endIndent: 24.w,
          ),
        ],
      ),
    ),
    onTap: () {
      print('sdfasdfjellpo${category}');
    },
  );
}


}