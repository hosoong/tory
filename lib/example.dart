import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tory/text_style.dart';
import 'colors.dart';

class ActorFilterEntry {
  const ActorFilterEntry(this.name, this.initials);
  final String name;
  final String initials;
}

class CastFilter extends StatefulWidget {
  const CastFilter({Key? key}) : super(key: key);

  @override
  State createState() => CastFilterState();
}

class CastFilterState extends State<CastFilter> {
  SelectedSexAgeController _sexagecontroller = Get.find<SelectedSexAgeController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Woolha.com Flutter Tutorial'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '필터',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              '성별',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              child: _buildSexChips(),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '나이',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              child: _buildAgeChips(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _sexAgeSortingFilter(context);
        },
        label: const Text('좋아요'),
        icon: const Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),
    );
  }

  List<String> _sexoptions = ['여자','남자'];
  List<String> _ageoptions = ['10대', '20대', '30대', '40대', '50대 +'];
  List<bool> _ageselected = [false, false, false, false, false];
  List<bool> _sexselected = [false, false];

  Widget _buildSexChips() {
    List<Widget> sexchips = [];

    for (int i = 0; i < _sexoptions.length; i++) {
      ChoiceChip sexchoiceChip = ChoiceChip(
        selected: _sexselected[i],
        label: Text(_sexoptions[i],
          style: TextStyle(
              color: _sexselected[i] ? Primary600 : text_on_background , fontSize: 12),),
        // avatar: FlutterLogo(),
        elevation: 0,
        pressElevation: 1,
        backgroundColor: Colors.white,
        selectedColor: Colors.white,
        onSelected: (bool selected) {
          setState(() {
            _sexselected[i] = selected;
          });

          // _sexagecontroller.putSexAge(_sexselected[i].toString());

        },
      );

      sexchips.add(Row(
        children: [
          Material(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(
                  color: _sexselected[i] ? Primary600 : text_on_background,
                )),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 0),
                child: sexchoiceChip),
          ),
          SizedBox(
            width: 6,
          ),
        ],
      ));
    }

    return Container(
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: sexchips,
      ),
    );
  }

  Widget _buildAgeChips() {
    List<Widget> agechips = [];

    for (int i = 0; i < _ageoptions.length; i++) {
      ChoiceChip agechoiceChip = ChoiceChip(
        selected: _ageselected[i],
        label: Text(_ageoptions[i],
            style: TextStyle(
                color: _ageselected[i] ? Primary600 : text_on_background, fontSize: 12)),
        // avatar: FlutterLogo(),
        elevation: 0,
        pressElevation: 1,
        backgroundColor: Colors.white,
        selectedColor: Colors.white,
        onSelected: (bool selected) {
          setState(() {
            _ageselected[i] = selected;
          });
        },
      );

      agechips.add(Row(
        children: [
          Material(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(
                  color: _ageselected[i] ? Primary600 : text_on_background,
                )),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 0),
                child: agechoiceChip),
          ),
          SizedBox(
            width: 6,
          ),
        ],
      ));
    }

    return Container(
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: agechips,
      ),
    );
  }
  _sexAgeSortingFilter(BuildContext context) {
    showDialog(
        context: context,
        //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            // insetPadding: EdgeInsets.zero,
            buttonPadding: EdgeInsets.zero,
            // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            //Dialog Main Title
            // title: Column(
            //   children: <Widget>[
            //     new Text("Dialog Title"),
            //   ],
            // ),
            //
            content: Container(
              height: 186,
              // width: MediaQuery.of(context).size.width,
              width: 334,
              child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '필터',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        '성별',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        child: _buildSexChips(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '나이',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        child: _buildAgeChips(),
                      ),
                    ],
                  )),
            ),
            actions: <Widget>[
              Row(
                children: [
                  FlatButton(
                      height:64,
                      minWidth: 167,
                      color: SubPrimary200,
                      onPressed: (){},
                      child: Text('취소', style: subtitlestyle(size:18,color:text_on_button,weight:FontWeight.bold),)),
                  FlatButton(
                      height:64,
                      minWidth: 167,
                      color: SubPrimary300,
                      onPressed: (){},
                      child: Text('적용',style: subtitlestyle(size:18,color:text_on_button,weight:FontWeight.bold),)),
                ],
              ),
            ],
          );
        });
  }
}

class SelectedSexAgeController extends GetxController {
  var selectedRides = [].obs;

  void putSexAge(String value) {
    if (selectedRides.contains(value)) {
      selectedRides.remove(value);
      selectedRides.sort();
    } else {
      selectedRides.add(value);
      selectedRides.sort();
    }
  }
}