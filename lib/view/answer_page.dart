import 'package:flutter/material.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';
import 'package:draggable_home/draggable_home.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(AnswerPage());

class AnswerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: new ThemeData(
          primarySwatch: Colors.teal,
          canvasColor: Colors.transparent,
        ),
        home: AnswerStatePage());
  }
}

class AnswerStatePage extends StatefulWidget {
  @override
  _AnswerStatePage createState() => _AnswerStatePage();
}

class _AnswerStatePage extends State<AnswerStatePage> {
  String dropdownValue = 'All';
  Color _iconcolor = Colors.black;
  bool iscolor = true;

  final TextEditingController _textController = new TextEditingController();
  Widget _changedTextWidget = Container();

  @override
  void initState() {
    super.initState();
  }

  void _modalBottomSheetMenu() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.80,
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(25.0),
            topRight: const Radius.circular(25.0),
          ),
        ),
        child: ListView(
          children: [
            Container(
              child: Row(
                children: [
                  IconButton(icon: Icon(Icons.close), onPressed: () {}),
                  Text('답글'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '지연님\t',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '여성,20대',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 2,
                      ),
                      Text("나 오늘부터 수영 배우려구,,,너라는 바다에 빠져 죽지 않기 위해"),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("2022.06.30 18:07"),
                      ),
                      Container(
                        child: Row(
                          children: [
                            OutlinedButton(
                              onPressed: _modalBottomSheetMenu,
                              style: TextButton.styleFrom(
                                minimumSize: Size.zero,
                                padding: EdgeInsets.all(5),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                //alignment: Alignment.centerLeft
                              ),
                              child: Text(
                                "답글 3",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            OutlinedButton(
                              child: const Text('결말보기'),
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                  minimumSize: Size.zero,
                                  padding: EdgeInsets.all(5),
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap),
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            TextButton.icon(
                              style: TextButton.styleFrom(
                                minimumSize: Size.zero,
                                padding: EdgeInsets.all(5),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                side: BorderSide(
                                    color: Colors.blue,
                                    width: 1.0,
                                    style: BorderStyle.solid),
                              ),
                              icon: Icon(Icons.thumb_up_alt_outlined),
                              label: Text(
                                '2399',
                                style: TextStyle(fontSize: 12),
                              ),
                              onPressed: () {},
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            TextButton.icon(
                              style: TextButton.styleFrom(
                                minimumSize: Size.zero,
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                side: BorderSide(
                                    color: Colors.blue,
                                    width: 1.0,
                                    style: BorderStyle.solid),
                              ),
                              icon: Icon(Icons.thumb_down_alt_outlined),
                              label: Text(
                                '99',
                                style: TextStyle(fontSize: 12),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                  listCommentView(),
                  TextField(
                    decoration: InputDecoration(labelText: '댓글'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DraggableHome(
      leading: const Icon(Icons.arrow_back_ios),
      title: Text('답변'),
      actions: [
        //   Row(
        //   mainAxisSize: MainAxisSize.max,
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Container(
        //       margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
        //       child: Row(
        //         children: [
        //           IconButton(
        //             icon: Icon(Icons.check_circle,color: _iconcolor,),
        //             onPressed: () {
        //               print(_iconcolor);
        //               setState(() {
        //                 _iconcolor = Color(0xFF49BBA3);
        //               });
        //             },
        //           ),
        //           Text('내 답변 고정'),
        //           SizedBox(width: 70,),
        //           OutlinedButton(
        //             style: OutlinedButton.styleFrom(
        //               // minimumSize: Size(59, 27),
        //               fixedSize: const Size(75, 27),
        //               // maximumSize: Size(75, 27),
        //               primary: Color(0xFF2CAF94),
        //               side: const BorderSide(
        //                 color: Color(0xFF2CAF94),
        //                 width: 1,
        //               ),
        //               shape: RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.circular(2),
        //               ),
        //               textStyle: const TextStyle(
        //                 fontSize: 12,
        //               ),
        //             ),
        //             child: Row(
        //               children: const [
        //                 Icon(
        //                   Icons.filter_list,
        //                   color: Color(0xFF2CAF94),
        //                   size: 16,
        //                 ),
        //                 SizedBox(
        //                   width: 4,
        //                 ),
        //                 Text("필터"),
        //               ],
        //             ),
        //             onPressed: () {},
        //           ),
        //           SizedBox(width: 50,),
        //           Container(
        //             margin: EdgeInsets.fromLTRB(50, 0,0,0),
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.end,
        //               children: [
        //                 DropdownButtonHideUnderline(
        //                   child: DropdownButton<String>(
        //                     // Step 3.
        //                     value: dropdownValue,
        //                     // Step 4.
        //                     items: <String>['All', '인기순', '댓글순']
        //                         .map<DropdownMenuItem<String>>((String value) {
        //                       return DropdownMenuItem<String>(
        //                         value: value,
        //                         child: Text(
        //                           value,
        //                           style: TextStyle(fontSize: 14),
        //                         ),
        //                       );
        //                     }).toList(),
        //                     // Step 5.
        //                     onChanged: (String? newValue) {
        //                       setState(() {
        //                         dropdownValue = newValue!;
        //                       });
        //                     },
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
      ],
      headerWidget: headerWidget(context),
      headerBottomBar: headerBottomBarWidget(),
      body: [
        listView(),
      ],
      fullyStretchable: false,
      //expandedBody: const CameraPreview(),
      backgroundColor: Color(0xFFF8F6F4),
      appBarColor: Color(0xFF40AA92),
    );
  }

  Row headerBottomBarWidget() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
          child: Row(
            children: [
              IconButton(
                icon: iscolor
                    ? Icon(
                        Icons.circle,
                        color: Colors.white,
                      )
                    : Icon(Icons.check_circle, color: Color(0xFF49BBA3)),
                onPressed: () {
                  print(_iconcolor);
                  setState(() {
                    //_iconcolor = Color(0xFF49BBA3);
                    iscolor = !iscolor;
                  });
                },
              ),
              Text('내 답변 고정'),
              SizedBox(
                width: 70,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  // minimumSize: Size(59, 27),
                  fixedSize: const Size(75, 27),
                  // maximumSize: Size(75, 27),
                  primary: Color(0xFF2CAF94),
                  side: const BorderSide(
                    color: Color(0xFF2CAF94),
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
                      color: Color(0xFF2CAF94),
                      size: 16,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text("필터"),
                  ],
                ),
                onPressed: () {},
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget headerWidget(BuildContext context) {
    return Container(
      //color: Colors.blue,
      child: Stack(
        children: [
          ClipPath(
            clipper: CustomSelfClipper2(),
            child: Container(
              height: 450,
              color: Color(0xFF40AA92),
            ),
          ),
          Positioned(
            top: 150,
            right: 1,
            left: 1,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 60, 20),
                  padding: EdgeInsets.fromLTRB(20, 20, 30, 10),
                  height: 100,
                  alignment: Alignment.topRight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(32.0),
                      topRight: const Radius.circular(32.0),
                      bottomLeft: const Radius.circular(0.0),
                      bottomRight: const Radius.circular(32.0),
                    ),
                    color: Color(0xFFFAF7EF),
                    //그림자 효과 주기
                  ),
                  child: Text(
                    " 나 오늘부터 수영 배우려구,,, 너라는 바다에 빠져 죽지 않기 위해",
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 170,
            left: 40,
            child: Container(
              //margin: EdgeInsets.fromLTRB(0, 20, 250, 20),
              alignment: Alignment.bottomLeft,
              width: 50,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 15, 0, 10),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(246, 184, 127, 1),
                      width: 1,
                    ),
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(32.0),
                      topRight: const Radius.circular(32.0),
                      bottomLeft: const Radius.circular(32.0),
                      bottomRight: const Radius.circular(32.0),
                    )),
                child: Text('김토리'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ListView listView() {
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      shrinkWrap: true,
      itemBuilder: (context, index) => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        color: Color(0xFFF8F6F4),
        child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(30, 20, 30, 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          title: Row(
            children: [
              Text(
                '지연님\t',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '여성,20대',
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
          subtitle: Column(
            children: [
              SizedBox(
                height: 2,
              ),
              Text("나 오늘부터 수영 배우려구,,,너라는 바다에 빠져 죽지 않기 위해"),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text("2022.06.30 18:07"),
              ),
              Container(
                child: Row(
                  children: [
                    OutlinedButton(
                      onPressed: _modalBottomSheetMenu,
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.all(5),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        //alignment: Alignment.centerLeft
                      ),
                      child: Text(
                        "답글 3",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(
                      child: const Text('결말보기'),
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: EdgeInsets.all(5),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    TextButton.icon(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.all(5),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side: BorderSide(
                            color: Colors.blue,
                            width: 1.0,
                            style: BorderStyle.solid),
                      ),
                      icon: Icon(Icons.thumb_up_alt_outlined),
                      label: Text(
                        '2399',
                        style: TextStyle(fontSize: 12),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton.icon(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side: BorderSide(
                            color: Colors.blue,
                            width: 1.0,
                            style: BorderStyle.solid),
                      ),
                      icon: Icon(Icons.thumb_down_alt_outlined),
                      label: Text(
                        '99',
                        style: TextStyle(fontSize: 12),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          // trailing:Container(
          //   child: Row(
          //     children: [
          //       OutlinedButton( onPressed: () {},
          //         child: Text("OUTLINED BUTTON"), )
          //     ],
          //   ),
          // ),

          tileColor: Colors.white,
        ),
      ),
    );
  }

  ListView listCommentView() {
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      shrinkWrap: true,
      itemBuilder: (context, index) => ListTile(
        title: Row(
          children: [
            Text(
              'ㄴ지연님\t',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '2022.06.30 18:07',
              style: TextStyle(fontSize: 10),
            ),
          ],
        ),
        subtitle: Text("와 정말 무대를 뒤집어 놓으셨다. 역시 선배님,,,"),
        //trailing: Text("와 정말 무대를 뒤집어 놓으셨다. 역시 선배님"),
      ),
    );
  }

  // Widget _CommentApply() {
  //   return Container(
  //     child: Column(children: [
  //       Row(
  //         children: [
  //           Flexible(
  //             child: TextField(
  //               controller: _textController,
  //               //onSubmitted: sendMsg,
  //               //onChanged: checkText,
  //               onSubmitted: (text) {
  //                 sendMsg(text);
  //               },
  //               onChanged: (text) {
  //                 checkText(text);
  //               },
  //               decoration: InputDecoration(
  //                 // labelText: '텍스트 입력',
  //                 hintText: '텍스트를 입력해주세요',
  //                 border: OutlineInputBorder(), //외곽선
  //                 suffixIcon: _textController.text.isNotEmpty //엑스버튼
  //                     ? Container(
  //                         child: IconButton(
  //                           alignment: Alignment.centerRight,
  //                           icon: Icon(
  //                             Icons.cancel,
  //                           ),
  //                           onPressed: () {
  //                             _textController.clear();
  //                             setState(() {});
  //                           },
  //                         ),
  //                       )
  //                     : null,
  //               ),
  //             ),
  //           ),
  //           GestureDetector(
  //             onTap: () {
  //               sendMsg(_textController.text);
  //             },
  //             child: Container(
  //               decoration: BoxDecoration(
  //                 border: Border.all(
  //                   color: Colors.white,
  //                 ),
  //                 borderRadius: BorderRadius.circular(8.0),
  //                 color: Colors.lightBlue[200],
  //               ),
  //               margin: const EdgeInsets.symmetric(
  //                 horizontal: 4.0,
  //               ),
  //               child: Container(
  //                 height: 50,
  //                 width: 50,
  //                 alignment: Alignment.center,
  //                 child: Text(
  //                   'SEND',
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //       Expanded(
  //         child: Container(
  //           margin: const EdgeInsets.only(
  //             top: 30,
  //             left: 30,
  //             right: 30,
  //             bottom: 500,
  //           ),
  //           alignment: Alignment.center,
  //           color: Colors.yellow[200],
  //           child: _changedTextWidget,
  //         ),
  //       ),
  //     ]),
  //   );
  // }

  // void sendMsg(String text) {
  //   _textController.clear();
  //   Fluttertoast.showToast(
  //     msg: text,
  //     toastLength: Toast.LENGTH_LONG,
  //     // gravity: ToastGravity.CENTER,  //위치(default 는 아래)
  //   );
  // }

  // void checkText(String text) {
  //   _changedTextWidget = Container(
  //     child: Text.rich(
  //       //Text.rich 와 TextSpan 을 사용하여 다양한 스타일의 텍스트를 한줄에 표시할 수 있게 하는 위젯
  //       TextSpan(
  //         text: '=> ', //기본 스타일의 텍스트 (default text style)
  //         children: [
  //           TextSpan(
  //             //TextSpan 위젯을 이용하여 다양한 스타일의 텍스트 사용 가능
  //             text: '$text',
  //             style: TextStyle(
  //               fontSize: 20,
  //               color: Colors.redAccent,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  //   setState(() {}); //setState 를 사용하여 화면 다시 그려줌
  // }
}

class CustomSelfClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    BezierCurveSection section1 = BezierCurveSection(
      start: Offset(0, size.height),
      top: Offset(30, size.height - 50),
      end: Offset(80, size.height - 70),
    );
    BezierCurveSection section2 = BezierCurveSection(
      start: Offset(size.width - 110, size.height - 90),
      top: Offset(size.width - 30, size.height - 95),
      end: Offset(size.width, size.height - 140),
    );
    BezierCurveDots dot1 = ProsteBezierCurve.calcCurveDots(section1);
    BezierCurveDots dot2 = ProsteBezierCurve.calcCurveDots(section2);

    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(dot1.x1, dot1.y1, dot1.x2, dot1.y2);
    path.lineTo(size.width - 40, size.height - 70);
    path.quadraticBezierTo(dot2.x1, dot2.y1, dot2.x2, dot2.y2);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
