import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_maket_ui/assets/Palette.dart';
import 'package:flutter_maket_ui/main.dart';
import 'package:web_scraper/web_scraper.dart';
import 'package:http/http.dart' as http;

class Shoes extends StatefulWidget {
  const Shoes({super.key});

  @override
  State<Shoes> createState() => _ShoesState();
}

class _ShoesState extends State<Shoes> {
  int itemCnt = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.mainBgColor,
        appBar: AppBar(
          title: Text('shoesPage'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          // child: shoesContainer(3),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              CarouselSlider(
                items: [shoesContainer(1), shoesContainer(2)],
                options: CarouselOptions(height: 300.0),
              ),
              Container(
                width: 500,
                height: 700,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: itemCnt,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 500,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Palette.mainBgColor,
                            borderRadius: BorderRadius.circular(25),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 75,
                                height: 75,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1,
                                        color: Palette.basicTextColor),
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [Text('item$index'), Text('item')],
                              ),
                              Text('Price'),
                            ],
                          ),
                        ),
                      );
                    })),
              )
            ],
          ),
        ));
  }
}

Widget shoesContainer(i) {
  return Container(
    width: 300,
    height: 300,
    child: Card(
      surfaceTintColor: Palette.mainBgColor,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Text('item$i'),
        ],
      ),
    ),
  );
}
