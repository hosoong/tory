import 'package:flutter/material.dart';

import 'colors.dart';

OutlinedButton AgeandGenderButton(String text) {
  bool isClicked = false;
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      minimumSize: Size(47, 27),
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
      textStyle: TextStyle(
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
      minimumSize: Size(47, 27),
      primary: Colors.black,
      side: BorderSide(
        color: Colors.black,
        width: 1,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      textStyle: TextStyle(
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
      fixedSize: Size(75, 27),
      // maximumSize: Size(75, 27),
      primary: Primary600,
      side: BorderSide(
        color: Primary600,
        width: 1,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
      textStyle: TextStyle(
        fontSize: 12,
      ),
    ),
    child: Row(
      children: [
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
        textStyle: TextStyle(
          color: Colors.black,
          fontSize: 12,
        ),
      ),
      child: Row(
        children: [
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
        textStyle: TextStyle(
          color: Colors.black,
          fontSize: 12,
        ),
      ),
      child: Row(
        children: [
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
      fixedSize: Size(80, 29),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: 12,
      ),
    ),
    child: Text("결말보기"),
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
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: 12,
      ),
    ),
    child: Text("투표 (22)"),
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
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(32),
                topRight: Radius.circular(32),
                topLeft: Radius.circular(32)), //모서리를 둥글게
          );
  }

    BoxDecoration RightSpeechBubbleContainer(Color color) {
    return BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                topRight: Radius.circular(32),
                topLeft: Radius.circular(32)), //모서리를 둥글게
          );
  }