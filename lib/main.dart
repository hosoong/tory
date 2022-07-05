import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tory/colors.dart';
import 'package:tory/splash_screen.dart';
import 'package:tory/story_page1.dart';
import 'package:tory/story_page.dart';
import 'package:tory/end_page.dart';
import 'package:tory/vote.dart';
import 'package:tory/end_page2.dart';
import 'package:tory/end_page3.dart';
import 'package:tory/story_page2.dart';
import 'firebase_options.dart';

import 'mainpage.dart';
import 'home.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'components.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'search_page.dart';
import 'noticepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //MyApp 클래스 선언
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414, 896),
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: MaterialColor(background2.value, {
            50: Color(0xFF174378),
            100: Color(0xFF174378),
            200: Color(0xFF174378),
            300: Color(0xFF174378),
            400: Color(0xFF174378),
            500: Color(0xFF174378),
            600: Color(0xFF174378),
            700: Color(0xFF174378),
            800: Color(0xFF174378),
            900: Color(0xFF174378),
          }),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        title: 'my first app',
        home: EndPage(),
        initialRoute: '/splash',
        getPages: [
          GetPage(
            name: '/',
            page: () => HomePage(),
          ),
          GetPage(
            name: '/story',
            page: () => StoryPage(),
          ),
          GetPage(
            name: '/story2',
            page: () => StoryPage2(),
          ),
          GetPage(
            name: '/splash',
            page: () => SplashScreen(),
          ),
          GetPage(
            name: '/search',
            page: () => SearchPage(),
          ),
            name: '/mainpage',
            page: () => MainPage(),
          ),
          GetPage(
            name: '/noticepage',
            page: () => NoticePage(),
          ),
          GetPage(
            name: '/endpage',
            page: () => EndPage(),
          ),
          GetPage(
            name: '/endpage2',
            page: () => EndPage2(),
          ),
          GetPage(
            name: '/endpage3',
            page: () => EndPage3(),
          ),
          GetPage(
            name: '/vote',
            page: () => VotePage(),
          ),
        ],
      ),
    );
  }
}
