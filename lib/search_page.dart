//TODO: 텍스트 스타일 적용해야함. DB 연결 필요. 이미지 및 리스트 빌더 형태로 구성 필요.

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';
import 'package:get/get.dart';
import 'components.dart';
import 'text_style.dart';

    String dropdownValue = 'All';


class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  TextEditingController searchTextController = TextEditingController();
  FocusNode myFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final search_controller = Get.put(SearchController());

    return Scaffold(
        backgroundColor: background2,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            // leading: IconButton(icon: Icon(Icons.arrow_back_ios, size: 20,), onPressed: () => Get.back()),
            automaticallyImplyLeading: false,
            elevation: 0,
            title: Row(
              children: [
                IconButton(
                    visualDensity:
                        VisualDensity(horizontal: -4.0, vertical: -4.0),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    ),
                    onPressed: () => Get.back()),
                Container(
                  decoration: BoxDecoration(
                    color: background3,
                    borderRadius: BorderRadius.circular(12), //모서리를 둥글게
                  ),
                  // color: background3,
                  width: 334.w,
                  height: 41.h,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          focusNode: myFocusNode,
                          controller: searchTextController,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            setState(() {});
                            // searchTextController.clear();
                          },
                          child: const Text(
                            "취소",
                            style: const TextStyle(
                                fontSize: 14, color: Colors.grey),
                          )),
                    ],
                  ),
                ),
              ],
            )),
        body:

            searchTextController.text.isEmpty
                ?
            NomalScreen()
                : myFocusNode.hasFocus
                    ?
            FocusScreen()
            :
            AfterSearchScreen());
  }

//검색 결과 화ㄴ
  Center AfterSearchScreen() {

    var title1 = '숨겨왔던 나의 수줍은 마음';
    var cate1 = 'open';
    var cate2 = 'lock';
    var type1 = 'long';
    var type2 = 'short';
    var subtitle1 = '모두 네게 줄게\n썸녀에게 고백하기';
    var image1 = 'assets/love1.png';
    var image0 = 'assets/love2.png';
    var title = '사랑해... 사랑한다고... 고백모음';

    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: background3,
          borderRadius:
              BorderRadius.only(topLeft: Radius.circular(40)), //모서리를 둥글게
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // filter
                SizedBox(width: 24.w),
                Text("검색결과"),
                SizedBox(width: 150.w),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 25.w,
                    ),
                    FilterButton(),
                    SizedBox(
                      width: 15.w,
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        // Step 3.
                        value: dropdownValue,
                        // Step 4.
                        items: <String>['All', '인기순', '댓글순']
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
                    ),
                  ],
                ),
                // 정렬기능
              ],
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(
              height: 10.h,
            ),
            //short long 등 스토리 리스트
            Container(
              height: 470.h,
              child: ListView(
                scrollDirection: Axis.vertical,
                physics: ClampingScrollPhysics(),
                // children: [
                //   Column(
                children: <Widget>[
                  mainPageListTile(title1, subtitle1, cate1, image1, type1),
                  mainPageListTile(title1, subtitle1, cate2, image1, type2),
                  mainPageListTile(title1, subtitle1, cate2, image1, type2),
                  mainPageListTile(title1, subtitle1, cate1, image1, type1),
                  mainPageListTile(title1, subtitle1, cate2, image1, type2),
                  mainPageListTile(title1, subtitle1, cate2, image1, type2),
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

  Center FocusScreen() {
    return Center(
      child: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              decoration: LeftSpeechBubbleContainer(background3),
              width: 366.w,
              // height: 191.h,
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("최근 검색어"),
                      Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "전체 삭제",
                            style: TextStyle(color: Colors.black),
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Text("스피치"),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.cancel_outlined,
                            size: 12,
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Text("학업고민"),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.cancel_outlined, size: 12))
                    ],
                  ),
                  Row(
                    children: [
                      Text("엄마랑 싸우고 푸는 방법"),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.cancel_outlined, size: 12))
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }

  //검색 화면 들어오면 보이는 기본 스크린
  Center NomalScreen() {
    return Center(
      child: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              decoration: LeftSpeechBubbleContainer(background3),
              width: 366.w,
              height: 191.h,
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("인기 검색어"),
                  Text("1 스피치"),
                  Text("2 발표 준비"),
                  Text("3 가족관계"),
                ],
              )),
          SizedBox(height: 20.h),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            padding: const EdgeInsets.symmetric(horizontal: 24),
            width: 366.w,
            height: 728.h,
            decoration: LeftSpeechBubbleContainer(background3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 28.h),
                const Text(
                  "추천 카테고리",
                ),
                SizedBox(height: 20.h),
                //TODO: 컴포넌트 나오면 빌더 형태로 다시 만들기
                Expanded(
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
                      childAspectRatio: 148 / 190,
                      mainAxisSpacing: 20, //수평 Padding
                      crossAxisSpacing: 20, //수직 Padding
                    ),
                    children: [
                      Container(
                        // margin: EdgeInsets.symmetric(horizontal: 25.w),
                        decoration: LeftSpeechBubbleContainer(background1),
                        child: Stack(children: [
                          Image.asset('assets/story1.png'),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 12.0, bottom: 12.0),
                                child: Text("연애백과사전"),
                              ),
                            ],
                          ),
                        ]),
                      ),
                      Container(
                        // margin: EdgeInsets.symmetric(horizontal: 25.w),
                        decoration: LeftSpeechBubbleContainer(background1),
                        child: Stack(children: [
                          Image.asset('assets/story1.png'),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 12.0, bottom: 12.0),
                                child: Text("연애백과사전"),
                              ),
                            ],
                          ),
                        ]),
                      )
                    ],
                    //item 의 반목문 항목 형성
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}

class SearchController extends GetxController {
  RxBool focusOn = false.obs;
  RxBool textOn = false.obs;
}

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
                          child: _categoryMark(category),
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
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          '${subtitle}',

                        ),
                        Text(
                          '#sdfs #fsdf',

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

Widget _categoryMark(String category) {
  if (category == 'open') {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: Primary600,
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
        padding: const EdgeInsets.all(1.0),
        child: Text(' ${category}'),
      ),
    );
  } else {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: tertiary600,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      width: 35.w,
      height: 21.h,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Text('${category}'),
      ),
    );
  }
}
