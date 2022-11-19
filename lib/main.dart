import 'package:flutter/material.dart';
import 'screens/Home.dart';
import 'screens/Search.dart';
import 'screens/Login.dart';
import 'assets/Palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: appBar(),
    );
  }
}

class appBar extends StatefulWidget {
  const appBar({super.key});

  @override
  State<appBar> createState() => _appBarState();
}

class _appBarState extends State<appBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final List<Widget> _widgetOptions = <Widget>[Home(), Search(), Login()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'MyPage',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }

  @override
  void initState() {
    //해당 클래스가 호출되었을떄
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
}

// Widget LoginContainer(text) {
//   return Container(
//     width: 300,
//     height: 80,
//     alignment: Alignment.center,
//     margin: EdgeInsets.all(10),
//     decoration: BoxDecoration(
//       color: Palette.mainBgColor,
//       borderRadius: BorderRadius.circular(25),
//       boxShadow: [
//         BoxShadow(
//           color: Palette.categoryShadowColor,
//           offset: Offset(
//             0,
//             2.0,
//           ),
//           blurRadius: 2.0,
//         )
//       ],
//     ),
//     child: Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: TextField(
//         decoration: InputDecoration(
//             border: InputBorder.none,
//             hintText: text,
//             hintStyle: Styles.hintText),
//       ),
//     ),
//   );
// }
