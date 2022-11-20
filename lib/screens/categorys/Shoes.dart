import 'package:flutter/material.dart';
import 'package:flutter_maket_ui/main.dart';
import 'package:web_scraper/web_scraper.dart';
import 'package:chaleno/chaleno.dart';

class Shoes extends StatefulWidget {
  const Shoes({super.key});

  @override
  State<Shoes> createState() => _ShoesState();
}

class _ShoesState extends State<Shoes> {
  List<String> shoesName = [];
  //document.querySelector("#productItem2328818 > div > div.prod_info > p > a")
  List<String> shoesImg = [];

  //document.querySelector("#productItem2328818 > div")

  void scrapData() async {
    final chaleno = await Chaleno()
        .load('https://prod.danawa.com/list/?cate=18242349&15main_18_02');

    shoesName = chaleno!.getElementsByTagName('productName')!.cast<String>();
    print(shoesName);
    setState(() {});
  }

  @override
  void initState() {
    scrapData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(shoesImg[0]),
        ),
        body: ListView.builder(
            itemCount: shoesName.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 400,
                height: 400,
                child: Text(shoesName[index]),
              );
            }));
  }
}
