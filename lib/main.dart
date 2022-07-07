import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tory/module/colors.dart';
import 'package:tory/view/splash_screen.dart';
import 'package:tory/view/story_page1.dart';
import 'package:tory/view/end_page.dart';
import 'package:tory/view/vote.dart';
import 'package:tory/view/end_page2.dart';
import 'package:tory/view/end_page3.dart';
import 'package:tory/view/story_page2.dart';
import 'view/example.dart';
import 'module/firebase_options.dart';

import 'view/main_page.dart';
import 'view/home.dart';
import 'view/example.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'module/components.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view/my_page.dart';
import 'view/search_page.dart';
import 'view/notice_page.dart';

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
        home: MyPage(),
        initialRoute: '/splash',
        getPages: [
          GetPage(
            name: '/',
            page: () => HomePage(),
          ),
          // GetPage(
          //   name: '/story',
          //   page: () => StoryPage(),
          // ),
          // GetPage(
          //   name: '/story2',
          //   page: () => StoryPage2(),
          // ),
          GetPage(
            name: '/splash',
            page: () => SplashScreen(),
          ),
          GetPage(
            name: '/search',
            page: () => SearchPage(),
          ),
          GetPage(
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
          GetPage(
            name: '/noticepage',
            page: () => NoticePage(),
          ),
          GetPage(
            name: '/mainpage',
            page: () => MainPage(),
          ),
          GetPage(
            name: '/mypage',
            page: () => MyPage(),
          ),
        ],
      ),
    );
  }
}
