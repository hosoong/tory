import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';
import 'package:get/get.dart';
import 'components.dart';

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
                    icon: Icon(
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
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            setState(() {});
                            // searchTextController.clear();
                          },
                          child: Text(
                            "취소",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          )),
                    ],
                  ),
                ),
              ],
            )),
        body: 
        
        searchTextController.text.isEmpty
            ? NomalScreen()
            : myFocusNode.hasFocus
                ? FocusScreen()
                : NoFocusScreen()
                );
  }

  Center NoFocusScreen() {
    return Center(
      child: Column(
        children: [
          Container(
            child: Text(" not focus"),
          ),
        ],
      ),
    );
  }

  Center FocusScreen() {
    return Center(
      child: Column(
        children: [
          Container(
            child: Text("focus"),
          ),
        ],
      ),
    );
  }

  //검색 화면 들어오면 보이는 기본 스크린
  Center NomalScreen() {
    return Center(
      child: ListView(
        children: [
          Container(child: Text("Empty")),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              decoration: LeftSpeechBubbleContainer(background3),
              width: 366.w,
              height: 191.h,
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("인기 검색어"),
                  Text("1 스피치"),
                  Text("2 발표 준비"),
                  Text("3 가족관계"),
                ],
              )),
          SizedBox(height: 20.h),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            width: 366.w,
            height: 728.h,
            decoration: LeftSpeechBubbleContainer(background3),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 28.h),
                Text("추천 카테고리"),
                Expanded(
                  child: GridView(
                          children: [
                            Container(
                              decoration: LeftSpeechBubbleContainer(background3),
                              child: Stack(
                  children: [
                    Image.asset('assets/story1.png'),
                    Text("연애백과사전"),
                              ]
                              ),
                            )
                          ],
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
                      childAspectRatio: 148 / 190, 
                      mainAxisSpacing: 20, //수평 Padding
                      crossAxisSpacing: 20, //수직 Padding
                    ),
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
