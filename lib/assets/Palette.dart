import 'package:flutter/material.dart';

class Palette {
  static const headerTextColor = Color.fromARGB(255, 160, 114, 225);
  static const categoryShadowColor = Color.fromARGB(255, 160, 114, 225);
  //searchBarColor
  static const searchBarColor = Color.fromARGB(255, 160, 114, 225);
  static const tabTextColor = Color.fromARGB(255, 160, 114, 225);
  static const mainBgColor = Color.fromARGB(255, 255, 255, 255);
  static const basicTextColor = Color.fromARGB(255, 0, 0, 0);
  static const hintTextColor = Color.fromARGB(93, 0, 0, 0);
}

class Styles {
  static const TextStyle logoText = TextStyle(
      color: Palette.basicTextColor, fontSize: 30, fontWeight: FontWeight.w600);
  static const TextStyle hintText = TextStyle(
      color: Palette.hintTextColor, fontSize: 15, fontWeight: FontWeight.w600);
  static const TextStyle loginText = TextStyle(
      color: Palette.hintTextColor, fontSize: 20, fontWeight: FontWeight.w600);
}
