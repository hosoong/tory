import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tory/module/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../module/colors.dart';

class NoticePage extends StatefulWidget {
  const NoticePage({Key? key}) : super(key: key);
  @override
  State<NoticePage> createState() => _NoticePage();
}

class _NoticePage extends State<NoticePage>
    with SingleTickerProviderStateMixin {
  static const List<Tab> tabs = <Tab>[
    Tab(text: '나의 토리'),
    Tab(text: '새로운 토리'),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //Top Navigation Bar
    return DefaultTabController(
      length: tabs.length,
      // The Builder widget is used to have a different BuildContext to access
      // closest DefaultTabController.
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context)!;
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {
            // Your code goes here.
            // To get index of current tab use tabController.index
          }
        });
        return Scaffold(
          appBar: AppBar(
            title: Text(
              '알림',
              style: headline2(color: text_on_color),
            ),
            elevation: 0,
            bottom: TabBar(
              tabs: tabs,
              labelStyle: headline3(color: text_on_color),
            ),
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
          //tab bar
          body: TabBarView(
            children: tabs.map((Tab tab) {
              return Center(
                child: Tory(tab.text!),
              );
            }).toList(),
          ),
        );
      }),
    );
  }

  //각 tab안에 들어갈 페이지
  Tory(String Tab) {
    if (Tab == '나의 토리') {
      return ListView(
        children: [
          toryTile(),
          toryTile(),
          toryTile(),
          toryTile(),
          toryTile(),
          toryTile(),
          toryTile(),
          toryTile(),
          toryTile(),
          toryTile(),
          toryTile(),
        ],
      );
    } else {
      return ListView(
        children: [
          newTory(),
          newTory(),
          newTory(),
          newTory(),
          newTory(),
        ],
      );
    }
  }

  //'나의 토리' 일 경우
  toryTile() {
    return Container(
        padding: EdgeInsets.fromLTRB(48.w, 30.h, 28.w, 0.h),
        child: InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('메인 텍스트', style: headline5(color: text_on_color)),
                  Text(
                    '서브 텍스트',
                    style: body4(color: text_on_color),
                  ),
                ],
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.clear),
                    ),
                  ],
                ),
              ),
            ],
          ),
          onTap: () {},
        ));
  }

  //'새로운 토리'일 경우
  newTory() {
    return Container(
        padding: EdgeInsets.fromLTRB(48.w, 30.h, 28.w, 0.h),
        child: InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '메인 텍스트',
                    style: headline5(color: text_on_color),
                  ),
                  Text(
                    '서브 텍스트',
                    style: body4(color: text_on_color),
                  ),
                ],
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.clear),
                    ),
                  ],
                ),
              ),
            ],
          ),
          onTap: () {},
        ));
  }
}
