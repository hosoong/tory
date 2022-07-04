
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'colors.dart';



class NoticePage extends StatelessWidget {
  const NoticePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('알림'),
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
      body: Container(
        color: background3,
        child: ListView(
          children: [
            Text('hello'),
          ],
        ),
      ),
    );
  }
}
