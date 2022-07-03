import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';

import 'mock_data.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Image Picker Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   PageController? _pageController;

  List<String> images = [
    "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
  ];

  int activePage = 1;
  int Page=4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text('Tory',style: TextStyle(color: Colors.black),),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search,color: Colors.black,),
            tooltip: 'icon!',
            onPressed: () => {},
          ),
          new IconButton(
            icon: new Icon(Icons.square,color: Colors.black,),
            tooltip: 'icon',
            onPressed: () => {},
          )
        ],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
             SizedBox(
               height: 250,
               child: Stack(
                 children: [
                   Positioned(
                       child:PageView.builder(
                           itemCount: images.length,
                           pageSnapping: true,
                           controller: _pageController,
                           onPageChanged: (page) {
                             setState(() {
                               activePage = page;
                             });
                           },
                           itemBuilder: (context, pagePosition) {
                             return Container(
                               margin: EdgeInsets.all(10),
                               child: Opacity(
                                 opacity: 0.3,
                                 child:Image.network(images[pagePosition],
                                 ) ,
                               )
                             );
                           }),
                   ),
                   Positioned(
                     top: 200,
                     left: 20,
                     child:Row(
                       children: [
                         Text('지연님의 지난 토리 이어가기',style: TextStyle(color: Colors.black),),
                         SizedBox(width: 30,),
                         Icon(Icons.arrow_forward_ios_outlined),
                       ],
                     ),
                   ),
                 ],
               ),
                 ),
                SizedBox(height: 10,),
                Align(
                  alignment:Alignment(-0.7,-0.5),
                  child:Text('나의 연애를 응원해죠',textAlign: TextAlign.start,),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: SizedBox(
                          height: 200,
                          child: Horizontal(),
                        ),
                      ),
                      Divider(thickness: 1,color: Colors.black,),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Align(
                  alignment:Alignment(-0.7,-0.5),
                  child:Text('나 22학번 샌애긔...',textAlign: TextAlign.start,),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: SizedBox(
                          height: 200,
                          child: Horizontal(),
                        ),
                      ),
                      Divider(thickness: 1,color: Colors.black,),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Align(
                  alignment:Alignment(-0.7,-0.5),
                  child:Text('면접 볼 때 어떡해?',textAlign: TextAlign.start,),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: SizedBox(
                          height: 200,
                          child: Horizontal(),
                        ),
                      ),
                      Divider(thickness: 1,color: Colors.black,),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Horizontal extends StatefulWidget {
  @override
  _HorizontalState createState() => _HorizontalState();
}

class _HorizontalState extends State<Horizontal> {
  // Wheater to loop through elements
  bool _loop = true;

  // Scroll controller for carousel
  late InfiniteScrollController _controller;

  // Maintain current index of carousel
  int _selectedIndex = 0;

  // Width of each item
  double? _itemExtent;

  // Get screen width of viewport.
  double get screenWidth => MediaQuery.of(context).size.width;

  @override
  void initState() {
    super.initState();
    _controller = InfiniteScrollController(initialItem: _selectedIndex);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _itemExtent = screenWidth - 200;
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            SizedBox(
              height: 180,
              child: InfiniteCarousel.builder(
                itemCount: kDemoImages.length,
                itemExtent: 130,
                scrollBehavior: kIsWeb
                    ? ScrollConfiguration.of(context).copyWith(
                  dragDevices: {
                    // Allows to swipe in web browsers
                    PointerDeviceKind.touch,
                    PointerDeviceKind.mouse
                  },
                )
                    : null,
                loop: _loop,
                controller: _controller,
                onIndexChanged: (index) {
                  if (_selectedIndex != index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  }
                },
                itemBuilder: (context, itemIndex, realIndex) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        _controller.animateToItem(realIndex);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: kElevationToShadow[2],
                          image: DecorationImage(
                            image: NetworkImage(kDemoImages[itemIndex]),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // Slider(
            //   min: 100.0,
            //   max: screenWidth - 100.0,
            //   value: _itemExtent ?? 40,
            //   onChanged: (newValue) {
            //     setState(() {
            //       _itemExtent = newValue;
            //     });
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
