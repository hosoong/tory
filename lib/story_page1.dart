import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tory/colors.dart';
import 'package:tory/text_style.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            SizedBox(height: 100.h),
            //TODO: open 네임텍 추가
            Material(
              elevation: 4,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 68),
                color: neutral,
                width: 333.w,
                // height: 341.h,
                child: Text('\"오래전부터 좋아하는 ㅁㅁㅁ와 나는 지금 썸을 타고 있다. \n내가 생각하기에는 이건 분명... 썸이다. \n영일대까지 가서 저녁을 먹었다~ \n대박대박!~~~ 밤 산책도 몇번 같이 했다. \n빨리 사귀고 싶어 ㅠㅠ 어떡하지?? \n얼른 고백해버리고 싶은데... \n방법을 모르겠어! 난 뚝딱이란 말이야..\"',textAlign: TextAlign.center, style: bodystyle,)),
            ),
            SizedBox(height: 200.h),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(190.w,50.h),
                  primary: Primary, // background
                  onPrimary: Colors.white, // foreground
                ),
              onPressed: (){
                Get.toNamed('/story2');
              }, 
              child: Text("토리 시작하기",style: TextStyle(fontSize: 19),))

          ],
        ),
      ),
    );
  }
}