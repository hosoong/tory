import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tory/module/colors.dart';
import 'package:tory/module/components.dart';
import 'package:tory/module/text_style.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var category= "참여형";
    return Scaffold(
      backgroundColor: background2,
      appBar: AppBar(
        backgroundColor: background2,
        centerTitle: true,
        title: Text("숨겨왔던 나의 수줍은 마음"),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Spacer(),
            
            //TODO: open 네임텍 추가
            //
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 8),
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(32),
                    child: Container(
                       decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(32)),
    ),
                        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 68.h),
                        // color: background3,
                        width: 333.w,
                        // height: 341.h,
                        child: Text(
                          '\"오래전부터 좋아하는 ㅁㅁㅁ와 나는 지금 썸을 타고 있다. \n내가 생각하기에는 이건 분명... 썸이다. \n영일대까지 가서 저녁을 먹었다~ \n대박대박!~~~ 밤 산책도 몇번 같이 했다. \n빨리 사귀고 싶어 ㅠㅠ 어떡하지?? \n얼른 고백해버리고 싶은데... \n방법을 모르겠어! 난 뚝딱이란 말이야..\"',
                          textAlign: TextAlign.center,
                          style: body2(color: text_on_color),
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 33),
                  child: categoryMark('$category')),
              ],
            ),
            Spacer(),

            //시작하기 버튼
            Padding(
              padding: const EdgeInsets.only(bottom: 100.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(190.w, 50.h),
                    primary: Primary500, // background
                    // onPrimary: text_on_button, // foreground
                  ),
                  onPressed: () {
                    Get.toNamed('/story2');
                  },
                  child: Text(
                    "토리 시작하기",
                    style: button1(color: text_on_button),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
