import 'package:flutter/material.dart';
import 'package:flutter_maket_ui/main.dart';
import 'package:web_scraper/web_scraper.dart';
import 'package:http/http.dart' as http;

class Shoes extends StatefulWidget {
  const Shoes({super.key});

  @override
  State<Shoes> createState() => _ShoesState();
}

class _ShoesState extends State<Shoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('shoesPage'),
        ),
        body: Container(
          child: Text('hi'),
        ));
  }
}
