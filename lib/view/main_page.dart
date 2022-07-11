import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:tory/module/colors.dart';
import 'package:tory/module/text_style.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../module/components.dart';
import '../module/model.dart';


var _mwidth;
var _mheight;

//remove
var title1 = '숨겨왔던 나의 수줍은 마음';
var cate1 = '참여형';
var cate2 = '대화형';
var type1 = 'long';
var type2 = 'short';
var subtitle1 = '모두 네게 줄게\n썸녀에게 고백하기';
var image1 = 'assets/love1.png';
var image0 = 'assets/love2.png';
var title = '사랑해... 사랑한다고... 고백모음';
//

//TODO: SliverAppBar 해야함
class MainPage extends StatefulWidget {
  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  String dropdownValue = 'All';
  final Stream<QuerySnapshot> storysStream =
      FirebaseFirestore.instance.collection('story').snapshots();

    late var len =0;


  var _storyRef = FirebaseFirestore.instance.collection('story');


  Stream<List<Story>> storyMainStream(String dropdownValue) {

    //dropdown 정렬 like가 많은 순
    if(dropdownValue == '인기순'){
      return _storyRef.orderBy('like', descending: true).snapshots().map((value) => value.docs
          .map((element) => Story(
        category: element.data()["category"],
        doc_id: element.data()["doc_id"],
        title: element.data()["title"],
        explain: element.data()["explain"],
        user_id: element.data()["user_id"],
        end_type: element.data()["end_type"],
        like: element.data()["like"],
        end_index:element.data()["end_index"],
        day:element.data()["day"],
      )
      )
          .toList());
    }
    else if(dropdownValue == '최신순'){
      return _storyRef.orderBy('day', descending: true).snapshots().map((value) => value.docs
          .map((element) => Story(
        category: element.data()["category"],
        doc_id: element.data()["doc_id"],
        title: element.data()["title"],
        explain: element.data()["explain"],
        user_id: element.data()["user_id"],
        end_type: element.data()["end_type"],
        like: element.data()["like"],
        end_index:element.data()["end_index"],
        day:element.data()["day"],
      )
      )
          .toList());
    }


    else{
      return _storyRef.snapshots().map((value) => value.docs
          .map((element) => Story(
                category: element.data()["category"],
                doc_id: element.data()["doc_id"],
                title: element.data()["title"],
                explain: element.data()["explain"],
                user_id: element.data()["user_id"],
                end_type: element.data()["end_type"],
                like: element.data()["like"],
                end_index: element.data()["end_index"],
                day: element.data()["day"],
              ))
          .toList());
    }


  }

  Widget build(BuildContext context) {
    _mwidth = MediaQuery.of(context).size.width;
    _mheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFAAC8C8),
        elevation: 0,
        leadingWidth: 81,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Get.toNamed('/');
          },
        ),
      ),
      body: Container(
        //헤더 이미지랑 헤더 타이
        color: background3,
        width: MediaQuery.of(context).size.width.w,
        height: MediaQuery.of(context).size.height.h,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 90,
                  width: _mwidth,
                  color: Color(0xFFAAC8C8),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFFAF7EF),
                      ),
                      child: SizedBox(
                          width: 366.w,
                          height: 160.h,
                          child: Image.asset(
                            '${image0}',
                            fit: BoxFit.fill,
                          )),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.h),
            //header name, num of story, filter, sorting
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //header name
                Row(
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${title}',
                          style: headline2(color: text_on_color),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '총 ${len}개의 토리',
                          style: body4(color: text_on_color),
                        ),
                      ],
                    ),
                  ],
                ),
                //num of story

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // filter
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 25.w,
                          ),
                          FilterButton(),
                        ],
                      ),
                    ),
                    // 정렬기능
                    Container(
                      width: (MediaQuery.of(context).size.width / 2 - 22).w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              // Step 3.
                              value: dropdownValue,
                              // Step 4.
                              items: <String>[
                                'All',
                                '인기순',
                                '최신순'
                              ].map<DropdownMenuItem<String>>((String value) {
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(),
            SizedBox(
              height: 10.h,
            ),
            //stream builder
            Container(
              height: 470.h,
              child: StreamBuilder<List<Story>>(
                stream: storyMainStream(dropdownValue),
                initialData: null,
                builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot){
                  if (snapshot.hasError) {
                    return Text('Something went wrong ${snapshot.error}');
                  }

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Text("Loading");
                  }

                  var storyList = snapshot.data!;
                  len= storyList.length;
                  return ListView.builder(
                    itemCount: storyList.length,
                    itemBuilder: (context, index) {
                      return mainPageListTile(
                          storyList[index].title,
                          storyList[index].explain,
                          storyList[index].category,
                          image1,
                          type2);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//listTile
Widget mainPageListTile(
    String title, String subtitle, String category, String image, String type) {
  var textid; // image,title,subtitle,textid

  return InkWell(
    child: Container(
      child: Column(
        children: [
          SizedBox(
            height: 4.h,
          ),
          Stack(
            children: [
              Container(
                // margin: EdgeInsets.fromLTRB(20, 4, 0, 24),
                width: 368.w,
                height: 91.h,
                color: background3,
                child: Row(
                  children: [
                    SizedBox(
                      width: 4.w,
                    ),
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4.0),
                            child: Image.asset(
                              image,
                              fit: BoxFit.fill,
                            ), // Text(key['title']),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 8.h,
                          child: categoryMark(category),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '[${type}] ${title}',
                          style: headline5(color: text_on_color),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          '${subtitle}',
                          style: button3(color: text_on_color),
                        ),
                        Text(
                          '#sdfs #fsdf',
                          style: button5(color: SubPrimary700),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                  right: 2,
                  bottom: 12,
                  child: Row(
                    children: [
                      Text('조짱',style: TextStyle(fontSize: 12,color: text_grey1),),
                      Icon(Icons.arrow_forward_ios,color: text_grey1,size: 12,)
                    ],
                  )
              ),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Divider(
            thickness: 1,
            indent: 24.w, // empty space to the leading edge of divider.
            endIndent: 24.w,
          ),
        ],
      ),
    ),
    onTap: () {
      print('sdfasdfjellpo${category}');
    },
  );
}
