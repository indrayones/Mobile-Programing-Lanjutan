import 'package:flutter/material.dart';

class RaisedButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print("Raised Button Clicked");
      },
      child: Text("Raised Button"),
    );
  }
}
