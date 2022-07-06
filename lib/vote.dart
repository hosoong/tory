import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dart:ui';
import 'package:tory/best_selection.dart';

class VotePage extends StatelessWidget {
  VotePage({Key? key}) : super(key: key);

  bool _value = false;
  int val = -1;
  var image1 = 'assets/image11.jpg';
  var image2 = 'assets/image13.png';
  var image3 = 'assets/image14.png';
  var image4 = 'assets/image12.png';

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("결말 투표"),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Text('가장 어울리는 결말을 골라주세요!'),
              ),
              Container(
                width: screenSize.width,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                //alignment: Alignment(-1.0, 0.0),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(250, 247, 239, 1.0),
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(32.0),
                      topRight: const Radius.circular(32.0),
                      bottomLeft: const Radius.circular(32.0),
                    )),
                child: Row(
                  children: [
                    Container(
                      width: 109,
                      height: 109,
                      child: Image.asset(
                        image1,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 0, 0),

                      width: 182,
                      //height: 64,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment(-1.0, 0.0),
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(246, 184, 127, 1),
                                    width: 1.5,
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
                          Text(
                            '"아...나는 너랑 친구라고 생각했는데;;그런 거였으면 미안해"',
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                    BestSelection(),
                  ],
                ),
              ),
              Container(
                width: screenSize.width,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(250, 247, 239, 1.0),
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(32.0),
                      topRight: const Radius.circular(32.0),
                      bottomLeft: const Radius.circular(32.0),
                    )),
                child: Row(
                  children: [
                    Container(
                      width: 109,
                      height: 109,
                      child: Image.asset(
                        image2,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 0, 0),

                      width: 182,
                      //height: 64,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment(-1.0, 0.0),
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(246, 184, 127, 1),
                                    width: 1.5,
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
                          Text(
                            '"아...나는 너랑 친구라고 생각했는데;;그런 거였으면 미안해"',
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                    BestSelection2(),
                  ],
                ),
              ),
              Container(
                width: screenSize.width,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(250, 247, 239, 1.0),
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(32.0),
                      topRight: const Radius.circular(32.0),
                      bottomLeft: const Radius.circular(32.0),
                    )),
                child: Row(
                  children: [
                    Container(
                      width: 109,
                      height: 109,
                      child: Image.asset(
                        image3,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 0, 0),

                      width: 182,
                      //height: 64,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment(-1.0, 0.0),
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(246, 184, 127, 1),
                                    width: 1.5,
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
                          Text(
                            '"아...나는 너랑 친구라고 생각했는데;;그런 거였으면 미안해"',
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                    BestSelection3(),
                  ],
                ),
              ),
              Container(
                width: screenSize.width,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(250, 247, 239, 1.0),
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(32.0),
                      topRight: const Radius.circular(32.0),
                      bottomLeft: const Radius.circular(32.0),
                    )),
                child: Row(
                  children: [
                    Container(
                      width: 109,
                      height: 109,
                      child: Image.asset(
                        image4,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 0, 0),

                      width: 182,
                      //height: 64,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment(-1.0, 0.0),
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(246, 184, 127, 1),
                                    width: 1.5,
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
                          Text(
                            '"아...나는 너랑 친구라고 생각했는데;;그런 거였으면 미안해"',
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                    BestSelection4(),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () => {
                  Get.toNamed('/endpage'),
                },
                child: Text('Button'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
