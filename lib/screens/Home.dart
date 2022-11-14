import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_maket_ui/main.dart';
import 'Search.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../assets/Palette.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> marketTitle = ['hi', 'helo'];
  List<Widget> mainSlider = [
    Container(
      width: 350,
      height: 250,
    ),
  ];
  Widget spaceWidget = SizedBox(
    height: 50,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            //Header Text
            padding: const EdgeInsets.all(10.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Market',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Palette.headerTextColor),
              ),
            ),
          ),
          Container(
            //Header Underline
            height: 1.0,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Palette.headerTextColor,
                  offset: Offset(
                    0,
                    2.0,
                  ),
                  blurRadius: 2.0,
                )
              ],
            ),
          ),
          spaceWidget,
          // Container(
          //   width: MediaQuery.of(context).size.width * 1,
          //   alignment: Alignment.center,
          //   height: 250.0,
          //   child: ListView.builder(
          //       scrollDirection: Axis.horizontal,
          //       itemCount: mainSlider.length,
          //       itemBuilder: ((context, index) {
          //         return Card(
          //           child: mainSlider[index],
          //           shadowColor: Colors.black,
          //         );
          //       })),
          // ),
          CarouselSlider(
            //Main Slider Widget
            options: CarouselOptions(height: 300.0),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.white10,
                          border: Border.all(
                              width: 1, color: Palette.headerTextColor),
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Card $i',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ));
                },
              );
            }).toList(),
          ),
          spaceWidget,
          Container(
            //mainIcon Category Container
            color: Colors.white10,
            child: Column(
              children: [
                Row(
                  //firstLine Icons Row
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: iconContainer(Colors.white, 'ctg1'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Search())));
                      },
                    ),
                    GestureDetector(
                      child: iconContainer(Colors.white, 'ctg2'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Search())));
                      },
                    ),
                    GestureDetector(
                      child: iconContainer(Colors.white, 'ctg3'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Search())));
                      },
                    )
                  ],
                ),
                Row(
                  //secondLine Icons Row
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: iconContainer(Colors.white, 'ctg4'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Search())));
                      },
                    ),
                    GestureDetector(
                      child: iconContainer(Colors.white, 'ctg5'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Search())));
                      },
                    ),
                    GestureDetector(
                      child: iconContainer(Colors.white, 'ctg6'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Search())));
                      },
                    )
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

Widget iconContainer(color, text) {
  //홈 카테고리 위젯 버튼
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      alignment: Alignment.center,
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(35),
        boxShadow: [
          BoxShadow(
            color: Palette.categoryShadowColor,
            offset: Offset(
              0,
              2.0,
            ),
            blurRadius: 2.0,
          )
        ],
      ),
      child: Text(text),
    ),
  );
}
