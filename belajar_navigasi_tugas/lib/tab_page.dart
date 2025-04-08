import 'package:flutter/material.dart';

class TabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Page"),
          bottom: TabBar(tabs: [
            Tab(text: "First", icon: Icon(Icons.looks_one)),
            Tab(text: "Second", icon: Icon(Icons.looks_two)),
          ]),
        ),
        body: TabBarView(children: [
          Center(child: Text('This is the first tab')),
          Center(child: Text('This is the second tab')),
        ]),
      ),
    );
  }
}