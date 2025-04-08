import 'package:flutter/material.dart';

class FloatingActionButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        print("Floating Action Button Clicked");
      },
      child: Icon(Icons.add),
    );
  }
}
