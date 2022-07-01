// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs

import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'home.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart'; //flutter의 package를 가져오는 코드 반드시 필요
// Import the firebase_core plugin
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(MyApp());
}

//
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget { //MyApp 클래스 선언
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my first app',
      home: MyPage(),
    );
  }
}


class MyPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        child: Text('button'),
        onPressed: (){
          createData();
        },
      ),
    );
  }
}

void createData(){
  final usercol=FirebaseFirestore.instance.collection("users").doc("userkey1");
  usercol.set({
    "username" : "abc",
    "age" : 5,
  });
}