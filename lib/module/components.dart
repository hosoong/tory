import 'package:flutter/material.dart';
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

SizedBox ThumbupButton() {
  bool isClicked = false;
  return SizedBox(
    width: 64,
    height: 29,
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        // fixedSize: Size(58,29),
        primary: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
        ),
        textStyle: const TextStyle(
          color: Colors.black,
          fontSize: 12,
        ),
      ),
      child: Row(
        children: const [
          Icon(
            Icons.thumb_up,
            color: Colors.black,
            size: 12,
          ),
          SizedBox(
            width: 4,
          ),
          Text("22"),
        ],
      ),
      onPressed: () {},
    ),
  );
}

SizedBox ThumbdownButton() {
  bool isClicked = false;
  return SizedBox(
    width: 64,
    height: 29,
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        // fixedSize: Size(58,29),
        primary: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
        ),
        textStyle: const TextStyle(
          color: Colors.black,
          fontSize: 12,
        ),
      ),
      child: Row(
        children: const [
          Icon(
            Icons.thumb_up,
            color: Colors.black,
            size: 12,
          ),
          SizedBox(
            width: 4,
          ),
          Text("22"),
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

// Container openChip(){
//   return Container(
//     padding: EdgeInsets.only(left: 10, right: 10),
//     child: Row(
//       children: [
//         Text("open"),
//         SizedBox(width: 5),
//         Icon(Icons.check, color: Colors.green),
//       ],
//     ),
//   );
// }

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
