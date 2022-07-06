import 'package:flutter/material.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';
import 'package:draggable_home/draggable_home.dart';

import 'camera_preview.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Draggable Home",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableHome(
      leading: const Icon(Icons.arrow_back_ios),
      title: Text('답변'),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
      ],
      headerWidget: headerWidget(context),
      headerBottomBar: headerBottomBarWidget(),
      body: [
        listView(),
      ],
      fullyStretchable: true,
      //expandedBody: const CameraPreview(),
      backgroundColor: Color(0xFFF8F6F4),
      appBarColor: Color(0xFF40AA92),
    );
  }

  Row headerBottomBarWidget() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Icon(
          Icons.settings,
          color: Colors.white,
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
            child:Column(
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
            child:Container(
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
              Text('지연님\t',style: TextStyle(fontSize: 16),),
              Text('여성,20대',style: TextStyle(fontSize: 10),),
            ],
          ),
          subtitle: Column(
            children: [
              SizedBox(height: 2,),
              Text("나 오늘부터 수영 배우려구,,,너라는 바다에 빠져 죽지 않기 위해"),
              SizedBox(height: 10,),
              Align(alignment: Alignment.topLeft,
                child: Text("2022.06.30 18:07"),),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      //height: 20,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text("답글 3",style: TextStyle(fontSize: 12),),
                      ),
                    ),
                    Container(
                      width: 90,
                      //height: 20,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text("결말보기",style: TextStyle(fontSize: 12),),
                      ),
                    ),
                    OutlinedButton( onPressed: () {},
                      child: Text("OUTLINED BUTTON"),
                    ),
                    OutlinedButton( onPressed: () {},
                      child: Text("OUTLINED BUTTON"),
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
