import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './colors.dart';
import 'package:tory/module/text_style.dart';

import './colors.dart';
import 'package:get/get.dart';

OutlinedButton AgeandGenderButton(String text) {
  bool isClicked = false;
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      minimumSize: const Size(47, 27),
      // maximumSize: Size(47, 27),
      primary: isClicked ? Primary600 : Colors.black,
      surfaceTintColor: Colors.blue,
      side: BorderSide(
        color: isClicked ? Primary600 : Colors.black,
        width: 1,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      textStyle: const TextStyle(
        fontSize: 12,
      ),
    ),
    child: Text(
      text,
    ),
    onPressed: () {},
  );
}

OutlinedButton SearchChip(String text) {
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      minimumSize: const Size(47, 27),
      primary: Colors.black,
      side: const BorderSide(
        color: Colors.black,
        width: 1,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      textStyle: const TextStyle(
        fontSize: 12,
      ),
    ),
    child: Text(text),
    onPressed: () {},
  );
}

OutlinedButton FilterButton() {
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      // minimumSize: Size(59, 27),
      fixedSize: const Size(75, 27),
      // maximumSize: Size(75, 27),
      primary: Primary600,
      side: const BorderSide(
        color: Primary600,
        width: 1,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
      textStyle: const TextStyle(
        fontSize: 12,
      ),
    ),
    child: Row(
      children: const [
        Icon(
          Icons.filter_list,
          color: Primary600,
          size: 16,
        ),
        SizedBox(
          width: 4,
        ),
        Text("필터"),
      ],
    ),
    onPressed: () {},
  );
}

Container ThumbupButton() {
  bool isClicked = false;
  return Container(
    
    constraints: BoxConstraints(
      minWidth: 40,
      // maxWidth: 40,
    ),
    // width: 40,
    height: 29,
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.all(6),
        // fixedSize: Size(58,29),
        primary: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
        ),
        textStyle: subtitle3(color: text_on_color)
      ),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Icon(
            Icons.thumb_up,
            color: Colors.black,
            size: 12,
          ),
          SizedBox(
            width: 4,
          ),
          Text("1333", style: subtitle3(color: text_on_color)),
        ],
      ),
      onPressed: () {},
    ),
  );
}

SizedBox ThumbdownButton() {
  bool isClicked = false;
  return SizedBox(
    // width: 64,
    height: 29,
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        // fixedSize: Size(58,29),
        primary: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
        ),
        textStyle:subtitle3(color: text_on_color)
      ),
      child: Row(
        children:  [
          Icon(
            Icons.thumb_down_outlined,
            color: Colors.black,
            size: 12,
          ),
          SizedBox(
            width: 4,
          ),
          Text("22",style: subtitle3(color: text_on_color),),
        ],
      ),
      onPressed: () {},
    ),
  );
}

OutlinedButton WatchEndingButton() {
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      primary: Colors.black,
      fixedSize: const Size(80, 29),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
      textStyle: const TextStyle(
        color: Colors.black,
        fontSize: 12,
      ),
    ),
    child: const Text("결말보기"),
    onPressed: () {},
  );
}

OutlinedButton VoteButton() {
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      primary: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
      textStyle: const TextStyle(
        color: Colors.black,
        fontSize: 12,
      ),
    ),
    child: const Text("투표 (22)"),
    onPressed: () {},
  );
}

  BoxDecoration LeftSpeechBubbleContainer(Color color) {
    return BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.only(
                bottomRight: const Radius.circular(32),
                topRight: Radius.circular(32),
                topLeft: Radius.circular(32)), //모서리를 둥글게
          );
  }


BoxDecoration RightSpeechBubbleContainer(Color color) {
  return BoxDecoration(
    color: color,
    borderRadius: const BorderRadius.only(
        bottomLeft: const Radius.circular(32),
        topRight: const Radius.circular(32),
        topLeft: Radius.circular(32)), //모서리를 둥글게
  );
}

greenHeader() {
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

//카테고리 네임택
  Widget categoryMark(String category) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: category=="참여형"? Primary200 : tertiary300,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      width: 40.w,
      height: 21.h,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 1),
        child: Text(' ${category}',style: subtitle4(color: text_on_color,)),
      ),
    );
  }

//TODO: greenHeader() 추가해서 써야함
greenHeaderScaffold(String title, IconButton leadingIcon, IconButton actionIcon, Widget body) {
  return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: leadingIcon,
        title: Text(
          title,
          style: headline2(color: text_on_button),
        ),
        actions: [
          actionIcon,
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children:[
          greenHeader(),
          body
        ]
      ),
  );
}
