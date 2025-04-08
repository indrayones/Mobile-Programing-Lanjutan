import 'package:flutter/material.dart';

class ManageWidget extends StatefulWidget {
  @override
  _ManageWidgetState createState() => _ManageWidgetState();
}

class _ManageWidgetState extends State<ManageWidget> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Manage Widget')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
            opacity: isVisible ? 1.0 : 0.0,
            duration: Duration(milliseconds: 500),
            child: Container(height: 100, width: 100, color: Colors.blue),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                isVisible = !isVisible;
              });
            },
            child: Text('Toggle Visibility'),
          ),
        ],
      ),
    );
  }
}
