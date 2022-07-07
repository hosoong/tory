import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tory/module/text_style.dart';
import '../module/colors.dart';

class ProfileModifyPage extends StatelessWidget {
  const ProfileModifyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        leading: IconButton(
          padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
          icon: Icon(Icons.clear,color: text_on_button,size: 24,),
          onPressed: (){
            Get.back();
          },
        ),
        title: Text('프로필 수정',style: headline2(color: text_on_button),),
        // actions: [IconButton(onPressed: onPressed, icon: icon)],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        child: Column(
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
        ),
      ),
    );
  }
}
