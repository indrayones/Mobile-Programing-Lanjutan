import 'package:flutter/material.dart';

class FlatButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        print("Flat Button Clicked");
      },
      child: Text("Flat Button"),
    );
  }
}
