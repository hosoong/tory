import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tory/colors.dart';
import 'package:tory/text_style.dart';

class StoryPage2 extends StatelessWidget {
  const StoryPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("숨겨왔던 나의 수줍은 마음"),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(),
        ),
      ),
      body: Center(
        child: Stack(children: [
          Column(
            children: [
              SizedBox(height: 50.h),
              Container(
                child: Image.asset('assets/story1.png'),
              )
            ],
          ),
          Center(
            child: Column(
              verticalDirection: VerticalDirection.up,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        // offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 8.0,
                      ),
                    ],
                  ),
                  width: 414.w,
                  height: 290.h,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 37.h,
                      ),
                      Text(
                        "이 때!\n그에게서 걸려온 전화....\n",
                        textAlign: TextAlign.center,
                        style: bodystyle,
                      ),
                      Text(
                        "\"OO아 이따가 집 앞으로 나올래?\n할 말이 있어..\"",
                        textAlign: TextAlign.center,
                        style: bodystyle,
                      ),
                      SizedBox(
                        height: 37.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 350.w,
                          ),
                          IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Stack(children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 200.h, horizontal: 50.w),
                                        child: Material(
                                            type: MaterialType.transparency,
                                            child: SizedBox(
                                                width: 414.w,
                                                child: Text(
                                                  "\"OO아 이따가 집 앞으로 나올래?\n할 말이 있어..\"",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18),
                                                ))),
                                      ),

                                      Dialog(
                                        child: Container(
                                            width: 339.w,
                                            // height: 238.h,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      32.0),
                                                  child: TextField(
                                                    // maxLength: 100,
                                                    maxLines: 3,
                                                    decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      labelText:
                                                          "OO님의 대답을 입력해주세요.",
                                                    ),
                                                  ),
                                                ),
                                                Center(
                                                  child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            fixedSize: Size(
                                                                274.w, 41.h),
                                                            primary:
                                                                Primary600),
                                                    onPressed: () {},
                                                    child: Text("완료"),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 32,
                                                )
                                              ],
                                            )),
                                      )
                                      // AlertDialog(
                                      //   content: TextField(
                                      //     maxLength: 100,
                                      //     maxLines: 3,
                                      //     decoration: InputDecoration(
                                      //       border: InputBorder.none,
                                      //       labelText: "OO님의 대답을 입력해주세요.",
                                      //     ),
                                      //   ),
                                      //   actions: [
                                      //     ElevatedButton(
                                      //       style: ElevatedButton.styleFrom(
                                      //           fixedSize: Size(274.w, 41.h),
                                      //           primary: Primary),
                                      //       onPressed: () {},
                                      //       child: Text("완료"),
                                      //     ),
                                      //   ],
                                      //   actionsAlignment:
                                      //       MainAxisAlignment.center,
                                      // ),
                                    ]);
                                  });
                            },
                            icon: Image.asset('assets/triangle1.png'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
