import 'package:flutter/material.dart';

class CustomGestureExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Custom Gesture Detected");
      },
      child: Container(
        padding: EdgeInsets.all(20),
        color: Colors.blue,
        child: Text("Tap Me", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
