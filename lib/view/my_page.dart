import 'package:flutter/material.dart';
import 'package:tory/module/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../module/colors.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:get/get.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: background2,
          child: Container(
            width: 414.w,
            height: 142.h,
            child: Column(
              children: [
                myPageHeader(context),
                myPageMoaBogi(context),
                myPagerecentTory(context),
                myPageSetting(context),
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
            height: 120.h,
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
          top: 80.h,
          left: 32.w,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '??????',
                      style: headline1(color: Colors.white),
                    ),
                    Text(
                      ' ?????? ?????? ??????',
                      style: body1(color: Colors.white),
                    )
                  ],
                ),
                //play bar
                Container(
                  padding: EdgeInsets.fromLTRB(0, 15.h, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 159.w,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'play',
                              style: body5(color: Colors.white),
                            ),
                            SizedBox(
                              width: 80.w,
                            ),
                            Expanded(
                                child: Text('120/200',
                                    style: body5(color: Colors.white))),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      new LinearPercentIndicator(
                        width: 159.w,
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
                  padding: EdgeInsets.fromLTRB(0, 2.h, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 159.w,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'writing',
                              style: body5(color: Colors.white),
                            ),
                            SizedBox(
                              width: 70.w,
                            ),
                            Expanded(
                                child: Text('120/200',
                                    style: body5(color: Colors.white))),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      new LinearPercentIndicator(
                        width: 159.w,
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
        top: 150.h,
        right: 34.w,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                _modalBottomSheetMenu(context);
              },
              child: Row(
                children: [
                  Text(
                    '?????? 5m ?????????',
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
        top: 82.h,
        right: 24.w,
        child: Center(
          child: IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 24,
              ),
            onPressed: () {
                Get.toNamed('/profilepage');
          },
          ),
        ),
      ),
    ],
  );
}
void _modalBottomSheetMenu(BuildContext context){
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => Container(
      height: MediaQuery.of(context).size.height * 0.75,
      decoration: new BoxDecoration(
        color: neutral,
        borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(25.0),
          topRight: const Radius.circular(25.0),
        ),
      ),
      child: Center(
        child: toryPlayInFo(),
      ),
    ),
  );
}

//?????? ?????? bottom up sheet
toryPlayInFo(){
  return Stack(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40.h),
          Text('????????? ?????????????????? ????????? ?????????!',style: headline4(color: text_on_color),),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(height: 36.h),
                    toryInFo('?????? 1cm ?????????','PLAY 10??? ??????','assets/snow_1cm.png',40.w),
                    SizedBox(height: 10.h),
                    Container(
                      width: 414.w, child: Divider(indent: 34.w, thickness: 1, endIndent: 24.w,),
                    ),
                    toryInFo('?????? 10cm ?????????','PLAY 10??? ~ 29???','assets/snow_10cm.png',48.w),
                    SizedBox(height: 10),
                    Container(
                      width: 414.w, child: Divider(indent: 34.w, thickness: 1, endIndent: 24.w,),
                    ),
                    // SizedBox(height: 18,),
                    toryInFo('?????? 50cm','PLAY 30 ~ 49???','assets/snow_50cm.png',64.w),
                    Container(
                      width: 414.w, child: Divider(indent: 34.w, thickness: 1, endIndent: 24.w,),
                    ),
                    toryInFo('?????? 1m ?????????','PLAY 50 ~ 99???, ???????????? 10 ~ 49???','assets/snow_1m.png',80.w),
                    Container(
                      width: 414.w, child: Divider(indent: 34.w, thickness: 1, endIndent: 24.w,),
                    ),
                    toryInFo('?????? 5m ?????????','PLAY 100 ~ 199???, ???????????? 50??? ~','assets/snow__5m.png',92.w),
                    SizedBox(height: 36.h),
                    Text('????????? ???????????? ????????? ???????????????',style: body2(color: text_on_color),),
                  ],
                )
              ],
            ),
          )
        ],
      ),
      Positioned(
        top: 25.h,
        left: 18.w,
        child: Container(
          // color: neutral,
          child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.clear,
                color: Colors.black,
                size: 18.w,
              )),
        ),
      ),
    ],
  );
}

//?????? ?????? tile
toryInFo(String name, String explain, String image,double size){
  return Container(
    width: 366.w,
    // height: size+10,
    child: Row(
      children: [
        SizedBox(width: 30.w),
        // SizedBox(height: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            size>89.w ? SizedBox(height: 1,):  SizedBox(height: 1),
            (size>75.w && size<88.w) ? SizedBox(height: 1.h,):  SizedBox(height: 1.h),
            (size>60.w && size<80.w) ? SizedBox(height: 8.h,):  SizedBox(height: 1.h),
            (size<50.w && size>40.w)?  SizedBox(height: 15.h,):  SizedBox(height: 1.h),
            Row(
              children: [
                Text(name,style: headline4(color: text_on_color),),
                (name =='?????? 50cm')? Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Text('???????????? ?????? ??????!',style: subtitle2(color: Primary600),),
                ) : Padding(
                  padding: EdgeInsets.only(left: 10.w),
                ) ,
              ],
            ),
            Text(explain,style: body4(color: Colors.grey),),
          ],
        ),
       Expanded(child: Container(width: 10.w,)),
        Container(
          width: size,
          height:size,
          child: Image.asset(image, fit: BoxFit.fill,)
          ),
          Container(
            // child:   (size>60 && size<70) ? size<50 ?  SizedBox(width: 14):  SizedBox(width: 10) : SizedBox(width: 1),
            child:   size<79.w ? size<60.w ? size<50.w ?  SizedBox(width: 14.w):  SizedBox(width: 10.w) :SizedBox(width: 6.w) : SizedBox(width: 0),
          ),
      ],
    ),
  );
}


//???????????? TODO: navigate??? ??? ???????????????
myPageMoaBogi(BuildContext context) {
  return Row(
    children: [
      SizedBox(
        width: 24.w,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '????????????',
            style: headline3(color: text_on_color),
          ),
          SizedBox(height: 12.h,),
          Container(
            width: 366.w,
            height: 118.h,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 24.w,
                ),
                //????????????
                InkWell(
                  child: Column(
                    children: [
                      Container(
                        height: 76.h,
                        width: 76.w,
                      ),
                      Expanded(
                          child: Text(
                        '????????????',
                        style: headline5(color: text_on_color),
                      )),
                    ],
                  ),
                  onTap: () {
                    print('????????????');
                    Get.toNamed('/loginpage');
                  },
                ),
                SizedBox(
                  width: 15.w,
                ),
                VerticalDivider(
                  indent: 23.w,
                  endIndent: 22.w,
                ),
                SizedBox(
                  width: 10.w,
                ),
                InkWell(
                  child: Column(
                    children: [
                      Container(
                        height: 76.h,
                        width: 76.w,
                      ),
                      Expanded(
                          child: Text(
                        '??????',
                        style: headline5(color: text_on_color),
                      )),
                    ],
                  ),
                  onTap: () {
                    print('??????');
                  },
                ),
                SizedBox(
                  width: 10.w,
                ),
                VerticalDivider(
                  indent: 23.w,
                  endIndent: 22.w,
                ),
                SizedBox(
                  width: 15.w,
                ),
                InkWell(
                  child: Column(
                    children: [
                      Container(
                        height: 76.h,
                        width: 76.w,
                      ),
                      Expanded(
                          child: Text(
                        '????????????',
                        style: headline5(color: text_on_color),
                      )),
                    ],
                  ),
                  onTap: () {
                    print('????????????');
                  },
                ),
                SizedBox(
                  width: 20.w,
                )
              ],
            ),
          )
        ],
      ),
    ],
  );
}

//?????? ??????
//TODO: ????????? ????????? TODO: navigate??? ??? ???????????????
myPagerecentTory(BuildContext context) {
  PageController? _pageController;

  List<String> images = [
    "assets/image13.png",
    "assets/image14.png",
    "assets/image12.png",
    "assets/love.png",
    "assets/snow_5m.png",
  ];

  int activePage = 1;
  int Page = 5;

  return Column(
    children: <Widget>[
      SizedBox(
        height: 32.h,
      ),
      Row(
        children: [
          SizedBox(
            width: 24.w,
          ),
          Text(
            '???????????? ?????? ??????',
            style: headline3(color: text_on_color),
          ),
          SizedBox(
            width: 8.w,
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
            size: 18.w,
          )
        ],
      ),
      Container(
        margin: EdgeInsets.all(10.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: SizedBox(
                height: 200.h,
                child: PageView.builder(
                    itemCount: 4,
                    pageSnapping: true,
                    controller: _pageController,
                    onPageChanged: (page) {
                      // setState(() {
                      //   Page = page;
                      // });
                    },
                    itemBuilder: (context, pagePosition) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        // child: Image.network(images[pagePosition]),
                        child: Image.asset(images[pagePosition]),
                      );
                    }),
              ),
            ),
          ],
        ),
      )
    ],
  );
}

// TODO: navigate??? ??? ???????????????
myPageSetting(BuildContext context) {
  return Expanded(
    child: Container(
      width: 414.w,
      height: 158.h,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            child: Container(
              width: 414.w,
              height: 50.h,
              child: Row(
                children: [
                  SizedBox(width: 24.w,),
                  Text('??????', style: headline5(color: text_on_color)),
                ],
              ),
            ),
            onTap: () {
              print('??????');
              Get.toNamed('settingpage');
            },
          ),
          InkWell(
            child: Container(
              width: 414.w,
              height: 50.h,
              child: Row(
                children: [
                  SizedBox(width: 24.w,),
                  Text('????????????', style: headline5(color: text_on_color)),
                ],
              ),
            ),
            onTap: () {
              print('????????????');
            },
          ),
          InkWell(
            child: Container(
              width: 414.w,
              height: 50.h,
              child: Row(
                children: [
                  SizedBox(width: 24.w,),
                  Text('????????????', style: headline5(color: text_on_color)),
                ],
              ),
            ),
            onTap: () {
              print('????????????');
            },
          ),
        ],
      ),
    ),
  );
}
