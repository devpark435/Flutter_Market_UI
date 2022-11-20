import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../Assets/Palette.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  var items = List<String>.generate(50, (i) => "items $i");
  final _nameInputcontroller = TextEditingController();
  var _tabController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    /**SearchBar */
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 80,
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 1, color: Palette.searchBarColor),
                        borderRadius: BorderRadiusDirectional.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: _nameInputcontroller,
                        obscureText: false,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: IconButton(
                            icon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.search),
                            ),
                            onPressed: () {},
                          ),
                          suffixIcon: IconButton(
                            icon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.close),
                            ),
                            onPressed: () {
                              _nameInputcontroller.clear();
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            DefaultTabController(
                length: 4, // length of tabs
                initialIndex: 0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TabBar(
                          labelColor: Palette.tabTextColor,
                          unselectedLabelColor: Palette.tabTextColor,
                          indicatorColor: Palette.categoryShadowColor,
                          tabs: [
                            Tab(text: 'ctg 1'),
                            Tab(text: 'ctg 2'),
                            Tab(text: 'ctg 3'),
                            Tab(text: 'ctg 4'),
                          ],
                        ),
                      ),
                      Container(
                        height: 500,
                        child: TabBarView(children: [
                          Container(
                            height: 500,
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: items.length,
                                itemBuilder: ((context, index) {
                                  return Dismissible(
                                      key: Key(items[index]),
                                      child: Card(
                                        surfaceTintColor: Colors.white,
                                        elevation: 5,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: ListTile(
                                          title: Text(items[index]),
                                          trailing: IconButton(
                                            icon: Icon(Icons.delete),
                                            color: Color.fromARGB(
                                                182, 160, 114, 225),
                                            onPressed: () {
                                              setState(() {
                                                items.removeAt(index);
                                              });
                                            },
                                          ),
                                        ),
                                      ));
                                })),
                          ),
                          Container(
                            child: Text('tab2'),
                          ),
                          Container(
                            child: Text('tab3'),
                          ),
                          Container(
                            child: Text('tab4'),
                          )
                        ]),
                      )
                    ])),
          ],
        ),
      ),
    );
  }
}
