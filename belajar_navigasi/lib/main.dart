import 'package:flutter/material.dart';
import 'page_one.dart';
import 'home_with_drawer.dart';
import 'tab_navigation.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainMenu(),
    ),
  );
}

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main Menu')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Go to Page One'),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => PageOne()));
            },
          ),
          ListTile(
            title: Text('Go to HomeWithDrawer'),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeWithDrawer()));
            },
          ),
          ListTile(
            title: Text('Go to TabNavigation'),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => TabNavigation()));
            },
          ),
        ],
      ),
    );
  }
}