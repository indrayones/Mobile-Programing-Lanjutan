import 'package:flutter/material.dart';
import 'form_page.dart';
import 'list_page.dart';
import 'tab_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jobsheet App')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Menu', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              title: Text('Form Page'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => FormPage()));
              },
            ),
            ListTile(
              title: Text('List Page'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => ListPage()));
              },
            ),
            ListTile(
              title: Text('Tab Page'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => TabPage()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.school, size: 100, color: Colors.blue),
            SizedBox(height: 20),
            Text('Selamat Datang di Jobsheet App!', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}