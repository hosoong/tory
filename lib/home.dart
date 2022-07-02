import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
               height: 200,
               child: PageView.builder(
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
                       child: Image.network(images[pagePosition]),
                     );
                   }),
                 ),
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
                          child: PageView.builder(
                              itemCount: 4,
                              pageSnapping: true,
                              controller: _pageController,
                              onPageChanged: (page) {
                                setState(() {
                                  Page = page;
                                });
                              },
                              itemBuilder: (context, pagePosition) {
                                return Container(
                                  margin: EdgeInsets.all(10),
                                  child: Image.network(images[pagePosition]),
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

