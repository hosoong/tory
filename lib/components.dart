import 'package:flutter/material.dart';

OutlinedButton AgeandGenderButton(String text){
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      primary: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: 12,
      ),
    ),
    child: Text(text),
    onPressed: (){},
  );
}

OutlinedButton SearchChip(String text){
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      primary: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: 12,
      ),
    ),
    child: Text(text),
    onPressed: (){},
  );
}

OutlinedButton FilterButton(){
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      primary: Colors.white,
      
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
        Icon(Icons.filter_1_outlined, color: Colors.black),
        Text("필터"),
      ],
    ),
    onPressed: (){},
  );
}

OutlinedButton ThumbupButton(){
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      primary: Colors.white,
      
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
        Icon(Icons.thumb_up, color: Colors.black),
        Text("22"),
      ],
    ),
    onPressed: (){},
  );
}

OutlinedButton ThumbdownButton(){
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      primary: Colors.white,
      
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
        Icon(Icons.thumb_down, color: Colors.black),
        Text("22"),
      ],
    ),
    onPressed: (){},
  );
}

OutlinedButton WatchEndingButton(){
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      primary: Colors.white,
      
      shape: RoundedRectangleBorder(
        
        borderRadius: BorderRadius.circular(2),
      ),
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: 12,
      ),
    ),
    child: Text("결말보기"),
    onPressed: (){},
  );
}

OutlinedButton VoteButton(){
  return OutlinedButton(
    style: OutlinedButton.styleFrom(
      primary: Colors.white,
      
      shape: RoundedRectangleBorder(
        
        borderRadius: BorderRadius.circular(2),
      ),
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: 12,
      ),
    ),
    child: Text("투표 (22)"),
    onPressed: (){},
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