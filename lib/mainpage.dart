
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:tory/colors.dart';
import 'package:tory/text_style.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


var _mwidth;
var _mheight;

//remove
var title1 = '숨겨왔던 나의 수줍은 마음';
var cate1 = 'open';
var type1 = 'long';
var type2 = 'short';
var subtitle1 = '모두 네게 줄게\n썸녀에게 고백하기';
var image1 = 'assets/love1.png';
var image0='assets/love.png';
var title='사랑해... 사랑한다고... 고백모음';
//

class MainPage extends StatefulWidget {
  @override
  _MainPage createState() => _MainPage();
}
class _MainPage extends State<MainPage> {
  String dropdownValue = 'All';

  Widget build(BuildContext context) {
    _mwidth = MediaQuery.of(context).size.width;
    _mheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: background3,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Get.toNamed('/');
          },
        ),
      ),
      body: Container( //헤더 이미지랑 헤더 타이
        color: background3,
        width: _mwidth,
        height: _mheight,
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                    width: _mwidth,
                    height: 155,
                    child: Image.asset(
                      '${image0}',
                      fit: BoxFit.fill,
                    )),
                Positioned(
                    top: 109,
                    left: 20,
                    child: Text(
                      '${title}',
                      style: subtitlestyle(
                          size: 20, color: text2, weight: FontWeight.bold),
                    )),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        '24개의 토리',
                        style: subtitlestyle(size: 14, color: text1),
                      ),
                    ],
                  ),
                ),
                //필터, 정렬기능
                Container(
                  width: MediaQuery.of(context).size.width/2-22,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      DropdownButton<String>(
                        // Step 3.
                        value: dropdownValue,
                        // Step 4.
                        items: <String>['All', 'open', 'lock']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 14),
                            ),
                          );
                        }).toList(),
                        // Step 5.
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                      ),
                    ],
                  ),
                ),

              ],
            ),
            SizedBox(
              height: 20,
            ),
            //short long 등 스토리 리스트
            Container(
              height: 550,
              child: ListView(
                scrollDirection: Axis.vertical,
                physics: ClampingScrollPhysics(),
                // children: [
                //   Column(
                  children:<Widget>[
                    mainPageListTile(title1, subtitle1, cate1, image1,type1),
                    mainPageListTile(title1, subtitle1, 'lock', image1,type2),
                    mainPageListTile(title1, subtitle1, 'lock', image1,type2),
                    mainPageListTile(title1, subtitle1, cate1, image1,type1),
                    mainPageListTile(title1, subtitle1, 'lock', image1,type2),
                    mainPageListTile(title1, subtitle1, 'lock', image1,type2),
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
    );
  }
}


void createData() {
  final usercol =
      FirebaseFirestore.instance.collection("users").doc("userkey1");
  usercol.set({
    "username": "abc",
    "age": 5,
  });
}

//open/lock 별 구분 컨테이너
Widget _categoryMark(String category) {
  if (category == 'open') {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: Primary,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      width: 40,
      height: 21,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Text(' ${category}'),
      ),
    );
  }
  else {
    return
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: tertiary,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        width: 35,
        height: 21,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text(' ${category}'),
        ),
      );
  }
}

//listTile
Widget mainPageListTile(
      String title, String subtitle, String category, String image,String type) {
    var textid; // image,title,subtitle,textid

    return Column(
      children: [
        SizedBox(
          height: 4,
        ),
        Stack(
          children: [
            Container(
              // margin: EdgeInsets.fromLTRB(20, 4, 0, 24),
              width: 368,
              height: 88,
              color: background3,
              child: Row(
                children: [
                  SizedBox(
                    width: 4,
                  ),
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Image.asset(
                          image,
                          fit: BoxFit.fill,
                        ), // Text(key['title']),
                      ),
                      // Container(
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(30),
                      //   ),
                      //   margin: EdgeInsets.only(left: 4),
                      //   width: 86,
                      //   height: 86,
                      //   // color: SubPrimary,
                      //   child: Image.asset(
                      //     image,
                      //     fit: BoxFit.fill,
                      //   ),
                      // ),
                      Positioned(
                        left: 0,
                        top: 8,
                        child: _categoryMark(category),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '[${type}] ${title}',
                        style: subtitlestyle(
                            size: 16, color: text2, weight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${subtitle}',
                        style: subtitlestyle(size: 14, color: text1),
                      ),
                      Text(
                        '#sdfs #fsdf',
                        style: subtitlestyle(size: 12, color: Primary),
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
          height: 8,
        ),
        Divider(
          thickness: 1, indent: 24, // empty space to the leading edge of divider.
          endIndent: 24,
        ),
      ],
    );
  }

