import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tory/colors.dart';
import 'package:tory/text_style.dart';

class StoryPage2 extends StatelessWidget {
  const StoryPage2({Key? key}) : super(key: key);

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
        child: Stack(
          children: [
            Column(
            children: [
              SizedBox(height: 50.h),
              Container(
                child: Image.asset('assets/story1.png'),
              )
            ],
          ),
            Column(
              verticalDirection: VerticalDirection.up,
              children: [
                Container()
            ],)
          ]
        ),
      ),
    );
  }
}