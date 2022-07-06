import 'package:flutter/material.dart';
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
                  visualDensity: VisualDensity(horizontal: -4.0, vertical: -4.0),
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
                            style: const TextStyle(fontSize: 14, color: Colors.grey),
                          )),
                    ],
                  ),
                ),
              ],
            )),
        body: 
        
        // searchTextController.text.isEmpty
        //     ? 
        // NomalScreen()
        //     : myFocusNode.hasFocus
        //         ? 
                // FocusScreen()
                // : 
                AfterSearchScreen()
                );
  }

  Center AfterSearchScreen() {
    return Center(
      child: Column(
        children: [
          Container(
            child: const Text("not focus"),
          ),
        ],
      ),
    );
  }

  Center FocusScreen() {
    return Center(
      child: ListView(
        children: [
          SizedBox(height: 20,),
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
                children:  [
                  Row(
                    children: [
                      Text("최근 검색어"),
                      Spacer(),
                      TextButton(
                        onPressed: (){},
                        child: Text("전체 삭제",style: TextStyle(color: Colors.black),)),
                    ],
                  ),
                  Row(
                    children: [
                      Text("스피치"),
                      Spacer(),
                      IconButton(onPressed: (){}, icon: Icon(Icons.cancel_outlined, size: 12,))
                    ],
                  ),
                  Row(
                    children: [
                      Text("학업고민"),
                      Spacer(),
                      IconButton(onPressed: (){}, icon: Icon(Icons.cancel_outlined, size: 12))
                    ],
                  ),
                  Row(
                    children: [
                      Text("엄마랑 싸우고 푸는 방법"),
                      Spacer(),
                      IconButton(onPressed: (){}, icon: Icon(Icons.cancel_outlined, size: 12))
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
          SizedBox(height: 20,),
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
                const Text("추천 카테고리",),
                SizedBox(height: 20.h),
                //TODO: 컴포넌트 나오면 빌더 형태로 다시 만들기
                Expanded(
                  child: GridView(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
                      childAspectRatio: 148 / 190, 
                      mainAxisSpacing: 20, //수평 Padding
                      crossAxisSpacing: 20, //수직 Padding
                    ),
                          children: [
                            Container(
                              // margin: EdgeInsets.symmetric(horizontal: 25.w),
                              decoration: LeftSpeechBubbleContainer(background1),
                              child: Stack(
                  children: [
                    Image.asset('assets/story1.png'),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,

                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 12.0, bottom: 12.0),
                          child: Text("연애백과사전"),
                        ),
                      ],
                    ),
                              ]
                              ),
                            ),
                            Container(
                              // margin: EdgeInsets.symmetric(horizontal: 25.w),
                              decoration: LeftSpeechBubbleContainer(background1),
                              child: Stack(
                  children: [
                    Image.asset('assets/story1.png'),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,

                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 12.0, bottom: 12.0),
                          child: Text("연애백과사전"),
                        ),
                      ],
                    ),
                              ]
                              ),
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
