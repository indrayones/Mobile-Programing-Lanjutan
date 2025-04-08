import 'package:flutter/material.dart';

class ManageWidget extends StatefulWidget {
  @override
  _ManageWidgetState createState() => _ManageWidgetState();
}

class _ManageWidgetState extends State<ManageWidget> {
  bool isVisible = true; // State untuk mengontrol visibilitas widget

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = screenWidth * 0.05; // Ukuran font dinamis

    return Scaffold(
      appBar: AppBar(title: Text('Manage Widget')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Header Drawer',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context); // Menutup Drawer
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context); // Menutup Drawer
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // AnimatedOpacity untuk efek fade in/fade out
            AnimatedOpacity(
              opacity: isVisible ? 1.0 : 0.0, // Opacity berubah sesuai state
              duration: Duration(milliseconds: 500), // Durasi animasi 500ms
              child: Container(height: 100, width: 100, color: Colors.blue),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isVisible = !isVisible; // Toggle visibilitas
                });
              },
              child: Text(
                'Toggle Visibility',
                style: TextStyle(fontSize: fontSize),
              ),
            ),
            SizedBox(height: 30),
            // Container hijau dengan margin atas lebih besar
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.only(
                top: 100,
              ), // Margin atas diperbesar dari 50 menjadi 100
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Container Example',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
